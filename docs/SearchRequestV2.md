# SwaggerClient::SearchRequestV2

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search_terms** | **String** | Search terms. | [optional] 
**sort** | **String** | Sort order | [optional] [default to &#39;relevance&#39;]
**tags_filter** | **Array&lt;String&gt;** | Design tags filter. | [optional] 
**canvases** | **Array&lt;String&gt;** | product filter | [optional] 
**artist_filter** | **Array&lt;Integer&gt;** | artist ids. | [optional] 
**per_page** | **Integer** | Number of results to return per page. | [optional] [default to 36]
**page_offset** | **Integer** | Page offset to fetch. | [optional] [default to 1]
**explain** | **BOOLEAN** | whether to return explanation of search results. | [optional] [default to false]
**es_explain** | **BOOLEAN** | whether to return elasticsearch explanation of search results. | [optional] [default to false]
**relevancy_config_id** | **String** | Relevancy config id. | [optional] 
**bucket** | **String** | AB test bucket. | [optional] 
**did_you_mean** | **BOOLEAN** | whether we include did you mean suggestions in search results. | [optional] [default to true]
**safe_search** | **BOOLEAN** | whether we include mature designs in search results. | [optional] [default to true]
**type** | **String** | Type of search to execute | [optional] [default to &#39;site-search&#39;]
**promoted_filters** | **Array&lt;String&gt;** | List of terms used to further refine the result set. | [optional] 


