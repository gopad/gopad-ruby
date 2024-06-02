# Gopad::ProfileApi

All URIs are relative to *https://try.gopad.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**show_profile**](ProfileApi.md#show_profile) | **GET** /profile/self | Fetch profile details of the personal account |
| [**token_profile**](ProfileApi.md#token_profile) | **GET** /profile/token | Retrieve an unlimited auth token |
| [**update_profile**](ProfileApi.md#update_profile) | **PUT** /profile/self | Update your own profile information |


## show_profile

> <Profile> show_profile

Fetch profile details of the personal account

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::ProfileApi.new

begin
  # Fetch profile details of the personal account
  result = api_instance.show_profile
  p result
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->show_profile: #{e}"
end
```

#### Using the show_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> show_profile_with_http_info

```ruby
begin
  # Fetch profile details of the personal account
  data, status_code, headers = api_instance.show_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->show_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Profile**](Profile.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## token_profile

> <AuthToken> token_profile

Retrieve an unlimited auth token

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['Header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Header'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::ProfileApi.new

begin
  # Retrieve an unlimited auth token
  result = api_instance.token_profile
  p result
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->token_profile: #{e}"
end
```

#### Using the token_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> token_profile_with_http_info

```ruby
begin
  # Retrieve an unlimited auth token
  data, status_code, headers = api_instance.token_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->token_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile

> <Profile> update_profile(profile)

Update your own profile information

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::ProfileApi.new
profile = Gopad::Profile.new # Profile | The profile data to update

begin
  # Update your own profile information
  result = api_instance.update_profile(profile)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->update_profile: #{e}"
end
```

#### Using the update_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Profile>, Integer, Hash)> update_profile_with_http_info(profile)

```ruby
begin
  # Update your own profile information
  data, status_code, headers = api_instance.update_profile_with_http_info(profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Profile>
rescue Gopad::ApiError => e
  puts "Error when calling ProfileApi->update_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile** | [**Profile**](Profile.md) | The profile data to update |  |

### Return type

[**Profile**](Profile.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

