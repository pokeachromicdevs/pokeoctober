# guix build

the cool kids are using this to build from anywhere reasonable I'd thought I
give it a try. you don't have to, though.

(you may need to `export SSL_CERT_FILE=/etc/ssl/ca-bundle.pem`)

## Build the game

Prepend `DEBUG=1` to make the debug ROM.

```
guix time-machine -C channels.scm -- guix build -f package.scm -r built
```

## Open a shell with tools needed for development
```
cd ..; guix time-machine -C guix/channels.scm -- guix shell -C -D -f guix/package.scm
```