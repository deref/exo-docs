# Process Component

A typical process running directly on your host operating system.

| Attribute | Description |   |
| --------- | ----------- | - |
| `program` | Path to program to be excuted. | Required |
| `arguments` | Array of strings to be passed to `program` as command line arguments. | |
| `directory` | Path to use for working directory. Defaults to workspace root. | |

# Example

```hcl
process "example-process" {
  program = "./path/to/server"
  arguments = ["--port", "4000"]
}
```
