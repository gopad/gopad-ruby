# Gopad::ProfileApi

All URIs are relative to *http://try.gopad.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**show_profile**](ProfileApi.md#show_profile) | **GET** /profile/self | Retrieve an unlimited auth token |
| [**token_profile**](ProfileApi.md#token_profile) | **GET** /profile/token | Retrieve an unlimited auth token |
| [**update_profile**](ProfileApi.md#update_profile) | **PUT** /profile/self | Retrieve an unlimited auth token |


## show_profile

> <Profile> show_profile

Retrieve an unlimited auth token

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::ProfileApi.new

begin
  # Retrieve an unlimited auth token
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
  # Retrieve an unlimited auth token
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

No authorization required

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_profile

> <Profile> update_profile(profile)

Retrieve an unlimited auth token

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::ProfileApi.new
profile = Gopad::Profile.new({username: 'username_example', email: 'email_example'}) # Profile | The profile data to update

begin
  # Retrieve an unlimited auth token
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
  # Retrieve an unlimited auth token
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

