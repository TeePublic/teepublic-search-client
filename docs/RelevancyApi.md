# SwaggerClient::RelevancyApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_v1_relevancy_configuration**](RelevancyApi.md#delete_v1_relevancy_configuration) | **DELETE** /v1/relevancy-configurations/{config_id} | Deletes search relevancy configuration.
[**get_v1_relevancy_configuration**](RelevancyApi.md#get_v1_relevancy_configuration) | **GET** /v1/relevancy-configurations/{config_id} | Gets a search relevancy configuration.
[**get_v1_relevancy_configurations**](RelevancyApi.md#get_v1_relevancy_configurations) | **GET** /v1/relevancy-configurations | Gets all relevancy configurations.
[**post_v1_relevancy_configurations**](RelevancyApi.md#post_v1_relevancy_configurations) | **POST** /v1/relevancy-configurations | Saves search relevancy configuration.
[**put_v1_relevancy_configuration**](RelevancyApi.md#put_v1_relevancy_configuration) | **PUT** /v1/relevancy-configurations/{config_id} | Updates search relevancy configuration.


# **delete_v1_relevancy_configuration**
> delete_v1_relevancy_configuration(config_id)

Deletes search relevancy configuration.

Deletes search relevancy configuration.

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

api_instance = SwaggerClient::RelevancyApi.new

config_id = 'config_id_example' # String | search relevancy configuration id


begin
  #Deletes search relevancy configuration.
  api_instance.delete_v1_relevancy_configuration(config_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelevancyApi->delete_v1_relevancy_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **String**| search relevancy configuration id | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_v1_relevancy_configuration**
> Object get_v1_relevancy_configuration(config_id)

Gets a search relevancy configuration.

Gets a search relevancy configuration.

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

api_instance = SwaggerClient::RelevancyApi.new

config_id = 'config_id_example' # String | search relevancy configuration id


begin
  #Gets a search relevancy configuration.
  result = api_instance.get_v1_relevancy_configuration(config_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelevancyApi->get_v1_relevancy_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **String**| search relevancy configuration id | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_v1_relevancy_configurations**
> Array&lt;Object&gt; get_v1_relevancy_configurations

Gets all relevancy configurations.

Gets all relevancy configurations.

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

api_instance = SwaggerClient::RelevancyApi.new

begin
  #Gets all relevancy configurations.
  result = api_instance.get_v1_relevancy_configurations
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelevancyApi->get_v1_relevancy_configurations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Array&lt;Object&gt;**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_v1_relevancy_configurations**
> post_v1_relevancy_configurations(body)

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

api_instance = SwaggerClient::RelevancyApi.new

body = nil # Object | Relevancy Configuration


begin
  #Saves search relevancy configuration.
  api_instance.post_v1_relevancy_configurations(body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelevancyApi->post_v1_relevancy_configurations: #{e}"
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



# **put_v1_relevancy_configuration**
> put_v1_relevancy_configuration(config_id, body)

Updates search relevancy configuration.

Updates search relevancy configuration.

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

api_instance = SwaggerClient::RelevancyApi.new

config_id = 'config_id_example' # String | search relevancy configuration id

body = nil # Object | Relevancy Configuration


begin
  #Updates search relevancy configuration.
  api_instance.put_v1_relevancy_configuration(config_id, body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RelevancyApi->put_v1_relevancy_configuration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config_id** | **String**| search relevancy configuration id | 
 **body** | **Object**| Relevancy Configuration | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



