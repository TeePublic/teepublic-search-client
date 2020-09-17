# SwaggerClient::TagsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_tags**](TagsApi.md#get_v1_tags) | **GET** /v1/tags | Gets tags data based on name(s)


# **get_v1_tags**
> TagsResponse get_v1_tags(tag_names_list)

Gets tags data based on name(s)

Gets tags data based on name(s)

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

api_instance = SwaggerClient::TagsApi.new

tag_names_list = 'tag_names_list_example' # String | comma separated list of tag names


begin
  #Gets tags data based on name(s)
  result = api_instance.get_v1_tags(tag_names_list)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagsApi->get_v1_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_names_list** | **String**| comma separated list of tag names | 

### Return type

[**TagsResponse**](TagsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



