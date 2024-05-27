# Gopad::AuthApi

All URIs are relative to *https://try.gopad.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**external_callback**](AuthApi.md#external_callback) | **GET** /auth/{provider}/callback | Callback for external authentication |
| [**external_initialize**](AuthApi.md#external_initialize) | **GET** /auth/{provider}/initialize | Initialize the external authentication |


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

