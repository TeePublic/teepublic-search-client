# swagger_client

SwaggerClient - the Ruby gem for the TeePublic V3 search Api Documentation

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.6
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

api_instance = SwaggerClient::LookupApi.new

design_id = 789 # Integer | id of the design to return


begin
  #Returns a published designs based on id.
  result = api_instance.get_v1_lookup_by_id(design_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LookupApi->get_v1_lookup_by_id: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::LookupApi* | [**get_v1_lookup_by_id**](docs/LookupApi.md#get_v1_lookup_by_id) | **GET** /v1/lookup/{design_id} | Returns a published designs based on id.
*SwaggerClient::SearchApi* | [**post_v1_search**](docs/SearchApi.md#post_v1_search) | **POST** /v1/search | Returns a list of published designs based on search query.
*SwaggerClient::SearchApi* | [**post_v2_search**](docs/SearchApi.md#post_v2_search) | **POST** /v2/search | Returns a list of published designs based on search query.


## Documentation for Models

 - [SwaggerClient::Design](docs/Design.md)
 - [SwaggerClient::DesignSlim](docs/DesignSlim.md)
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

