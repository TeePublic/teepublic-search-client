# SwaggerClient::TagSuggestionApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_tag_suggestions**](TagSuggestionApi.md#get_v1_tag_suggestions) | **GET** /v1/tag-suggestions | Returns a list of tag suggestions based on search prefix.


# **get_v1_tag_suggestions**
> AutocompleteResponse get_v1_tag_suggestions(prefix, opts)

Returns a list of tag suggestions based on search prefix.

Returns a list of tag suggestions based on search prefix.

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

api_instance = SwaggerClient::TagSuggestionApi.new

prefix = 'prefix_example' # String | search prefix

opts = { 
  limit: 6, # Integer | Number of results to return.
  explain: false # BOOLEAN | Whether to return explanation of results.
}

begin
  #Returns a list of tag suggestions based on search prefix.
  result = api_instance.get_v1_tag_suggestions(prefix, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagSuggestionApi->get_v1_tag_suggestions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix** | **String**| search prefix | 
 **limit** | **Integer**| Number of results to return. | [optional] [default to 6]
 **explain** | **BOOLEAN**| Whether to return explanation of results. | [optional] [default to false]

### Return type

[**AutocompleteResponse**](AutocompleteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



