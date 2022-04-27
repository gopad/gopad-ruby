# Gopad::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **slug** | **String** |  | [optional] |
| **username** | **String** |  |  |
| **password** | **String** |  | [optional] |
| **email** | **String** |  |  |
| **admin** | **Boolean** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'gopad'

instance = Gopad::User.new(
  id: null,
  slug: null,
  username: null,
  password: null,
  email: null,
  admin: null,
  active: null,
  created_at: null,
  updated_at: null
)
```

