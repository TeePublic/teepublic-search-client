# SwaggerClient::TagApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_v1_design_tags**](TagApi.md#get_v1_design_tags) | **GET** /v1/design-tags | Gets tags for a design
[**get_v1_link_graph**](TagApi.md#get_v1_link_graph) | **GET** /v1/link-graph | Retrieves the status of tags considered for our link graph.
[**get_v1_related_tags**](TagApi.md#get_v1_related_tags) | **GET** /v1/related-tags | Gets related tags based on given term(s)
[**get_v1_tag_suggestions**](TagApi.md#get_v1_tag_suggestions) | **GET** /v1/tag-suggestions | Returns a list of tag suggestions based on search prefix.
[**get_v1_tags**](TagApi.md#get_v1_tags) | **GET** /v1/tags | Gets tags data based on name(s)
[**post_v1_design_tags**](TagApi.md#post_v1_design_tags) | **POST** /v1/design-tags | Sets taggings for designs
[**post_v1_link_graph**](TagApi.md#post_v1_link_graph) | **POST** /v1/link-graph | Sets the status of tags considered for our link graph.
[**post_v1_tags**](TagApi.md#post_v1_tags) | **POST** /v1/tags | Sets tags properties


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



# **get_v1_link_graph**
> LinkGraphResponse get_v1_link_graph(tag_name)

Retrieves the status of tags considered for our link graph.

This endpoint allows a user to view the canonical and duplicate status of tags from the tag deduplication workflow.

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

tag_name = nil # Object | Tag name for which we pull link graph data


begin
  #Retrieves the status of tags considered for our link graph.
  result = api_instance.get_v1_link_graph(tag_name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->get_v1_link_graph: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | [**Object**](.md)| Tag name for which we pull link graph data | 

### Return type

[**LinkGraphResponse**](LinkGraphResponse.md)

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
 **include_deleted** | **BOOLEAN**| Only return tags that are not soft deleted | [optional] [default to false]
 **bucket** | **String**| AB test bucket | [optional] [default to default]

### Return type

[**RelatedTagResponse**](RelatedTagResponse.md)

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



# **post_v1_design_tags**
> SetDesignsTagsResponse post_v1_design_tags(body)

Sets taggings for designs

Sets taggings for designs

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

body = SwaggerClient::SetDesignsTaggingsRequest.new # SetDesignsTaggingsRequest | request body


begin
  #Sets taggings for designs
  result = api_instance.post_v1_design_tags(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->post_v1_design_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetDesignsTaggingsRequest**](SetDesignsTaggingsRequest.md)| request body | 

### Return type

[**SetDesignsTagsResponse**](SetDesignsTagsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v1_link_graph**
> SetLinkGraphResponse post_v1_link_graph(body)

Sets the status of tags considered for our link graph.

This endpoint allows a user to edit the canonical and duplicate status of tags from the tag deduplication workflow.

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

body = SwaggerClient::SetLinkGraphRequest.new # SetLinkGraphRequest | request body


begin
  #Sets the status of tags considered for our link graph.
  result = api_instance.post_v1_link_graph(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->post_v1_link_graph: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetLinkGraphRequest**](SetLinkGraphRequest.md)| request body | 

### Return type

[**SetLinkGraphResponse**](SetLinkGraphResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_v1_tags**
> SetTagsResponse post_v1_tags(body)

Sets tags properties

Sets tags properties

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

body = SwaggerClient::SetTagsRequest.new # SetTagsRequest | request body


begin
  #Sets tags properties
  result = api_instance.post_v1_tags(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TagApi->post_v1_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetTagsRequest**](SetTagsRequest.md)| request body | 

### Return type

[**SetTagsResponse**](SetTagsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



