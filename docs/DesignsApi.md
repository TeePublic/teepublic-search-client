# SwaggerClient::DesignsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_v1_similar_designs**](DesignsApi.md#post_v1_similar_designs) | **POST** /v1/similar-designs | Returns a list of discoverable designs based on the query of a design&#39;s primary tag.


# **post_v1_similar_designs**
> SimilarDesignsResponse post_v1_similar_designs(body)

Returns a list of discoverable designs based on the query of a design's primary tag.

Returns a list of discoverable designs based on the query of a design's primary tag.

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

api_instance = SwaggerClient::DesignsApi.new

body = SwaggerClient::SimilarDesignsRequestV1.new # SimilarDesignsRequestV1 | Similar Designs Request


begin
  #Returns a list of discoverable designs based on the query of a design's primary tag.
  result = api_instance.post_v1_similar_designs(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DesignsApi->post_v1_similar_designs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SimilarDesignsRequestV1**](SimilarDesignsRequestV1.md)| Similar Designs Request | 

### Return type

[**SimilarDesignsResponse**](SimilarDesignsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



