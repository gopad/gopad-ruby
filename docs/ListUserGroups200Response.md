# Gopad::ListUserGroups200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  |  |
| **limit** | **Integer** |  |  |
| **offset** | **Integer** |  |  |
| **user** | [**User**](User.md) |  | [optional] |
| **groups** | [**Array&lt;UserGroup&gt;**](UserGroup.md) |  |  |

## Example

```ruby
require 'gopad'

instance = Gopad::ListUserGroups200Response.new(
  total: null,
  limit: null,
  offset: null,
  user: null,
  groups: null
)
```

