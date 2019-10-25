# SwaggerClient::LookupApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_lookup_by_id**](LookupApi.md#get_v1_lookup_by_id) | **GET** /v1/lookup/{design_id} | Returns a published designs based on id.


# **get_v1_lookup_by_id**
> Design get_v1_lookup_by_id(design_id)

Returns a published designs based on id.

Returns a published designs based on id.

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **design_id** | **Integer**| id of the design to return | 

### Return type

[**Design**](Design.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



