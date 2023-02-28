=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.38

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SearchApi)
    end
  end

  # unit tests for post_artist_search
  # Performs search on active designs by artist
  # Performs search on designs by artist username or slug which are discoverable and non-affiliate
  # @param body User Search Request
  # @param [Hash] opts the optional parameters
  # @return [SearchResponse]
  describe 'post_artist_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_dmca_search
  # Performs search on publishable designs.
  # Performs search on publishable designs that have not had a a DMCA takedown. Supports filtering of teepublic approved/unapproved designs.
  # @param body User Search Request
  # @param [Hash] opts the optional parameters
  # @return [SearchResponse]
  describe 'post_v2_dmca_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_v2_search
  # Returns a list of discoverable designs based on search query.
  # Returns a list of discoverable designs based on search query.
  # @param body User Search Request
  # @param [Hash] opts the optional parameters
  # @return [SearchResponse]
  describe 'post_v2_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
