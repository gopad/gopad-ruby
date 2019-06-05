# Gopad::AuthApi

All URIs are relative to *http://try.gopad.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login_user**](AuthApi.md#login_user) | **POST** /auth/login | Authenticate an user by credentials
[**refresh_auth**](AuthApi.md#refresh_auth) | **GET** /auth/refresh | Refresh an auth token before it expires
[**verify_auth**](AuthApi.md#verify_auth) | **GET** /auth/verify/{token} | Verify validity for an authentication token



## login_user

> AuthToken login_user(params)

Authenticate an user by credentials

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::AuthApi.new
params = Gopad::AuthLogin.new # AuthLogin | The credentials to authenticate

begin
  #Authenticate an user by credentials
  result = api_instance.login_user(params)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling AuthApi->login_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**AuthLogin**](AuthLogin.md)| The credentials to authenticate | 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## refresh_auth

> AuthToken refresh_auth

Refresh an auth token before it expires

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::AuthApi.new

begin
  #Refresh an auth token before it expires
  result = api_instance.refresh_auth
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling AuthApi->refresh_auth: #{e}"
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

> AuthVerify verify_auth(token)

Verify validity for an authentication token

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::AuthApi.new
token = 'token_example' # String | A token that have to be checked

begin
  #Verify validity for an authentication token
  result = api_instance.verify_auth(token)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling AuthApi->verify_auth: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| A token that have to be checked | 

### Return type

[**AuthVerify**](AuthVerify.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

