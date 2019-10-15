# SwaggerClient::SearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search_terms** | **String** | Search terms. | [optional] 
**sort** | **String** | Sort order | [optional] [default to &#39;relevance&#39;]
**tags_filter** | **Array&lt;String&gt;** | Design tags filter. | [optional] 
**gender** | **String** | Gender filter | [optional] [default to &#39;unisex&#39;]
**product_type** | **String** | product filter | [optional] [default to &#39;classic-t-shirt&#39;]
**artist_filter** | **Integer** | artist id. | [optional] 
**per_page** | **Integer** | Number of results to return per page. | [optional] [default to 36]
**page_offset** | **Integer** | Page offset to fetch. | [optional] [default to 1]
**explain** | **BOOLEAN** | whether to return explanation of search results. | [optional] [default to false]

