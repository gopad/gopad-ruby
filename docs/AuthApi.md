# Gopad::AuthApi

All URIs are relative to *https://try.gopad.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**external_callback**](AuthApi.md#external_callback) | **GET** /auth/{provider}/callback | Callback for external authentication |
| [**external_initialize**](AuthApi.md#external_initialize) | **GET** /auth/{provider}/initialize | Initialize the external authentication |
| [**login_auth**](AuthApi.md#login_auth) | **POST** /auth/login | Authenticate an user by credentials |
| [**refresh_auth**](AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires |
| [**verify_auth**](AuthApi.md#verify_auth) | **GET** /auth/verify | Verify validity for an authentication token |


## external_callback

> <Notification> external_callback(provider, opts)

Callback for external authentication

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new
provider = 'provider_example' # String | An identifier for the auth provider
opts = {
  state: 'state_example', # String | Auth state
  code: 'code_example' # String | Auth code
}

begin
  # Callback for external authentication
  result = api_instance.external_callback(provider, opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->external_callback: #{e}"
end
```

#### Using the external_callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> external_callback_with_http_info(provider, opts)

```ruby
begin
  # Callback for external authentication
  data, status_code, headers = api_instance.external_callback_with_http_info(provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->external_callback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | An identifier for the auth provider |  |
| **state** | **String** | Auth state | [optional] |
| **code** | **String** | Auth code | [optional] |

### Return type

[**Notification**](Notification.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## external_initialize

> <Notification> external_initialize(provider, opts)

Initialize the external authentication

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new
provider = 'provider_example' # String | An identifier for the auth provider
opts = {
  state: 'state_example' # String | Auth state
}

begin
  # Initialize the external authentication
  result = api_instance.external_initialize(provider, opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->external_initialize: #{e}"
end
```

#### Using the external_initialize_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> external_initialize_with_http_info(provider, opts)

```ruby
begin
  # Initialize the external authentication
  data, status_code, headers = api_instance.external_initialize_with_http_info(provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->external_initialize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | An identifier for the auth provider |  |
| **state** | **String** | Auth state | [optional] |

### Return type

[**Notification**](Notification.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login_auth

> <AuthToken> login_auth(auth_login)

Authenticate an user by credentials

### Examples

```ruby
require 'time'
require 'gopad'

api_instance = Gopad::AuthApi.new
auth_login = Gopad::AuthLogin.new({username: 'username_example', password: 'password_example'}) # AuthLogin | The credentials to authenticate

begin
  # Authenticate an user by credentials
  result = api_instance.login_auth(auth_login)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->login_auth: #{e}"
end
```

#### Using the login_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthToken>, Integer, Hash)> login_auth_with_http_info(auth_login)

```ruby
begin
  # Authenticate an user by credentials
  data, status_code, headers = api_instance.login_auth_with_http_info(auth_login)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthToken>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->login_auth_with_http_info: #{e}"
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

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_auth

> <AuthVerify> verify_auth

Verify validity for an authentication token

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

api_instance = Gopad::AuthApi.new

begin
  # Verify validity for an authentication token
  result = api_instance.verify_auth
  p result
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->verify_auth: #{e}"
end
```

#### Using the verify_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthVerify>, Integer, Hash)> verify_auth_with_http_info

```ruby
begin
  # Verify validity for an authentication token
  data, status_code, headers = api_instance.verify_auth_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthVerify>
rescue Gopad::ApiError => e
  puts "Error when calling AuthApi->verify_auth_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthVerify**](AuthVerify.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

