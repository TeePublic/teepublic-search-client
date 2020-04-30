# swagger_client

SwaggerClient - the Ruby gem for the TeePublic V3 search Api Documentation

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.9
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::AutocompleteApi.new

prefix = 'prefix_example' # String | search prefix

opts = { 
  limit: 15, # Integer | Number of results to return.
  explain: false # BOOLEAN | Whether to return explanation of results.
}

begin
  #Returns a list of suggestions based on search prefix.
  result = api_instance.get_v1_autocomplete(prefix, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutocompleteApi->get_v1_autocomplete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AutocompleteApi* | [**get_v1_autocomplete**](docs/AutocompleteApi.md#get_v1_autocomplete) | **GET** /v1/autocomplete | Returns a list of suggestions based on search prefix.
*SwaggerClient::AutocompleteApi* | [**post_v1_autocomplete**](docs/AutocompleteApi.md#post_v1_autocomplete) | **POST** /v1/autocomplete | Returns a list of suggestions based on search prefix.
*SwaggerClient::LookupApi* | [**get_v1_lookup_by_id**](docs/LookupApi.md#get_v1_lookup_by_id) | **GET** /v1/lookup/{design_id} | Returns a published designs based on id.
*SwaggerClient::RelevancyApi* | [**delete_v1_relevancy_configuration**](docs/RelevancyApi.md#delete_v1_relevancy_configuration) | **DELETE** /v1/relevancy-configurations/{config_id} | Deletes search relevancy configuration.
*SwaggerClient::RelevancyApi* | [**get_v1_relevancy_configuration**](docs/RelevancyApi.md#get_v1_relevancy_configuration) | **GET** /v1/relevancy-configurations/{config_id} | Gets a search relevancy configuration.
*SwaggerClient::RelevancyApi* | [**get_v1_relevancy_configurations**](docs/RelevancyApi.md#get_v1_relevancy_configurations) | **GET** /v1/relevancy-configurations | Gets all relevancy configurations.
*SwaggerClient::RelevancyApi* | [**post_v1_relevancy_configurations**](docs/RelevancyApi.md#post_v1_relevancy_configurations) | **POST** /v1/relevancy-configurations | Saves search relevancy configuration.
*SwaggerClient::RelevancyApi* | [**put_v1_relevancy_configuration**](docs/RelevancyApi.md#put_v1_relevancy_configuration) | **PUT** /v1/relevancy-configurations/{config_id} | Updates search relevancy configuration.
*SwaggerClient::SearchApi* | [**post_v1_search**](docs/SearchApi.md#post_v1_search) | **POST** /v1/search | Returns a list of published designs based on search query.
*SwaggerClient::SearchApi* | [**post_v2_search**](docs/SearchApi.md#post_v2_search) | **POST** /v2/search | Returns a list of published designs based on search query.


## Documentation for Models

 - [SwaggerClient::AutocompleteRequest](docs/AutocompleteRequest.md)
 - [SwaggerClient::AutocompleteResponse](docs/AutocompleteResponse.md)
 - [SwaggerClient::AutocompleteSuggestion](docs/AutocompleteSuggestion.md)
 - [SwaggerClient::Design](docs/Design.md)
 - [SwaggerClient::DesignSlim](docs/DesignSlim.md)
 - [SwaggerClient::EsAutocompleteSuggest](docs/EsAutocompleteSuggest.md)
 - [SwaggerClient::EsCompletionSuggest](docs/EsCompletionSuggest.md)
 - [SwaggerClient::EsCompletionSuggestOption](docs/EsCompletionSuggestOption.md)
 - [SwaggerClient::EsHit](docs/EsHit.md)
 - [SwaggerClient::EsHits](docs/EsHits.md)
 - [SwaggerClient::EsLookupResponse](docs/EsLookupResponse.md)
 - [SwaggerClient::EsSearchResponse](docs/EsSearchResponse.md)
 - [SwaggerClient::Explain](docs/Explain.md)
 - [SwaggerClient::SearchRequest](docs/SearchRequest.md)
 - [SwaggerClient::SearchRequestV2](docs/SearchRequestV2.md)
 - [SwaggerClient::SearchResponse](docs/SearchResponse.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

