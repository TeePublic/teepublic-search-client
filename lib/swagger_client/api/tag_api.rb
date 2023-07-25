=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.41

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module SwaggerClient
  class TagApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets tags for a design
    # Gets tags for a design
    # @param design_id Design id to pull tags for
    # @param [Hash] opts the optional parameters
    # @return [DesignTagsResponse]
    def get_v1_design_tags(design_id, opts = {})
      data, _status_code, _headers = get_v1_design_tags_with_http_info(design_id, opts)
      data
    end

    # Gets tags for a design
    # Gets tags for a design
    # @param design_id Design id to pull tags for
    # @param [Hash] opts the optional parameters
    # @return [Array<(DesignTagsResponse, Fixnum, Hash)>] DesignTagsResponse data, response status code and response headers
    def get_v1_design_tags_with_http_info(design_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_v1_design_tags ...'
      end
      # verify the required parameter 'design_id' is set
      if @api_client.config.client_side_validation && design_id.nil?
        fail ArgumentError, "Missing the required parameter 'design_id' when calling TagApi.get_v1_design_tags"
      end
      # resource path
      local_var_path = '/v1/design-tags'

      # query parameters
      query_params = {}
      query_params[:'design_id'] = design_id

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
        :return_type => 'DesignTagsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_v1_design_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets related tags based on given term(s)
    # Gets related tags based on given term(s)
    # @param tag_list Tag list to pull from related tags from
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_deleted Only return tags that are not soft deleted (default to false)
    # @option opts [String] :bucket AB test bucket (default to default)
    # @return [RelatedTagResponse]
    def get_v1_related_tags(tag_list, opts = {})
      data, _status_code, _headers = get_v1_related_tags_with_http_info(tag_list, opts)
      data
    end

    # Gets related tags based on given term(s)
    # Gets related tags based on given term(s)
    # @param tag_list Tag list to pull from related tags from
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_deleted Only return tags that are not soft deleted
    # @option opts [String] :bucket AB test bucket
    # @return [Array<(RelatedTagResponse, Fixnum, Hash)>] RelatedTagResponse data, response status code and response headers
    def get_v1_related_tags_with_http_info(tag_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_v1_related_tags ...'
      end
      # verify the required parameter 'tag_list' is set
      if @api_client.config.client_side_validation && tag_list.nil?
        fail ArgumentError, "Missing the required parameter 'tag_list' when calling TagApi.get_v1_related_tags"
      end
      # resource path
      local_var_path = '/v1/related-tags'

      # query parameters
      query_params = {}
      query_params[:'tag_list'] = tag_list
      query_params[:'include_deleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'bucket'] = opts[:'bucket'] if !opts[:'bucket'].nil?

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
        :return_type => 'RelatedTagResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_v1_related_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of tag suggestions based on search prefix.
    # Returns a list of tag suggestions based on search prefix.
    # @param prefix search prefix
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return. (default to 6)
    # @option opts [BOOLEAN] :explain Whether to return explanation of results. (default to false)
    # @return [AutocompleteResponse]
    def get_v1_tag_suggestions(prefix, opts = {})
      data, _status_code, _headers = get_v1_tag_suggestions_with_http_info(prefix, opts)
      data
    end

    # Returns a list of tag suggestions based on search prefix.
    # Returns a list of tag suggestions based on search prefix.
    # @param prefix search prefix
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of results to return.
    # @option opts [BOOLEAN] :explain Whether to return explanation of results.
    # @return [Array<(AutocompleteResponse, Fixnum, Hash)>] AutocompleteResponse data, response status code and response headers
    def get_v1_tag_suggestions_with_http_info(prefix, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_v1_tag_suggestions ...'
      end
      # verify the required parameter 'prefix' is set
      if @api_client.config.client_side_validation && prefix.nil?
        fail ArgumentError, "Missing the required parameter 'prefix' when calling TagApi.get_v1_tag_suggestions"
      end
      # resource path
      local_var_path = '/v1/tag-suggestions'

      # query parameters
      query_params = {}
      query_params[:'prefix'] = prefix
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'explain'] = opts[:'explain'] if !opts[:'explain'].nil?

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
        :return_type => 'AutocompleteResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_v1_tag_suggestions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets tags data based on name(s)
    # Gets tags data based on name(s)
    # @param tag_names_list comma separated list of tag names
    # @param [Hash] opts the optional parameters
    # @return [TagsResponse]
    def get_v1_tags(tag_names_list, opts = {})
      data, _status_code, _headers = get_v1_tags_with_http_info(tag_names_list, opts)
      data
    end

    # Gets tags data based on name(s)
    # Gets tags data based on name(s)
    # @param tag_names_list comma separated list of tag names
    # @param [Hash] opts the optional parameters
    # @return [Array<(TagsResponse, Fixnum, Hash)>] TagsResponse data, response status code and response headers
    def get_v1_tags_with_http_info(tag_names_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.get_v1_tags ...'
      end
      # verify the required parameter 'tag_names_list' is set
      if @api_client.config.client_side_validation && tag_names_list.nil?
        fail ArgumentError, "Missing the required parameter 'tag_names_list' when calling TagApi.get_v1_tags"
      end
      # resource path
      local_var_path = '/v1/tags'

      # query parameters
      query_params = {}
      query_params[:'tag_names_list'] = tag_names_list

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
        :return_type => 'TagsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#get_v1_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets taggings for designs
    # Sets taggings for designs
    # @param body request body
    # @param [Hash] opts the optional parameters
    # @return [SetDesignsTagsResponse]
    def post_v1_design_tags(body, opts = {})
      data, _status_code, _headers = post_v1_design_tags_with_http_info(body, opts)
      data
    end

    # Sets taggings for designs
    # Sets taggings for designs
    # @param body request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetDesignsTagsResponse, Fixnum, Hash)>] SetDesignsTagsResponse data, response status code and response headers
    def post_v1_design_tags_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.post_v1_design_tags ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TagApi.post_v1_design_tags"
      end
      # resource path
      local_var_path = '/v1/design-tags'

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
        :return_type => 'SetDesignsTagsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#post_v1_design_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Sets tags properties
    # Sets tags properties
    # @param body request body
    # @param [Hash] opts the optional parameters
    # @return [SetTagsResponse]
    def post_v1_tags(body, opts = {})
      data, _status_code, _headers = post_v1_tags_with_http_info(body, opts)
      data
    end

    # Sets tags properties
    # Sets tags properties
    # @param body request body
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetTagsResponse, Fixnum, Hash)>] SetTagsResponse data, response status code and response headers
    def post_v1_tags_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagApi.post_v1_tags ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TagApi.post_v1_tags"
      end
      # resource path
      local_var_path = '/v1/tags'

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
        :return_type => 'SetTagsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagApi#post_v1_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
