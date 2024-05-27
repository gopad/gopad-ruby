# Gopad::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **errors** | [**Array&lt;Validation&gt;**](Validation.md) |  | [optional] |

## Example

```ruby
require 'gopad'

instance = Gopad::Notification.new(
  status: null,
  message: null,
  errors: null
)
```

