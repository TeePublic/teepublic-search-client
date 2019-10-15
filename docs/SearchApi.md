# SwaggerClient::SearchApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_v1_search**](SearchApi.md#post_v1_search) | **POST** /v1/search | Returns a list of published designs based on search query.


# **post_v1_search**
> SearchResponse post_v1_search(body)

Returns a list of published designs based on search query.

Returns a list of published designs based on search query.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['X-API-KEY '] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY '] = 'Bearer'
end

api_instance = SwaggerClient::SearchApi.new

body = SwaggerClient::SearchRequest.new # SearchRequest | User Search Request


begin
  #Returns a list of published designs based on search query.
  result = api_instance.post_v1_search(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SearchApi->post_v1_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchRequest**](SearchRequest.md)| User Search Request | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



