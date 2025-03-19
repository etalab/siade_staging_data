#!/usr/bin/env ruby
# frozen_string_literal: true

require 'English'
require 'json'
require 'yaml'
require 'open3'

class SimpleCurlTester
  DEFAULT_TOKEN = File.read(File.join(Dir.pwd, 'tokens', 'default')).strip
  FC_TOKEN = 'all_fc'

  def run
    puts 'Starting execution of curl commands in README files'

    # Get all directories in the payloads folder
    payload_dirs = Dir.glob(File.join(Dir.pwd, 'payloads', '*')).select { |f| File.directory?(f) }
    puts "Found #{payload_dirs.size} endpoint directories"

    total_commands = 0
    success_count = 0
    failed_tests = []

    payload_dirs.each do |dir|
      dirname = File.basename(dir)
      readme_path = File.join(dir, 'README.md')

      unless File.exist?(readme_path)
        puts "No README.md found in #{dirname}, skipping"
        next
      end

      # Parse README to find curl examples
      curl_examples = extract_curl_examples(readme_path)

      if curl_examples.empty?
        puts "No curl examples found in README.md for #{dirname}, skipping"
        next
      end

      puts "Found #{curl_examples.size} curl examples in #{dirname}"

      curl_examples.each_with_index do |example, index|
        total_commands += 1

        # Replace $token in command
        cmd_with_token = example[:command].gsub('$token', DEFAULT_TOKEN)
        
        # Add -i flag to get HTTP status code in response headers if not already present
        cmd_with_token = cmd_with_token.gsub(/^curl\s+/, 'curl -i ')

        # Execute the command and capture both stdout and stderr
        stdout, stderr, status = Open3.capture3(cmd_with_token)
        output = stdout + stderr
        
        # Extract HTTP status code from the response
        actual_status = extract_status_code(output)
        expected_status = example[:expected_status]&.to_i || 200

        # Determine success based on expected status code match
        success = actual_status.to_i == expected_status

        if success
          # No output for successful commands
          success_count += 1
        else
          # For status code mismatches or failures, show context and output
          test_name = "#{dirname}: #{example[:title] || "Example #{index + 1}"}"
          failure_info = {
            endpoint: dirname,
            test: example[:title] || "Example #{index + 1}",
            expected: expected_status,
            actual: actual_status,
            yaml_file: example[:title]
          }
          failed_tests << failure_info
          
          puts "\n❌ Command failed in #{dirname}"
          puts "Testing: #{example[:title] || "Example #{index + 1}"}"
          puts "Context: #{example[:description] || 'No description available'}"
          puts "Expected status: #{expected_status}, Actual status: #{actual_status}"
          puts "\nFailed command:"
          puts cmd_with_token
          puts "\nOutput:"
          puts output
          
          # Try to load the YAML file to verify expected status
          verify_yaml_status(example[:title], expected_status, dir) if example[:title]
          
          # Stop on first error
          break
        end
      end
    end

    # Print summary
    puts "\n===== Execution Summary ====="
    puts "Total commands executed: #{total_commands}"
    puts "Successful executions: #{success_count}"
    puts "Failed executions: #{total_commands - success_count}"
    
    if failed_tests.any?
      puts "\n===== Failed Tests ====="
      failed_tests.each do |failure|
        puts "- #{failure[:endpoint]}: #{failure[:test]} (Expected: #{failure[:expected]}, Got: #{failure[:actual]})"
      end
    end
  end

  private
  
  def extract_status_code(output)
    # First line for HTTP responses with -i flag is usually "HTTP/1.1 XXX Description"
    if output =~ /^HTTP\/\d\.\d\s+(\d{3})/
      return $1
    end
    
    # Alternative pattern, sometimes curl outputs status code differently
    if output =~ /HTTP\/[\d.]+\s+(\d+)/
      return $1
    end
    
    # If it's a JSON response with a status field
    begin
      # Look for a JSON object in the output
      json_match = output.match(/(\{.*\})/m)
      if json_match
        json_str = json_match[1]
        json_response = JSON.parse(json_str)
        if json_response.is_a?(Hash) && json_response['status']
          return json_response['status']
        end
      end
    rescue => e
      # Ignore JSON parsing errors
    end
    
    # If curl exits successfully but we can't find a status code
    return 'unknown'
  end
  
  def verify_yaml_status(filename, expected_status, dir_path)
    return unless filename
    
    yaml_path = File.join(dir_path, filename)
    
    if File.exist?(yaml_path)
      begin
        yaml_content = YAML.load_file(yaml_path)
        if yaml_content && yaml_content['status']
          yaml_status = yaml_content['status'].to_i
          puts "NOTE: YAML file '#{filename}' has status #{yaml_status}"
          
          if yaml_status != expected_status
            puts "WARNING: Expected status from README (#{expected_status}) doesn't match YAML file status (#{yaml_status})"
          end
        else
          puts "NOTE: YAML file '#{filename}' exists but doesn't have a status field"
        end
      rescue => e
        puts "Error reading YAML file: #{e.message}"
      end
    else
      puts "NOTE: YAML file '#{filename}' not found"
    end
  end

  def extract_curl_examples(readme_path)
    content = File.read(readme_path)
    examples = []

    # First, extract status sections with titles and descriptions
    status_sections = content.scan(/\* \[(.*?)\]\(.*?\).*?Status `(\d+)`.*?(.*?)(?=\* \[|<details>|$)/m)
    status_info = {}

    status_sections.each do |file, status, desc|
      # Clean up the description
      description = desc.strip.gsub(/\s+/, ' ')
      status_info[file] = {
        status: status,
        description: description
      }
    end

    # Now extract the curl commands and match them with status info
    curl_sections = content.scan(%r{<details><summary>Commande cURL</summary>.*?<p>\s*```bash\s*(.*?)\s*```\s*</p>\s*</details>}m)

    curl_sections.each_with_index do |section, _index|
      cmd = section[0].strip
      next unless cmd.start_with?('curl')

      # Try to find corresponding file name from nearby html
      file_match = content.match(%r{\* \[(.*?)\].*?<details><summary>Commande cURL</summary>}m)
      file_name = file_match ? file_match[1] : nil

      info = status_info[file_name] || {}

      examples << {
        command: cmd,
        title: file_name,
        description: info[:description] || "Status #{info[:status] || 'unknown'}",
        expected_status: info[:status]
      }
    end

    examples
  end
end

# Run the tester
tester = SimpleCurlTester.new
tester.run