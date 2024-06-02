# Gopad::TeamApi

All URIs are relative to *https://try.gopad.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_team_to_user**](TeamApi.md#attach_team_to_user) | **POST** /teams/{team_id}/users | Assign a user to team |
| [**create_team**](TeamApi.md#create_team) | **POST** /teams | Create a new team |
| [**delete_team**](TeamApi.md#delete_team) | **DELETE** /teams/{team_id} | Delete a specific team |
| [**delete_team_from_user**](TeamApi.md#delete_team_from_user) | **DELETE** /teams/{team_id}/users | Remove a user from team |
| [**list_team_users**](TeamApi.md#list_team_users) | **GET** /teams/{team_id}/users | Fetch all users assigned to team |
| [**list_teams**](TeamApi.md#list_teams) | **GET** /teams | Fetch all available teams |
| [**permit_team_user**](TeamApi.md#permit_team_user) | **PUT** /teams/{team_id}/users | Update user perms for team |
| [**show_team**](TeamApi.md#show_team) | **GET** /teams/{team_id} | Fetch a specific team |
| [**update_team**](TeamApi.md#update_team) | **PUT** /teams/{team_id} | Update a specific team |


## attach_team_to_user

> <Notification> attach_team_to_user(team_id, team_user_params)

Assign a user to team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug
team_user_params = Gopad::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to attach

begin
  # Assign a user to team
  result = api_instance.attach_team_to_user(team_id, team_user_params)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_user: #{e}"
end
```

#### Using the attach_team_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_team_to_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Assign a user to team
  data, status_code, headers = api_instance.attach_team_to_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->attach_team_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to attach |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_team

> <Team> create_team(team)

Create a new team

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

api_instance = Gopad::TeamApi.new
team = Gopad::Team.new # Team | The team data to create

begin
  # Create a new team
  result = api_instance.create_team(team)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->create_team: #{e}"
end
```

#### Using the create_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> create_team_with_http_info(team)

```ruby
begin
  # Create a new team
  data, status_code, headers = api_instance.create_team_with_http_info(team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->create_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team** | [**Team**](Team.md) | The team data to create |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> <Notification> delete_team(team_id)

Delete a specific team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug

begin
  # Delete a specific team
  result = api_instance.delete_team(team_id)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->delete_team: #{e}"
end
```

#### Using the delete_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_with_http_info(team_id)

```ruby
begin
  # Delete a specific team
  data, status_code, headers = api_instance.delete_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_team_from_user

> <Notification> delete_team_from_user(team_id, team_user_params)

Remove a user from team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug
team_user_params = Gopad::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to delete

begin
  # Remove a user from team
  result = api_instance.delete_team_from_user(team_id, team_user_params)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user: #{e}"
end
```

#### Using the delete_team_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_team_from_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Remove a user from team
  data, status_code, headers = api_instance.delete_team_from_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->delete_team_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to delete |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_team_users

> <TeamUsers> list_team_users(team_id, opts)

Fetch all users assigned to team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'username', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users assigned to team
  result = api_instance.list_team_users(team_id, opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->list_team_users: #{e}"
end
```

#### Using the list_team_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TeamUsers>, Integer, Hash)> list_team_users_with_http_info(team_id, opts)

```ruby
begin
  # Fetch all users assigned to team
  data, status_code, headers = api_instance.list_team_users_with_http_info(team_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TeamUsers>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->list_team_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;username&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**TeamUsers**](TeamUsers.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <Teams> list_teams(opts)

Fetch all available teams

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

api_instance = Gopad::TeamApi.new
opts = {
  search: '"John Doe"', # String | Search query
  sort: 'slug', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available teams
  result = api_instance.list_teams(opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Teams>, Integer, Hash)> list_teams_with_http_info(opts)

```ruby
begin
  # Fetch all available teams
  data, status_code, headers = api_instance.list_teams_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Teams>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->list_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional][default to &#39;name&#39;] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**Teams**](Teams.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_team_user

> <Notification> permit_team_user(team_id, team_user_params)

Update user perms for team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug
team_user_params = Gopad::TeamUserParams.new({user: 'user_example'}) # TeamUserParams | The team user data to update

begin
  # Update user perms for team
  result = api_instance.permit_team_user(team_id, team_user_params)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->permit_team_user: #{e}"
end
```

#### Using the permit_team_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_team_user_with_http_info(team_id, team_user_params)

```ruby
begin
  # Update user perms for team
  data, status_code, headers = api_instance.permit_team_user_with_http_info(team_id, team_user_params)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->permit_team_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team_user_params** | [**TeamUserParams**](TeamUserParams.md) | The team user data to update |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_team

> <Team> show_team(team_id)

Fetch a specific team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug

begin
  # Fetch a specific team
  result = api_instance.show_team(team_id)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->show_team: #{e}"
end
```

#### Using the show_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> show_team_with_http_info(team_id)

```ruby
begin
  # Fetch a specific team
  data, status_code, headers = api_instance.show_team_with_http_info(team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->show_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> <Team> update_team(team_id, team)

Update a specific team

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

api_instance = Gopad::TeamApi.new
team_id = 'team_id_example' # String | A team identifier or slug
team = Gopad::Team.new # Team | The team data to update

begin
  # Update a specific team
  result = api_instance.update_team(team_id, team)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> update_team_with_http_info(team_id, team)

```ruby
begin
  # Update a specific team
  data, status_code, headers = api_instance.update_team_with_http_info(team_id, team)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Gopad::ApiError => e
  puts "Error when calling TeamApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **team_id** | **String** | A team identifier or slug |  |
| **team** | [**Team**](Team.md) | The team data to update |  |

### Return type

[**Team**](Team.md)

### Authorization

[Cookie](../README.md#Cookie), [Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

