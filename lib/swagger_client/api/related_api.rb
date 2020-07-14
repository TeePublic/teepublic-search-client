=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.14

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SwaggerClient
  class RelatedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets related searches based on given term
    # Gets related searches based on given term
    # @param search_term Search term to pull related searches from
    # @param [Hash] opts the optional parameters
    # @return [Array<RelatedResult>]
    def get_v1_related_search(search_term, opts = {})
      data, _status_code, _headers = get_v1_related_search_with_http_info(search_term, opts)
      data
    end

    # Gets related searches based on given term
    # Gets related searches based on given term
    # @param search_term Search term to pull related searches from
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RelatedResult>, Fixnum, Hash)>] Array<RelatedResult> data, response status code and response headers
    def get_v1_related_search_with_http_info(search_term, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelatedApi.get_v1_related_search ...'
      end
      # verify the required parameter 'search_term' is set
      if @api_client.config.client_side_validation && search_term.nil?
        fail ArgumentError, "Missing the required parameter 'search_term' when calling RelatedApi.get_v1_related_search"
      end
      # resource path
      local_var_path = '/v1/related-search'

      # query parameters
      query_params = {}
      query_params[:'search_term'] = search_term

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RelatedResult>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelatedApi#get_v1_related_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
