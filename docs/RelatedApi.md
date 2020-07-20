# SwaggerClient::RelatedApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_related_search**](RelatedApi.md#get_v1_related_search) | **GET** /v1/related-search | Gets related searches based on given term


# **get_v1_related_search**
> RelatedResponse get_v1_related_search(search_term)

Gets related searches based on given term

Gets related searches based on given term

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

api_instance = SwaggerClient::RelatedApi.new

search_term = 'search_term_example' # String | Search term to pull related searches from


begin
  #Gets related searches based on given term
  result = api_instance.get_v1_related_search(search_term)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelatedApi->get_v1_related_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | **String**| Search term to pull related searches from | 

### Return type

[**RelatedResponse**](RelatedResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



