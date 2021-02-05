=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.20

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module SwaggerClient
  class TrendingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets trending search results.
    # Gets trending search results.
    # @param [Hash] opts the optional parameters
    # @return [Array<TrendingResult>]
    def get_v1_trending_search(opts = {})
      data, _status_code, _headers = get_v1_trending_search_with_http_info(opts)
      data
    end

    # Gets trending search results.
    # Gets trending search results.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TrendingResult>, Fixnum, Hash)>] Array<TrendingResult> data, response status code and response headers
    def get_v1_trending_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrendingApi.get_v1_trending_search ...'
      end
      # resource path
      local_var_path = '/v1/trending-search'

      # query parameters
      query_params = {}

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
        :return_type => 'Array<TrendingResult>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrendingApi#get_v1_trending_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Saves trending search results.
    # Saves trending search results.
    # @param body Trending search request
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_v1_trending_search(body, opts = {})
      post_v1_trending_search_with_http_info(body, opts)
      nil
    end

    # Saves trending search results.
    # Saves trending search results.
    # @param body Trending search request
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_v1_trending_search_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TrendingApi.post_v1_trending_search ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TrendingApi.post_v1_trending_search"
      end
      # resource path
      local_var_path = '/v1/trending-search'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrendingApi#post_v1_trending_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
