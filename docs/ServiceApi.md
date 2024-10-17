# SwaggerClient::ServiceApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthcheck_get**](ServiceApi.md#healthcheck_get) | **GET** /healthcheck | Check if the service is running


# **healthcheck_get**
> healthcheck_get

Check if the service is running

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ServiceApi.new

begin
  #Check if the service is running
  api_instance.healthcheck_get
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServiceApi->healthcheck_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



