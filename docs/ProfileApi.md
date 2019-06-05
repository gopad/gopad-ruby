# Gopad::ProfileApi

All URIs are relative to *http://try.gopad.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**show_profile**](ProfileApi.md#show_profile) | **GET** /profile/self | Retrieve an unlimited auth token
[**token_profile**](ProfileApi.md#token_profile) | **GET** /profile/token | Retrieve an unlimited auth token
[**update_profile**](ProfileApi.md#update_profile) | **PUT** /profile/self | Retrieve an unlimited auth token



## show_profile

> Profile show_profile

Retrieve an unlimited auth token

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::ProfileApi.new

begin
  #Retrieve an unlimited auth token
  result = api_instance.show_profile
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling ProfileApi->show_profile: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Profile**](Profile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## token_profile

> AuthToken token_profile

Retrieve an unlimited auth token

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::ProfileApi.new

begin
  #Retrieve an unlimited auth token
  result = api_instance.token_profile
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling ProfileApi->token_profile: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile

> Profile update_profile(profile)

Retrieve an unlimited auth token

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::ProfileApi.new
profile = Gopad::Profile.new # Profile | The profile data to update

begin
  #Retrieve an unlimited auth token
  result = api_instance.update_profile(profile)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling ProfileApi->update_profile: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profile** | [**Profile**](Profile.md)| The profile data to update | 

### Return type

[**Profile**](Profile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

