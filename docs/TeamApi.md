# Gopad::TeamApi

All URIs are relative to *http://try.gopad.tech/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**append_team_to_user**](TeamApi.md#append_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team
[**create_team**](TeamApi.md#create_team) | **POST** /teams | Create a new team
[**delete_team**](TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team
[**delte_team_from_user**](TeamApi.md#delte_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team
[**list_team_users**](TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team
[**list_teams**](TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams
[**permit_team_user**](TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team
[**show_team**](TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team
[**update_team**](TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team



## append_team_to_user

> GeneralError append_team_to_user(team_id, team_user)

Assign a user to team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Gopad::TeamUserParams.new # TeamUserParams | The team user data to assign

begin
  #Assign a user to team
  result = api_instance.append_team_to_user(team_id, team_user)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->append_team_to_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **team_user** | [**TeamUserParams**](TeamUserParams.md)| The team user data to assign | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team

> Team create_team(team)

Create a new team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team = Gopad::Team.new # Team | The team data to create

begin
  #Create a new team
  result = api_instance.create_team(team)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->create_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team** | [**Team**](Team.md)| The team data to create | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> GeneralError delete_team(team_id)

Delete a specific team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Delete a specific team
  result = api_instance.delete_team(team_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->delete_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delte_team_from_user

> GeneralError delte_team_from_user(team_id, team_user)

Remove a user from team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Gopad::TeamUserParams.new # TeamUserParams | The team user data to delete

begin
  #Remove a user from team
  result = api_instance.delte_team_from_user(team_id, team_user)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->delte_team_from_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **team_user** | [**TeamUserParams**](TeamUserParams.md)| The team user data to delete | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_team_users

> Array&lt;TeamUser&gt; list_team_users(team_id)

Fetch all users assigned to team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch all users assigned to team
  result = api_instance.list_team_users(team_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->list_team_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Array&lt;TeamUser&gt;**](TeamUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> Array&lt;Team&gt; list_teams

Fetch all available teams

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new

begin
  #Fetch all available teams
  result = api_instance.list_teams
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->list_teams: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_team_user

> GeneralError permit_team_user(team_id, team_user)

Update user perms for team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team_user = Gopad::TeamUserParams.new # TeamUserParams | The team user data to update

begin
  #Update user perms for team
  result = api_instance.permit_team_user(team_id, team_user)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->permit_team_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **team_user** | [**TeamUserParams**](TeamUserParams.md)| The team user data to update | 

### Return type

[**GeneralError**](GeneralError.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_team

> Team show_team(team_id)

Fetch a specific team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug

begin
  #Fetch a specific team
  result = api_instance.show_team(team_id)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->show_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> Team update_team(team_id, team)

Update a specific team

### Example

```ruby
# load the gem
require 'gopad'

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team UUID or slug
team = Gopad::Team.new # Team | The team data to update

begin
  #Update a specific team
  result = api_instance.update_team(team_id, team)
  p result
rescue Gopad::ApiError => e
  puts "Exception when calling TeamApi->update_team: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **String**| A team UUID or slug | 
 **team** | [**Team**](Team.md)| The team data to update | 

### Return type

[**Team**](Team.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

