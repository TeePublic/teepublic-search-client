# SwaggerClient::TrendingApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_trending_search**](TrendingApi.md#get_v1_trending_search) | **GET** /v1/trending-search | Gets trending search results.
[**post_v1_trending_search**](TrendingApi.md#post_v1_trending_search) | **POST** /v1/trending-search | Saves trending search results.


# **get_v1_trending_search**
> Array&lt;TrendingResult&gt; get_v1_trending_search

Gets trending search results.

Gets trending search results.

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

api_instance = SwaggerClient::TrendingApi.new

begin
  #Gets trending search results.
  result = api_instance.get_v1_trending_search
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TrendingApi->get_v1_trending_search: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;TrendingResult&gt;**](TrendingResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v1_trending_search**
> post_v1_trending_search(body)

Saves trending search results.

Saves trending search results.

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

api_instance = SwaggerClient::TrendingApi.new

body = SwaggerClient::TrendingRequest.new # TrendingRequest | Trending search request


begin
  #Saves trending search results.
  api_instance.post_v1_trending_search(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TrendingApi->post_v1_trending_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrendingRequest**](TrendingRequest.md)| Trending search request | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



