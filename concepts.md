# Concepts

## Workspaces

A mapping of filesystem paths. Most projects have one workspace rooted at the same directory as their checked out code. This is how `exo` knows what project you're working on based on your current working directory.

If run in an unmapped directory, `exo gui` will offer to create a workspace for you. You can determine the current workspace with `exo workspace`, initialize a new one with `exo workspace init` or delete the current workspace with `exo workspace destroy`.

## Manifests
A file describing all of the components in a project. Presently, the supported manifest types are [procfiles](manifest/migrating/procfiles.md) and [compose files](manifest/migrating/compose.md). Use `exo apply ./path/to/manifest` whenever your manifest changes to make your workspace match. Components will be added or removed accordingly.

## Components

An abstract definition of resources managed by exo. Presently, the only supported type of components are _processes_. Each component has a unique name within a workspace. Components are manipulated by applying manifests (see below), or with CRUD operations such as `exo ls`, `exo new`, and `exo rm`.

## Resources

TODO: Explain relationship between components and resources.

## Processes

A running program. Presently, only host-machine processes are supported. Docker containers will be supported in the future.

Assuming you have a process named `myapp`, here are some useful management commands:

```bash
# List processes.
exo ps

# Control process state.
exo start myapp
exo restart myapp
exo stop myapp
```

## Daemon

A background service that manages components and supervises processes. Most commands start this service automatically. You can start it explicitly with `exo daemon` and terminate it with `exo exit`.
