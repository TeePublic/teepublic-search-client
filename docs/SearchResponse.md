# SwaggerClient::SearchResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**max_score** | **Float** | max score for search query. | [optional] 
**total** | **Integer** | total number of documents matching our search criteria. | [optional] 
**explain** | [**Explain**](Explain.md) |  | [optional] 
**dym_suggest** | **String** | did you mean spell suggestion. | [optional] 
**designs** | [**Array&lt;DesignSlim&gt;**](DesignSlim.md) | list of designs. | [optional] 
**promoted_filters_suggest** | **Array&lt;String&gt;** | List of terms that may be used to further refine the result set. | [optional] 
**x_supplemental** | **Object** | may contain experimental supplemental response information. | [optional] 


