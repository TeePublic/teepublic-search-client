=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.24

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SwaggerClient
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Performs search on publishable designs.
    # Performs search on publishable designs that have not had a a DMCA takedown. Supports filtering of teepublic approved/unapproved designs.
    # @param body User Search Request
    # @param [Hash] opts the optional parameters
    # @return [SearchResponse]
    def post_v2_dmca_search(body, opts = {})
      data, _status_code, _headers = post_v2_dmca_search_with_http_info(body, opts)
      data
    end

    # Performs search on publishable designs.
    # Performs search on publishable designs that have not had a a DMCA takedown. Supports filtering of teepublic approved/unapproved designs.
    # @param body User Search Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchResponse, Fixnum, Hash)>] SearchResponse data, response status code and response headers
    def post_v2_dmca_search_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchApi.post_v2_dmca_search ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SearchApi.post_v2_dmca_search"
      end
      # resource path
      local_var_path = '/v2/dmca-search'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#post_v2_dmca_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of discoverable designs based on search query.
    # Returns a list of discoverable designs based on search query.
    # @param body User Search Request
    # @param [Hash] opts the optional parameters
    # @return [SearchResponse]
    def post_v2_search(body, opts = {})
      data, _status_code, _headers = post_v2_search_with_http_info(body, opts)
      data
    end

    # Returns a list of discoverable designs based on search query.
    # Returns a list of discoverable designs based on search query.
    # @param body User Search Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(SearchResponse, Fixnum, Hash)>] SearchResponse data, response status code and response headers
    def post_v2_search_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SearchApi.post_v2_search ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SearchApi.post_v2_search"
      end
      # resource path
      local_var_path = '/v2/search'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SearchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#post_v2_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
