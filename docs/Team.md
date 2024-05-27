# Gopad::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **slug** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **updated_at** | **Time** |  | [optional][readonly] |
| **users** | [**Array&lt;UserTeam&gt;**](UserTeam.md) |  | [optional][readonly] |

## Example

```ruby
require 'gopad'

instance = Gopad::Team.new(
  id: null,
  slug: null,
  name: null,
  created_at: null,
  updated_at: null,
  users: null
)
```

