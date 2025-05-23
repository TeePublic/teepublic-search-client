=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.48

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TagApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TagApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TagApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TagApi' do
    it 'should create an instance of TagApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TagApi)
    end
  end

  # unit tests for get_v1_design_tags
  # Gets tags for a design
  # Gets tags for a design
  # @param design_id Design id to pull tags for
  # @param [Hash] opts the optional parameters
  # @return [DesignTagsResponse]
  describe 'get_v1_design_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v1_link_graph
  # Retrieves the status of tags considered for our link graph.
  # This endpoint allows a user to view the canonical and duplicate status of tags from the tag deduplication workflow.
  # @param tag_name Tag name for which we pull link graph data
  # @param [Hash] opts the optional parameters
  # @return [LinkGraphResponse]
  describe 'get_v1_link_graph test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v1_related_tags
  # Gets related tags based on given term(s)
  # Gets related tags based on given term(s)
  # @param tag_list Tag list to pull from related tags from
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_deleted Only return tags that are not soft deleted
  # @option opts [String] :bucket AB test bucket
  # @return [RelatedTagResponse]
  describe 'get_v1_related_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v1_tag_suggestions
  # Returns a list of tag suggestions based on search prefix.
  # Returns a list of tag suggestions based on search prefix.
  # @param prefix search prefix
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of results to return.
  # @option opts [BOOLEAN] :explain Whether to return explanation of results.
  # @return [AutocompleteResponse]
  describe 'get_v1_tag_suggestions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_v1_tags
  # Gets tags data based on name(s)
  # Gets tags data based on name(s)
  # @param tag_names_list comma separated list of tag names
  # @param [Hash] opts the optional parameters
  # @return [TagsResponse]
  describe 'get_v1_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v1_design_tags
  # Sets taggings for designs
  # Sets taggings for designs
  # @param body request body
  # @param [Hash] opts the optional parameters
  # @return [SetDesignsTagsResponse]
  describe 'post_v1_design_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v1_link_graph
  # Sets the status of tags considered for our link graph.
  # This endpoint allows a user to edit the canonical and duplicate status of tags from the tag deduplication workflow.
  # @param body request body
  # @param [Hash] opts the optional parameters
  # @return [SetLinkGraphResponse]
  describe 'post_v1_link_graph test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v1_tags
  # Sets tags properties
  # Sets tags properties
  # @param body request body
  # @param [Hash] opts the optional parameters
  # @return [SetTagsResponse]
  describe 'post_v1_tags test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
