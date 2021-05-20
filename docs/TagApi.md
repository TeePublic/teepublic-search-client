# SwaggerClient::TagApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_design_tags**](TagApi.md#get_v1_design_tags) | **GET** /v1/design-tags | Gets tags for a design
[**get_v1_related_tags**](TagApi.md#get_v1_related_tags) | **GET** /v1/related-tags | Gets related tags based on given term(s)
[**get_v1_tag_parent_child_mapping**](TagApi.md#get_v1_tag_parent_child_mapping) | **GET** /v1/tag-parent-child-mapping | Gets tag mapping for a seed tag or normalized search term
[**get_v1_tag_suggestions**](TagApi.md#get_v1_tag_suggestions) | **GET** /v1/tag-suggestions | Returns a list of tag suggestions based on search prefix.
[**get_v1_tags**](TagApi.md#get_v1_tags) | **GET** /v1/tags | Gets tags data based on name(s)


# **get_v1_design_tags**
> DesignTagsResponse get_v1_design_tags(design_id)

Gets tags for a design

Gets tags for a design

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

api_instance = SwaggerClient::TagApi.new

design_id = 56 # Integer | Design id to pull tags for


begin
  #Gets tags for a design
  result = api_instance.get_v1_design_tags(design_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_v1_design_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **design_id** | **Integer**| Design id to pull tags for | 

### Return type

[**DesignTagsResponse**](DesignTagsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v1_related_tags**
> RelatedTagResponse get_v1_related_tags(tag_list, opts)

Gets related tags based on given term(s)

Gets related tags based on given term(s)

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

api_instance = SwaggerClient::TagApi.new

tag_list = 'tag_list_example' # String | Tag list to pull from related tags from

opts = { 
  discoverable_taggings_minimum: 0, # Integer | minimum number of discoverable taggings required for return
  minimum_taggings: 0, # Integer | minimum number of taggings required for return
  include_deleted: false, # BOOLEAN | Only return tags that are not soft deleted
  bucket: 'default' # String | AB test bucket
}

begin
  #Gets related tags based on given term(s)
  result = api_instance.get_v1_related_tags(tag_list, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_v1_related_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_list** | **String**| Tag list to pull from related tags from | 
 **discoverable_taggings_minimum** | **Integer**| minimum number of discoverable taggings required for return | [optional] [default to 0]
 **minimum_taggings** | **Integer**| minimum number of taggings required for return | [optional] [default to 0]
 **include_deleted** | **BOOLEAN**| Only return tags that are not soft deleted | [optional] [default to false]
 **bucket** | **String**| AB test bucket | [optional] [default to default]

### Return type

[**RelatedTagResponse**](RelatedTagResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v1_tag_parent_child_mapping**
> TagMappingResponse get_v1_tag_parent_child_mapping(seed_tag)

Gets tag mapping for a seed tag or normalized search term

Gets tag mapping for a seed tag or normalized search term

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

api_instance = SwaggerClient::TagApi.new

seed_tag = 'seed_tag_example' # String | seed tag or normalized search term


begin
  #Gets tag mapping for a seed tag or normalized search term
  result = api_instance.get_v1_tag_parent_child_mapping(seed_tag)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_v1_tag_parent_child_mapping: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **seed_tag** | **String**| seed tag or normalized search term | 

### Return type

[**TagMappingResponse**](TagMappingResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



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

api_instance = SwaggerClient::TagApi.new

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
  puts "Exception when calling TagApi->get_v1_tag_suggestions: #{e}"
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

api_instance = SwaggerClient::TagApi.new

tag_names_list = 'tag_names_list_example' # String | comma separated list of tag names


begin
  #Gets tags data based on name(s)
  result = api_instance.get_v1_tags(tag_names_list)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_v1_tags: #{e}"
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



