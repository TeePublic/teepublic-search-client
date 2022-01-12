=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SwaggerClient
  class DesignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of discoverable designs based on the query of a design's primary tag.
    # Returns a list of discoverable designs based on the query of a design's primary tag.
    # @param body Similar Designs Request
    # @param [Hash] opts the optional parameters
    # @return [SimilarDesignsResponse]
    def post_v1_similar_designs(body, opts = {})
      data, _status_code, _headers = post_v1_similar_designs_with_http_info(body, opts)
      data
    end

    # Returns a list of discoverable designs based on the query of a design&#39;s primary tag.
    # Returns a list of discoverable designs based on the query of a design&#39;s primary tag.
    # @param body Similar Designs Request
    # @param [Hash] opts the optional parameters
    # @return [Array<(SimilarDesignsResponse, Fixnum, Hash)>] SimilarDesignsResponse data, response status code and response headers
    def post_v1_similar_designs_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DesignsApi.post_v1_similar_designs ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DesignsApi.post_v1_similar_designs"
      end
      # resource path
      local_var_path = '/v1/similar-designs'

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
        :return_type => 'SimilarDesignsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DesignsApi#post_v1_similar_designs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
