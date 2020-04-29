# SwaggerClient::AdminApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_v1_admin_relevancy**](AdminApi.md#post_v1_admin_relevancy) | **POST** /v1/admin/relevancy | Saves search relevancy configuration.


# **post_v1_admin_relevancy**
> post_v1_admin_relevancy(body)

Saves search relevancy configuration.

Saves search relevancy configuration.

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

api_instance = SwaggerClient::AdminApi.new

body = nil # Object | Relevancy Configuration


begin
  #Saves search relevancy configuration.
  api_instance.post_v1_admin_relevancy(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AdminApi->post_v1_admin_relevancy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Object**| Relevancy Configuration | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



