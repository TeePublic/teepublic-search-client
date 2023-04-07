# SwaggerClient::CategorySearchRequestV1

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categories** | **Array&lt;String&gt;** | list of categories to apply to the search algorithm | [optional] 
**sort** | **String** | ranking algorithm to apply | [optional] [default to &#39;relevance&#39;]
**canvas** | **String** | filter for document availability on products | [optional] 
**per_page** | **Integer** | number of results to return per page | [optional] [default to 36]
**page_offset** | **Integer** | number of hits to skip | [optional] [default to 1]
**safe_search** | **BOOLEAN** | whether we include mature designs in search results | [optional] [default to true]
**bucket** | **String** | AB test bucket | [optional] 
**explain** | **BOOLEAN** | whether to return an Elaticsearch explanation of search results | [optional] [default to false]


