# Gopad::UserGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **group_id** | **String** |  |  |
| **group** | [**Group**](Group.md) |  | [optional] |
| **perm** | **String** |  | [optional][default to &#39;user&#39;] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'gopad'

instance = Gopad::UserGroup.new(
  user_id: null,
  user: null,
  group_id: null,
  group: null,
  perm: null,
  created_at: null,
  updated_at: null
)
```

