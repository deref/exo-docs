# Container Component

A Docker container.

A `container` block may contain attributes as specified by [compose-spec's `services` element](https://github.com/compose-spec/compose-spec/blob/master/spec.md#services-top-level-element)

# Example

```hcl
container "example-container" {
  image = "example:latest"
}
