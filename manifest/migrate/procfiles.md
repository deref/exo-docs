# Procfiles

Procfiles are a simple manifest format that describes processes. Here's an example:

```
web: node run dev
api: go run ./server
```

Each line contains a process name and a command to execute separated by a colon and some whitespace.

When a process is started, a unique `PORT` environment variable is supplied to each.

Most procfile runners, Exo included, have a single command to start all processes in the procfile, then tail their logs until interrupted:

```bash
exo run Procfile
```

## Video

testing

{% embed url="https://youtu.be/WPaLj9R8rXE" %}

[![Procfiles](img/video-placeholder.png)](https://youtu.be/WPaLj9R8rXE)

## References

* [The New Heroku](https://blog.heroku.com/the\_new\_heroku\_1\_process\_model\_procfile) - Introduction of Procfiles from 2011.
* [Foreman](https://github.com/ddollar/foreman) - The original Procfile runner.
