# frozen_string_literal: true

require 'byebug'
require 'fileutils'
require 'yaml'
require 'json'
require 'openapi3_parser'

lib_folder = File.expand_path('../lib', File.dirname(__FILE__))
$LOAD_PATH.unshift(lib_folder) unless $LOAD_PATH.include?(lib_folder)

require 'open_api_helpers'
require 'open_api_schema_to_example'

include OpenAPIHelpers

if ARGV[0].nil?
  puts "Usage: #{$PROGRAM_NAME} <operation_id>"
  exit 1
elsif ARGV[0].start_with?('api_entreprise')
  api = 'api_entreprise'
  schema = load_schema(ARGV[0])
elsif ARGV[0].start_with?('api_particulier')
  api = 'api_particulier'
  schema = load_schema(ARGV[0])
else
  puts "Unknown operation_id: #{ARGV[0]}"
  exit 3
end

schema = Openapi3Parser.load(schema)

@operation_id_schema = extract_path_spec_from_schema(ARGV[0], schema)

if @operation_id_schema.nil?
  puts "Unknown operation_id: #{ARGV[0]}"
  exit 2
end

@payload_folder_path = File.join(root_path, 'payloads', ARGV[0])
@operation_id_params = @operation_id_schema['parameters']

if api == 'api_entreprise'
  @operation_id_params = @operation_id_params.to_a.delete_if do |parameter|
    %w[context object recipient].include?(parameter.name) ||
      parameter.in != 'path'
  end
end

FileUtils.mkdir_p(@payload_folder_path)

def create_payload_file(name, status, payload)
  file_path = File.join(@payload_folder_path, "#{name}.yaml")

  return if File.exist?(file_path)

  File.open(file_path, 'w') do |f|
    data = {
      'params' => generate_params,
      'status' => status.to_i,
      'payload' => JSON.pretty_generate(payload)
    }

    f.write(data.to_yaml)
  end
end

def generate_params
  @operation_id_params.each_with_object({}) do |param, hash|
    default_param = param['schema']['nullable'] ? nil : 'example'
    hash[param['name']] = param['schema']['example'] ||
                          param['schema']['enum']&.first ||
                          default_param
  end
end

@operation_id_schema['responses'].each do |status, response|
  next if status == '401'

  create_payload_file(
    status,
    status,
    OpenAPISchemaToExample.new(
      response['content']['application/json']['schema']
    ).perform
  )
end

print "Check payload files for #{ARGV[0]}, then run ./bin/generate_payload_readme.rb\n"
