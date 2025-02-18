# Gopad::UpdateUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **fullname** | **String** |  | [optional] |
| **admin** | **Boolean** |  | [optional] |
| **active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'gopad'

instance = Gopad::UpdateUserRequest.new(
  username: null,
  password: null,
  email: null,
  fullname: null,
  admin: null,
  active: null
)
```

