# SwaggerClient::SearchApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_artist_search**](SearchApi.md#post_artist_search) | **POST** /v1/artist-search | Performs search on active designs by artist
[**post_v2_dmca_search**](SearchApi.md#post_v2_dmca_search) | **POST** /v2/dmca-search | Performs search on publishable designs.
[**post_v2_search**](SearchApi.md#post_v2_search) | **POST** /v2/search | Returns a list of discoverable designs based on search query.


# **post_artist_search**
> SearchResponse post_artist_search(body)

Performs search on active designs by artist

Performs search on designs by artist username or slug which are discoverable and non-affiliate

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

body = SwaggerClient::ArtistSearchRequest.new # ArtistSearchRequest | User Search Request


begin
  #Performs search on active designs by artist
  result = api_instance.post_artist_search(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->post_artist_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ArtistSearchRequest**](ArtistSearchRequest.md)| User Search Request | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_dmca_search**
> SearchResponse post_v2_dmca_search(body)

Performs search on publishable designs.

Performs search on publishable designs that have not had a a DMCA takedown. Supports filtering of teepublic approved/unapproved designs.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

body = SwaggerClient::DmcaSearchRequestV2.new # DmcaSearchRequestV2 | User Search Request


begin
  #Performs search on publishable designs.
  result = api_instance.post_v2_dmca_search(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->post_v2_dmca_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DmcaSearchRequestV2**](DmcaSearchRequestV2.md)| User Search Request | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v2_search**
> SearchResponse post_v2_search(body)

Returns a list of discoverable designs based on search query.

Returns a list of discoverable designs based on search query.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

body = SwaggerClient::SearchRequestV2.new # SearchRequestV2 | User Search Request


begin
  #Returns a list of discoverable designs based on search query.
  result = api_instance.post_v2_search(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->post_v2_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchRequestV2**](SearchRequestV2.md)| User Search Request | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



