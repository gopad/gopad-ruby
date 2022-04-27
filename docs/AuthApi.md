# Gopad::AuthApi

All URIs are relative to *http://try.gopad.tech/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**login_user**](AuthApi.md#login_user) | **POST** /auth/login | Authenticate an user by credentials |
| [**refresh_auth**](AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires |
| [**verify_auth**](AuthApi.md#verify_auth) | **GET** /auth/verify/{token} | Verify validity for an authentication token |


## login_user

> <AuthToken> login_user(auth_login)

Authenticate an user by credentials

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new
auth_login = Gopad::AuthLogin.new({username: 'username_example', password: 'password_example'}) # AuthLogin | The credentials to authenticate

begin
  # Authenticate an user by credentials
  result = api_instance.login_user(auth_login)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->login_user: #{e}"
end
```

#### Using the login_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> login_user_with_http_info(auth_login)

```ruby
begin
  # Authenticate an user by credentials
  data, status_code, headers = api_instance.login_user_with_http_info(auth_login)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->login_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_login** | [**AuthLogin**](AuthLogin.md) | The credentials to authenticate |  |

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refresh_auth

> <AuthToken> refresh_auth

Refresh an auth token before it expires

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new

begin
  # Refresh an auth token before it expires
  result = api_instance.refresh_auth
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->refresh_auth: #{e}"
end
```

#### Using the refresh_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> refresh_auth_with_http_info

```ruby
begin
  # Refresh an auth token before it expires
  data, status_code, headers = api_instance.refresh_auth_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->refresh_auth_with_http_info: #{e}"
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


## verify_auth

> <AuthVerify> verify_auth(token)

Verify validity for an authentication token

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new
token = 'token_example' # String | A token that have to be checked

begin
  # Verify validity for an authentication token
  result = api_instance.verify_auth(token)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->verify_auth: #{e}"
end
```

#### Using the verify_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVerify>, Integer, Hash)> verify_auth_with_http_info(token)

```ruby
begin
  # Verify validity for an authentication token
  data, status_code, headers = api_instance.verify_auth_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVerify>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->verify_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | A token that have to be checked |  |

### Return type

[**AuthVerify**](AuthVerify.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

