require 'open_api_helpers'
require 'payloads_helpers'
require 'generate_code_sample_from_path'
require 'openapi3_parser'
require 'open_api_schema_to_example'

class GeneratePayloadReadme
  include PayloadsHelpers
  include OpenAPIHelpers

  attr_reader :operation_id, :title, :api_path

  def initialize(operation_id, title, api_path = nil)
    @operation_id = operation_id
    @title = title
    @api_path = api_path
  end

  def perform
    add_title
    add_description

    payload_entries(operation_id).each do |payload_path|
      add_payload_entry(payload_path, api_path)
    end
  end

  private

  def add_payload_entry(payload_path, api_path)
    payload = YAML.load_file(payload_path)
    payload_name = File.basename(payload_path)

    api_kind = extract_api_kind_from_payload_path(payload_path)

    if api_kind == 'france_connect' && api_path.nil?
      api_path = payload['api_path']
    end

    readme_stream.puts "* [#{payload_name}](#{payload_name})"
    readme_stream.puts
    readme_stream.puts "  Status `#{payload['status']}`"

    readme_stream.puts
    readme_stream.puts "  #{payload['description']}"

    add_collapse_section(
      'Paramètres',
      "```json\n" \
      "#{JSON.pretty_generate(payload['params'])}\n" \
      "```"
    )

    add_collapse_section(
      'Réponse API',
      "```json\n" \
      "#{JSON.pretty_generate(JSON.parse(payload['payload']))}\n" \
      "```"
    )

    if api_path
      add_collapse_section(
        'Commande cURL',
        "```bash\n" \
        "#{generate_code_sample_from_path(api_path, payload['params'], api_kind)}\n" \
        "```"
      )
    end
  end

  def add_title
    readme_stream.puts "# #{title}"
  end

  def add_description
    extra_description_path = File.expand_path("payloads/#{operation_id}/extra_description.md", root_path)

    if File.exist?(extra_description_path)
      readme_stream.puts
      readme_stream.puts File.read(extra_description_path)
      readme_stream.puts
    end
  end

  def load_operation_id_schema
    schema_name = operation_id.start_with?('api_entreprise') ? 'api_entreprise' : 'api_particulier'
    schema = Openapi3Parser.load(load_schema(schema_name))
    extract_path_spec_from_schema(operation_id, schema)
  end

  def generate_default_json
    response200 = load_operation_id_schema['responses'].find { |status, _response| status == '200' }

    OpenAPISchemaToExample.new(
      response200[1]['content']['application/json']['schema']
    ).perform
  end

  def add_collapse_section(title, content)
    readme_stream.puts
    readme_stream.puts "  <details><summary>#{title}</summary>"
    readme_stream.puts "  <p>"
    readme_stream.puts
    readme_stream.puts "  #{content.gsub("\n", "\n  ")}"
    readme_stream.puts
    readme_stream.puts "  </p>"
    readme_stream.puts "  </details>"
  end

  def generate_code_sample_from_path(api_path, params, api_kind)
    GenerateCodeSampleFromPath.new(api_path, params, api_kind).perform
  end

  def extract_api_kind_from_payload_path(payload_path)
    case
    when payload_path.include?('france_connect')
      'france_connect'
    when payload_path.include?('api_entreprise')
      'api_entreprise'
    when payload_path.include?('api_particulier_v2')
      'api_particulier_v2'
    when payload_path.include?('api_particulier')
      'api_particulier'
    else
      raise 'Unknown API kind'
    end
  end

  def readme_stream
    @readme_stream ||= File.open(readme_path, 'w')
  end

  def readme_path
    File.expand_path("payloads/#{operation_id}/README.md", root_path)
  end
end
