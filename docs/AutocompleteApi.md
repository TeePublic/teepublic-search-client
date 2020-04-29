# SwaggerClient::AutocompleteApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_autocomplete**](AutocompleteApi.md#get_v1_autocomplete) | **GET** /v1/autocomplete | Returns a list of suggestions based on search prefix.
[**post_v1_autocomplete**](AutocompleteApi.md#post_v1_autocomplete) | **POST** /v1/autocomplete | Returns a list of suggestions based on search prefix.


# **get_v1_autocomplete**
> AutocompleteResponse get_v1_autocomplete(prefix, opts)

Returns a list of suggestions based on search prefix.

Returns a list of suggestions based on search prefix.

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

api_instance = SwaggerClient::AutocompleteApi.new

prefix = 'prefix_example' # String | search prefix

opts = { 
  limit: 15, # Integer | Number of results to return.
  explain: false # BOOLEAN | Whether to return explanation of results.
}

begin
  #Returns a list of suggestions based on search prefix.
  result = api_instance.get_v1_autocomplete(prefix, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutocompleteApi->get_v1_autocomplete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefix** | **String**| search prefix | 
 **limit** | **Integer**| Number of results to return. | [optional] [default to 15]
 **explain** | **BOOLEAN**| Whether to return explanation of results. | [optional] [default to false]

### Return type

[**AutocompleteResponse**](AutocompleteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **post_v1_autocomplete**
> AutocompleteResponse post_v1_autocomplete(body)

Returns a list of suggestions based on search prefix.

Returns a list of suggestions based on search prefix.

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

api_instance = SwaggerClient::AutocompleteApi.new

body = SwaggerClient::AutocompleteRequest.new # AutocompleteRequest | Autocomplete Request


begin
  #Returns a list of suggestions based on search prefix.
  result = api_instance.post_v1_autocomplete(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AutocompleteApi->post_v1_autocomplete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AutocompleteRequest**](AutocompleteRequest.md)| Autocomplete Request | 

### Return type

[**AutocompleteResponse**](AutocompleteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



