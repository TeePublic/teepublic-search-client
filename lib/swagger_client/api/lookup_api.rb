=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.9

=end

require 'uri'

module SwaggerClient
  class LookupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a published designs based on id.
    # Returns a published designs based on id.
    # @param design_id id of the design to return
    # @param [Hash] opts the optional parameters
    # @return [Design]
    def get_v1_lookup_by_id(design_id, opts = {})
      data, _status_code, _headers = get_v1_lookup_by_id_with_http_info(design_id, opts)
      data
    end

    # Returns a published designs based on id.
    # Returns a published designs based on id.
    # @param design_id id of the design to return
    # @param [Hash] opts the optional parameters
    # @return [Array<(Design, Fixnum, Hash)>] Design data, response status code and response headers
    def get_v1_lookup_by_id_with_http_info(design_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LookupApi.get_v1_lookup_by_id ...'
      end
      # verify the required parameter 'design_id' is set
      if @api_client.config.client_side_validation && design_id.nil?
        fail ArgumentError, "Missing the required parameter 'design_id' when calling LookupApi.get_v1_lookup_by_id"
      end
      # resource path
      local_var_path = '/v1/lookup/{design_id}'.sub('{' + 'design_id' + '}', design_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :return_type => 'Design')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LookupApi#get_v1_lookup_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end