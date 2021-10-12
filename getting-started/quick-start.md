# Installing exo

## Install

The easiest way to install exo is to run the following command:

```bash
curl -sL https://exo.deref.io/install | bash
```

For alternative installation methods, see [Installing exo](getting-started/install/install.md).

## Create a Workspace

In your terminal, navigate to your project's root directory and initialize it:

```bash
exo init
```

If this directory is empty or otherwise does not contain an exo manifest, one
will be created for you. Otherwise, the existing manifest will be imported
automatically.

## Migrate to Exo

Is your project is already using [Procfiles](manifest/migrating/procfiles.md)
or [Docker Compose](./manifest/migrating/compose.md)?

If so, Exo is compatible with your existing configuration!

The initialization process from the previous step will automatically import
compatible configuration and launch the specified processes, containers, and
other components in the background. You can proceed to the next step.

Alternatively, to use exo as a drop-in replacement for `foreman` or
`docker-compose up`, simply run:

```bash
exo run
```

The `run` command starts all of the components in the project and tails their
logs. A run can be stopped with the standard `^c` terminal interrupt sequence.

## Using Exo

Exo supports both command line and graphical interfaces for most options.
Development logs can be viewed either in the terminal or in your browser,
whatever your preference:

```bash
# Launch GUI in browser.
exo gui

# Tail logs in terminal
exo logs
```

## Cleaning Up

When you're ready to work on something else, you may wish to shutdown all
processes in your workspace:

```bash
exo stop
```

Or if you're done with this project forever, you can completely eliminate the
exo state:

```bash
exo workspace destroy
```

Note that this will not affect your code files on disk.

## Next Steps

* Watch some [videos](./videos.md)
* Explore the [command line interface](./cli.md)
* Familiarize yourself with the [graphical user interface](./gui.md)
* Consult the [manifest reference](./manifest)
* Study exo's core [concepts](./concepts.md)
