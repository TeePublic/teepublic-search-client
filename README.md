# swagger_client

SwaggerClient - the Ruby gem for the TeePublic V3 search Api Documentation

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.48
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
  limit: 6, # Integer | Number of results to return.
  explain: false, # BOOLEAN | Whether to return explanation of results.
  bucket: 'default' # String | AB test bucket
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
*SwaggerClient::DesignsApi* | [**post_v1_similar_designs**](docs/DesignsApi.md#post_v1_similar_designs) | **POST** /v1/similar-designs | Returns a list of discoverable designs based on a reference design and/or primary tag.
*SwaggerClient::RelatedApi* | [**get_v1_related_search**](docs/RelatedApi.md#get_v1_related_search) | **GET** /v1/related-search | Gets related searches based on given term
*SwaggerClient::SearchApi* | [**post_artist_search**](docs/SearchApi.md#post_artist_search) | **POST** /v1/artist-search | Performs search on active designs by artist
*SwaggerClient::SearchApi* | [**post_v2_dmca_search**](docs/SearchApi.md#post_v2_dmca_search) | **POST** /v2/dmca-search | Performs search on publishable designs.
*SwaggerClient::SearchApi* | [**post_v2_search**](docs/SearchApi.md#post_v2_search) | **POST** /v2/search | Returns a list of discoverable designs based on search query.
*SwaggerClient::ServiceApi* | [**healthcheck_get**](docs/ServiceApi.md#healthcheck_get) | **GET** /healthcheck | Check if the service is running
*SwaggerClient::TagApi* | [**get_v1_design_tags**](docs/TagApi.md#get_v1_design_tags) | **GET** /v1/design-tags | Gets tags for a design
*SwaggerClient::TagApi* | [**get_v1_link_graph**](docs/TagApi.md#get_v1_link_graph) | **GET** /v1/link-graph | Retrieves the status of tags considered for our link graph.
*SwaggerClient::TagApi* | [**get_v1_related_tags**](docs/TagApi.md#get_v1_related_tags) | **GET** /v1/related-tags | Gets related tags based on given term(s)
*SwaggerClient::TagApi* | [**get_v1_tag_suggestions**](docs/TagApi.md#get_v1_tag_suggestions) | **GET** /v1/tag-suggestions | Returns a list of tag suggestions based on search prefix.
*SwaggerClient::TagApi* | [**get_v1_tags**](docs/TagApi.md#get_v1_tags) | **GET** /v1/tags | Gets tags data based on name(s)
*SwaggerClient::TagApi* | [**post_v1_design_tags**](docs/TagApi.md#post_v1_design_tags) | **POST** /v1/design-tags | Sets taggings for designs
*SwaggerClient::TagApi* | [**post_v1_link_graph**](docs/TagApi.md#post_v1_link_graph) | **POST** /v1/link-graph | Sets the status of tags considered for our link graph.
*SwaggerClient::TagApi* | [**post_v1_tags**](docs/TagApi.md#post_v1_tags) | **POST** /v1/tags | Sets tags properties
*SwaggerClient::TrendingApi* | [**get_v1_trending_search**](docs/TrendingApi.md#get_v1_trending_search) | **GET** /v1/trending-search | Gets trending search results.
*SwaggerClient::TrendingApi* | [**post_v1_trending_search**](docs/TrendingApi.md#post_v1_trending_search) | **POST** /v1/trending-search | Saves trending search results.


## Documentation for Models

 - [SwaggerClient::ArtistSearchRequest](docs/ArtistSearchRequest.md)
 - [SwaggerClient::AutocompleteRequest](docs/AutocompleteRequest.md)
 - [SwaggerClient::AutocompleteResponse](docs/AutocompleteResponse.md)
 - [SwaggerClient::AutocompleteSuggestion](docs/AutocompleteSuggestion.md)
 - [SwaggerClient::Design](docs/Design.md)
 - [SwaggerClient::DesignSlim](docs/DesignSlim.md)
 - [SwaggerClient::DesignTagsResponse](docs/DesignTagsResponse.md)
 - [SwaggerClient::DmcaSearchRequestV2](docs/DmcaSearchRequestV2.md)
 - [SwaggerClient::EsAutocompleteSuggest](docs/EsAutocompleteSuggest.md)
 - [SwaggerClient::EsCompletionSuggest](docs/EsCompletionSuggest.md)
 - [SwaggerClient::EsCompletionSuggestOption](docs/EsCompletionSuggestOption.md)
 - [SwaggerClient::EsHit](docs/EsHit.md)
 - [SwaggerClient::EsHits](docs/EsHits.md)
 - [SwaggerClient::EsSearchResponse](docs/EsSearchResponse.md)
 - [SwaggerClient::Explain](docs/Explain.md)
 - [SwaggerClient::LinkGraphResponse](docs/LinkGraphResponse.md)
 - [SwaggerClient::RelatedResponse](docs/RelatedResponse.md)
 - [SwaggerClient::RelatedResult](docs/RelatedResult.md)
 - [SwaggerClient::RelatedTagObject](docs/RelatedTagObject.md)
 - [SwaggerClient::RelatedTagResponse](docs/RelatedTagResponse.md)
 - [SwaggerClient::RelatedTagResult](docs/RelatedTagResult.md)
 - [SwaggerClient::SearchRequest](docs/SearchRequest.md)
 - [SwaggerClient::SearchRequestV2](docs/SearchRequestV2.md)
 - [SwaggerClient::SearchResponse](docs/SearchResponse.md)
 - [SwaggerClient::SetDesignTaggingsObject](docs/SetDesignTaggingsObject.md)
 - [SwaggerClient::SetDesignsTaggingsRequest](docs/SetDesignsTaggingsRequest.md)
 - [SwaggerClient::SetDesignsTagsResponse](docs/SetDesignsTagsResponse.md)
 - [SwaggerClient::SetLinkGraphRequest](docs/SetLinkGraphRequest.md)
 - [SwaggerClient::SetLinkGraphResponse](docs/SetLinkGraphResponse.md)
 - [SwaggerClient::SetTagObject](docs/SetTagObject.md)
 - [SwaggerClient::SetTagsRequest](docs/SetTagsRequest.md)
 - [SwaggerClient::SetTagsResponse](docs/SetTagsResponse.md)
 - [SwaggerClient::SimilarDesignsRequestV1](docs/SimilarDesignsRequestV1.md)
 - [SwaggerClient::SimilarDesignsResponse](docs/SimilarDesignsResponse.md)
 - [SwaggerClient::TagResult](docs/TagResult.md)
 - [SwaggerClient::TagsResponse](docs/TagsResponse.md)
 - [SwaggerClient::TrendingRequest](docs/TrendingRequest.md)
 - [SwaggerClient::TrendingResult](docs/TrendingResult.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

