=begin
#TeePublic V3 search Api Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.48

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::LinkGraphResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LinkGraphResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::LinkGraphResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LinkGraphResponse' do
    it 'should create an instance of LinkGraphResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::LinkGraphResponse)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["canonical", "duplicate"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "canonical_parent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "override"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "related_searches"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
