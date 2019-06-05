# Gopad::UserApi

All URIs are relative to *http://try.gopad.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_user_to_team**](UserApi.md#append_user_to_team) | **POST** /users/{user_id}/teams | Assign a team to user
[**create_user**](UserApi.md#create_user) | **POST** /users | Create a new user
[**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{user_id} | Delete a specific user
[**delete_user_from_team**](UserApi.md#delete_user_from_team) | **DELETE** /users/{user_id}/teams | Remove a team from user
[**list_user_teams**](UserApi.md#list_user_teams) | **GET** /users/{user_id}/teams | Fetch all teams assigned to user
[**list_users**](UserApi.md#list_users) | **GET** /users | Fetch all available users
[**permit_user_team**](UserApi.md#permit_user_team) | **PUT** /users/{user_id}/teams | Update team perms for user
[**show_user**](UserApi.md#show_user) | **GET** /users/{user_id} | Fetch a specific user
[**update_user**](UserApi.md#update_user) | **PUT** /users/{user_id} | Update a specific user



## append_user_to_team

> GeneralError append_user_to_team(user_id, user_team)

Assign a team to user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Gopad::UserTeamParams.new # UserTeamParams | The user team data to assign

begin
  #Assign a team to user
  result = api_instance.append_user_to_team(user_id, user_team)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->append_user_to_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **user_team** | [**UserTeamParams**](UserTeamParams.md)| The user team data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user

> User create_user(user)

Create a new user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user = Gopad::User.new # User | The user data to create

begin
  #Create a new user
  result = api_instance.create_user(user)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->create_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| The user data to create | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> GeneralError delete_user(user_id)

Delete a specific user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Delete a specific user
  result = api_instance.delete_user(user_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_from_team

> GeneralError delete_user_from_team(user_id, user_team)

Remove a team from user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Gopad::UserTeamParams.new # UserTeamParams | The user team data to delete

begin
  #Remove a team from user
  result = api_instance.delete_user_from_team(user_id, user_team)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->delete_user_from_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **user_team** | [**UserTeamParams**](UserTeamParams.md)| The user team data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_user_teams

> Array&lt;TeamUser&gt; list_user_teams(user_id)

Fetch all teams assigned to user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch all teams assigned to user
  result = api_instance.list_user_teams(user_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->list_user_teams: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> Array&lt;User&gt; list_users

Fetch all available users

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new

begin
  #Fetch all available users
  result = api_instance.list_users
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->list_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_user_team

> GeneralError permit_user_team(user_id, user_team)

Update team perms for user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user_team = Gopad::UserTeamParams.new # UserTeamParams | The user team data to update

begin
  #Update team perms for user
  result = api_instance.permit_user_team(user_id, user_team)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->permit_user_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **user_team** | [**UserTeamParams**](UserTeamParams.md)| The user team data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_user

> User show_user(user_id)

Fetch a specific user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug

begin
  #Fetch a specific user
  result = api_instance.show_user(user_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->show_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> User update_user(user_id, user)

Update a specific user

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::UserApi.new
user_id = 'user_id_example' # String | A user UUID or slug
user = Gopad::User.new # User | The user data to update

begin
  #Update a specific user
  result = api_instance.update_user(user_id, user)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling UserApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| A user UUID or slug | 
 **user** | [**User**](User.md)| The user data to update | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

