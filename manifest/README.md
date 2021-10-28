# What's in a manifest?

An `exo.hcl` file contains project configuration and component definitions. It
specifies how Exo orchestrates your development environment.

The `.hcl` file extension refers to the [Hashicorp Configuration Language](https://github.com/hashicorp/hcl).

# Manifest Location

Exo expects one `exo.hcl` at the root of each workspace. It is intended to be
checked in to version control along with your project source.

# Template `exo.hcl`

```hcl
exo = "0.1"

components {

  process "web" {
    program = "./run-web-server"
  }

  # ...

}
```

# Blocks

## Top-Level

The top-level of an `exo.hcl` file forms the body of an implicit manifest block
with the following attributes and sub-blocks.

| Attribute | Description                                                                    |          |
| --------- | ------------------------------------------------------------------------------ | -------- |
| `exo`     | Specifies a manifest format version constraint. It has the form `major.minor`. | Required |

| Block                               | Description                                        |
| ----------------------------------- | -------------------------------------------------- |
| [`environment`](#environment-block) | Supplies environment variables used by components. |
| [`components`](#components-block)   | Defines components.                                |

## `environment` Block

Placement: [top-level](#top-level)

The `environment` block supplies environment variables for use by component
definitions in the project. For simple key/value string pairs, variables can be
specified as attributes in the `environment` block. For more complex cases,
including defining secrets, variables are specified by child blocks within the
`environment` block. Later children blocks shadow earlier blocks, which shadow
the `environment` block-level attributes.

| Attribute             | Description                                     |     |
| --------------------- | ----------------------------------------------- | --- |
| `/[a-z_][a-z0-9_]*/i` | Individual environment variable key/value pair. |

| Block                       | Description                                                   |
| --------------------------- | ------------------------------------------------------------- |
| [`secrets`](#secrets-block) | Specifies a secrets value to be merged in to the environment. |

## `secrets` Block

Placement: [`environment`](#environment-block)

```hcl
secrets {
  source = "https://example.com/secrets/vault"
}
```

| Attribute | Description               |
| --------- | ------------------------- |
| `source`  | URL of the secrets vault. |

Visit [https://secrets.deref.io/](https://secrets.deref.io/) to create a
secrets vault.

## `components` Block

Placement: [top-level](#top-level)

The `components` block acts as a container for individual `component` blocks.
Each component has a unique name across the manifest.

Components may come in the form of [`component` blocks](#component-block) or as
macro-blocks named after the type of component. For details regarding specific
component types and their respective syntax, see [Components](../components).

| Block                           | Description                         |
| ------------------------------- | ----------------------------------- |
| [`component`](#component-block) | Long form for defining a component. |
| `/[a-z][a-z0-9_]*/`             | Component definiton macro.          |

## `component` Block

Placement: [`components`](#components-block)

Each `component` block specifies an individual component.

Generally, it is less verbose to use type-specific component macros. For
details regarding component types and their respective syntax, see
[Components](../components).

| Label | Description                                                        |
| ----- | ------------------------------------------------------------------ |
| Name  | Name of this component. Must match `/[a-z_]([a-z0-9-]*[a-z0-9])/`. |

| Attribute    | Description                                                                                       |                                                            |
| ------------ | ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| `type`       | Type name for the component to be constructed.                                                    | Required                                                   |
| `spec`       | String that defines the component. The format of a `spec` is dependent on the component's `type`. | Required if a [`spec` Block](#spec-block) is not provided. |
| `depends_on` | An array of names of other components which this component depends upon.                          |                                                            |

## `spec` Block

Placement: [`component`](#component-block)

Alternative to the `spec` attribute. Specifies a component's configuration in
HCL format, instead of as an arbitrary string. The contents of a `spec` block
are entirely dependent on the `type` of a component.

# Resources

- [HCL Syntax Specification](https://github.com/hashicorp/hcl/blob/e84201c45df4fce4e9dfaba9e8aaa8730d24dd25/hclsyntax/spec.md)
