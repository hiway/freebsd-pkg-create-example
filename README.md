# FreeBSD pkg-create example

If you find yourself wanting to create a FreeBSD package for a shell script,
here's a minimal example of how to go about it:

- The app/program is the `src/hello.sh` script, 
  which will be installed as `/usr/local/bin/hello`
- It uses an environment variable configured in `hello.env` 
  either in current directry or at `/usr/local/etc/hello.env`
- Package metada is configured in `pkg/manifest.ucl`
- Permissions/mode for files are set up via `pkg/pkg-plist`
- `create-package.sh` copies the script and config to `pkg/stage` and runs `pkg create`
- The created package `hello-1.0.pkg` can be installed with `pkg install -U -y hello-1.0.pkg`

## Further reading:

- https://github.com/freebsd/pkg/
- https://man.freebsd.org/cgi/man.cgi?pkg-create(8)
- https://docs.freebsd.org/en/books/porters-handbook/plist/