# Command Line Interface

## Workflow

For typical projects with a Procfile or compose yaml file, `exo gui` will do the right thing on first use automatically. You can manage processes and view logs in your browser.

If you've got multiple manifests (such as different manifests for each of dev and test), or if you generally prefer command line interfaces, a typical workflow looks something like this:

```bash
# Initialize a new workspace in the current directory.
exo workspace init

# Apply a manifest to start it's processes.
exo apply ./Procfile.dev

# Tail logs in your terminal.
exo logs

# Or only specific processes.
exo logs api worker

# Manipulate individual processes.
exo stop worker
exo restart api

# Switch to a different configuration by applying a different manifest.
exo apply ./compose.test.yaml

# Shutdown everything and cleanup state when you're done.
exo workspace destroy

# If you're very, very done and don't want exo running anymore.
exo exit
```

## More Resources

* Builtin documentation: Run `exo help` or try passing `--help` to any subcommand.
* [Videos](resources/videos.md)
