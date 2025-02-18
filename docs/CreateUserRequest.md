# Gopad::CreateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **fullname** | **String** |  | [optional] |
| **admin** | **Boolean** |  | [optional][default to false] |
| **active** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'gopad'

instance = Gopad::CreateUserRequest.new(
  username: null,
  password: null,
  email: null,
  fullname: null,
  admin: null,
  active: null
)
```

