# Gopad::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **fullname** | **String** |  | [optional] |
| **profile** | **String** |  | [optional] |
| **admin** | **Boolean** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **auths** | [**Array&lt;UserAuth&gt;**](UserAuth.md) |  | [optional][readonly] |
| **teams** | [**Array&lt;UserTeam&gt;**](UserTeam.md) |  | [optional][readonly] |

## Example

```ruby
require 'gopad'

instance = Gopad::User.new(
  id: null,
  username: null,
  password: null,
  email: null,
  fullname: null,
  profile: null,
  admin: null,
  active: null,
  created_at: null,
  updated_at: null,
  auths: null,
  teams: null
)
```

