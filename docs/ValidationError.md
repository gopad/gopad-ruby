# Gopad::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** |  |  |
| **message** | **String** |  |  |
| **errors** | [**Array&lt;ValidationErrorErrors&gt;**](ValidationErrorErrors.md) |  | [optional] |

## Example

```ruby
require 'gopad'

instance = Gopad::ValidationError.new(
  status: null,
  message: null,
  errors: null
)
```

