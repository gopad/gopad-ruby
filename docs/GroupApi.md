# Gopad::GroupApi

All URIs are relative to *https://try.gopad.eu/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_group_to_user**](GroupApi.md#attach_group_to_user) | **POST** /groups/{group_id}/users | Attach a user to group |
| [**create_group**](GroupApi.md#create_group) | **POST** /groups | Create a new group |
| [**delete_group**](GroupApi.md#delete_group) | **DELETE** /groups/{group_id} | Delete a specific group |
| [**delete_group_from_user**](GroupApi.md#delete_group_from_user) | **DELETE** /groups/{group_id}/users | Unlink a user from group |
| [**list_group_users**](GroupApi.md#list_group_users) | **GET** /groups/{group_id}/users | Fetch all users attached to group |
| [**list_groups**](GroupApi.md#list_groups) | **GET** /groups | Fetch all available groups |
| [**permit_group_user**](GroupApi.md#permit_group_user) | **PUT** /groups/{group_id}/users | Update user perms for group |
| [**show_group**](GroupApi.md#show_group) | **GET** /groups/{group_id} | Fetch a specific group |
| [**update_group**](GroupApi.md#update_group) | **PUT** /groups/{group_id} | Update a specific group |


## attach_group_to_user

> <Notification> attach_group_to_user(group_id, permit_group_user_request)

Attach a user to group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_user_request = Gopad::PermitGroupUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitGroupUserRequest | The group user data to permit

begin
  # Attach a user to group
  result = api_instance.attach_group_to_user(group_id, permit_group_user_request)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_user: #{e}"
end
```

#### Using the attach_group_to_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> attach_group_to_user_with_http_info(group_id, permit_group_user_request)

```ruby
begin
  # Attach a user to group
  data, status_code, headers = api_instance.attach_group_to_user_with_http_info(group_id, permit_group_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->attach_group_to_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_user_request** | [**PermitGroupUserRequest**](PermitGroupUserRequest.md) | The group user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> <Group> create_group(create_group_request)

Create a new group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
create_group_request = Gopad::CreateGroupRequest.new # CreateGroupRequest | The group data to create

begin
  # Create a new group
  result = api_instance.create_group(create_group_request)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> create_group_with_http_info(create_group_request)

```ruby
begin
  # Create a new group
  data, status_code, headers = api_instance.create_group_with_http_info(create_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_group_request** | [**CreateGroupRequest**](CreateGroupRequest.md) | The group data to create |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> <Notification> delete_group(group_id)

Delete a specific group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug

begin
  # Delete a specific group
  result = api_instance.delete_group(group_id)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_with_http_info(group_id)

```ruby
begin
  # Delete a specific group
  data, status_code, headers = api_instance.delete_group_with_http_info(group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_group_from_user

> <Notification> delete_group_from_user(group_id, delete_group_from_user_request)

Unlink a user from group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
delete_group_from_user_request = Gopad::DeleteGroupFromUserRequest.new({user: 'user_example'}) # DeleteGroupFromUserRequest | The group user data to unlink

begin
  # Unlink a user from group
  result = api_instance.delete_group_from_user(group_id, delete_group_from_user_request)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_user: #{e}"
end
```

#### Using the delete_group_from_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> delete_group_from_user_with_http_info(group_id, delete_group_from_user_request)

```ruby
begin
  # Unlink a user from group
  data, status_code, headers = api_instance.delete_group_from_user_with_http_info(group_id, delete_group_from_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->delete_group_from_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **delete_group_from_user_request** | [**DeleteGroupFromUserRequest**](DeleteGroupFromUserRequest.md) | The group user data to unlink |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_group_users

> <InlineObject2> list_group_users(group_id, opts)

Fetch all users attached to group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all users attached to group
  result = api_instance.list_group_users(group_id, opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->list_group_users: #{e}"
end
```

#### Using the list_group_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject2>, Integer, Hash)> list_group_users_with_http_info(group_id, opts)

```ruby
begin
  # Fetch all users attached to group
  data, status_code, headers = api_instance.list_group_users_with_http_info(group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject2>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->list_group_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject2**](InlineObject2.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> <InlineObject1> list_groups(opts)

Fetch all available groups

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
opts = {
  search: 'search_example', # String | Search query
  sort: 'sort_example', # String | Sorting column
  order: 'asc', # String | Sorting order
  limit: 100, # Integer | Paging limit
  offset: 0 # Integer | Paging offset
}

begin
  # Fetch all available groups
  result = api_instance.list_groups(opts)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject1>, Integer, Hash)> list_groups_with_http_info(opts)

```ruby
begin
  # Fetch all available groups
  data, status_code, headers = api_instance.list_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject1>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->list_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Search query | [optional] |
| **sort** | **String** | Sorting column | [optional] |
| **order** | **String** | Sorting order | [optional][default to &#39;asc&#39;] |
| **limit** | **Integer** | Paging limit | [optional][default to 100] |
| **offset** | **Integer** | Paging offset | [optional][default to 0] |

### Return type

[**InlineObject1**](InlineObject1.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## permit_group_user

> <Notification> permit_group_user(group_id, permit_group_user_request)

Update user perms for group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
permit_group_user_request = Gopad::PermitGroupUserRequest.new({user: 'user_example', perm: 'perm_example'}) # PermitGroupUserRequest | The group user data to permit

begin
  # Update user perms for group
  result = api_instance.permit_group_user(group_id, permit_group_user_request)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->permit_group_user: #{e}"
end
```

#### Using the permit_group_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notification>, Integer, Hash)> permit_group_user_with_http_info(group_id, permit_group_user_request)

```ruby
begin
  # Update user perms for group
  data, status_code, headers = api_instance.permit_group_user_with_http_info(group_id, permit_group_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notification>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->permit_group_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **permit_group_user_request** | [**PermitGroupUserRequest**](PermitGroupUserRequest.md) | The group user data to permit |  |

### Return type

[**Notification**](Notification.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## show_group

> <Group> show_group(group_id)

Fetch a specific group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug

begin
  # Fetch a specific group
  result = api_instance.show_group(group_id)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->show_group: #{e}"
end
```

#### Using the show_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> show_group_with_http_info(group_id)

```ruby
begin
  # Fetch a specific group
  data, status_code, headers = api_instance.show_group_with_http_info(group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->show_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> <Group> update_group(group_id, create_group_request)

Update a specific group

### Examples

```ruby
require 'time'
require 'gopad'
# setup authorization
Gopad.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: Header
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'

  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Gopad::GroupApi.new
group_id = '"group-1"' # String | A group identifier or slug
create_group_request = Gopad::CreateGroupRequest.new # CreateGroupRequest | The group data to update

begin
  # Update a specific group
  result = api_instance.update_group(group_id, create_group_request)
  p result
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->update_group: #{e}"
end
```

#### Using the update_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> update_group_with_http_info(group_id, create_group_request)

```ruby
begin
  # Update a specific group
  data, status_code, headers = api_instance.update_group_with_http_info(group_id, create_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue Gopad::ApiError => e
  puts "Error when calling GroupApi->update_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | A group identifier or slug |  |
| **create_group_request** | [**CreateGroupRequest**](CreateGroupRequest.md) | The group data to update |  |

### Return type

[**Group**](Group.md)

### Authorization

[Basic](../README.md#Basic), [Header](../README.md#Header), [Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

