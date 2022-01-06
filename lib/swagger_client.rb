=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/autocomplete_request'
require 'swagger_client/models/autocomplete_response'
require 'swagger_client/models/autocomplete_suggestion'
require 'swagger_client/models/design'
require 'swagger_client/models/design_slim'
require 'swagger_client/models/design_tags_response'
require 'swagger_client/models/dmca_search_request_v2'
require 'swagger_client/models/es_autocomplete_suggest'
require 'swagger_client/models/es_completion_suggest'
require 'swagger_client/models/es_completion_suggest_option'
require 'swagger_client/models/es_hit'
require 'swagger_client/models/es_hits'
require 'swagger_client/models/es_search_response'
require 'swagger_client/models/explain'
require 'swagger_client/models/related_response'
require 'swagger_client/models/related_result'
require 'swagger_client/models/related_tag_object'
require 'swagger_client/models/related_tag_response'
require 'swagger_client/models/related_tag_result'
require 'swagger_client/models/search_request'
require 'swagger_client/models/search_request_v2'
require 'swagger_client/models/search_response'
require 'swagger_client/models/similar_designs_request_v1'
require 'swagger_client/models/similar_designs_response'
require 'swagger_client/models/tag_mapping_response'
require 'swagger_client/models/tag_result'
require 'swagger_client/models/tags_response'
require 'swagger_client/models/trending_request'
require 'swagger_client/models/trending_result'

# APIs
require 'swagger_client/api/autocomplete_api'
require 'swagger_client/api/designs_api'
require 'swagger_client/api/related_api'
require 'swagger_client/api/relevancy_api'
require 'swagger_client/api/search_api'
require 'swagger_client/api/tag_api'
require 'swagger_client/api/trending_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
