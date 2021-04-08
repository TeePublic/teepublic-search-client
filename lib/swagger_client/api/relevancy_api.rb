=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.22

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SwaggerClient
  class RelevancyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Deletes search relevancy configuration.
    # Deletes search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_v1_relevancy_configuration(config_id, opts = {})
      delete_v1_relevancy_configuration_with_http_info(config_id, opts)
      nil
    end

    # Deletes search relevancy configuration.
    # Deletes search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_v1_relevancy_configuration_with_http_info(config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelevancyApi.delete_v1_relevancy_configuration ...'
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling RelevancyApi.delete_v1_relevancy_configuration"
      end
      # resource path
      local_var_path = '/v1/relevancy-configurations/{config_id}'.sub('{' + 'config_id' + '}', config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelevancyApi#delete_v1_relevancy_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets a search relevancy configuration.
    # Gets a search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_v1_relevancy_configuration(config_id, opts = {})
      data, _status_code, _headers = get_v1_relevancy_configuration_with_http_info(config_id, opts)
      data
    end

    # Gets a search relevancy configuration.
    # Gets a search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_v1_relevancy_configuration_with_http_info(config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelevancyApi.get_v1_relevancy_configuration ...'
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling RelevancyApi.get_v1_relevancy_configuration"
      end
      # resource path
      local_var_path = '/v1/relevancy-configurations/{config_id}'.sub('{' + 'config_id' + '}', config_id.to_s)

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelevancyApi#get_v1_relevancy_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets all relevancy configurations.
    # Gets all relevancy configurations.
    # @param [Hash] opts the optional parameters
    # @return [Array<Object>]
    def get_v1_relevancy_configurations(opts = {})
      data, _status_code, _headers = get_v1_relevancy_configurations_with_http_info(opts)
      data
    end

    # Gets all relevancy configurations.
    # Gets all relevancy configurations.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_v1_relevancy_configurations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelevancyApi.get_v1_relevancy_configurations ...'
      end
      # resource path
      local_var_path = '/v1/relevancy-configurations'

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
        :return_type => 'Array<Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelevancyApi#get_v1_relevancy_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Saves search relevancy configuration.
    # Saves search relevancy configuration.
    # @param body Relevancy Configuration
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_v1_relevancy_configurations(body, opts = {})
      post_v1_relevancy_configurations_with_http_info(body, opts)
      nil
    end

    # Saves search relevancy configuration.
    # Saves search relevancy configuration.
    # @param body Relevancy Configuration
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_v1_relevancy_configurations_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelevancyApi.post_v1_relevancy_configurations ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RelevancyApi.post_v1_relevancy_configurations"
      end
      # resource path
      local_var_path = '/v1/relevancy-configurations'

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
        @api_client.config.logger.debug "API called: RelevancyApi#post_v1_relevancy_configurations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates search relevancy configuration.
    # Updates search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param body Relevancy Configuration
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_v1_relevancy_configuration(config_id, body, opts = {})
      put_v1_relevancy_configuration_with_http_info(config_id, body, opts)
      nil
    end

    # Updates search relevancy configuration.
    # Updates search relevancy configuration.
    # @param config_id search relevancy configuration id
    # @param body Relevancy Configuration
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_v1_relevancy_configuration_with_http_info(config_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RelevancyApi.put_v1_relevancy_configuration ...'
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling RelevancyApi.put_v1_relevancy_configuration"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RelevancyApi.put_v1_relevancy_configuration"
      end
      # resource path
      local_var_path = '/v1/relevancy-configurations/{config_id}'.sub('{' + 'config_id' + '}', config_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelevancyApi#put_v1_relevancy_configuration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
