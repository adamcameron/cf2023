# CF2023 beta test environment

This is the config for a minimal(-ish) Docker container running CF2023.

It also includes a MariaDB container with a minimal test DB.

I've installed vim in the containers as well as I never don't need it,
so why dick around not having it?

I add bash aliases for `ll` and `cls` as they're handy
(sorry the latter is cos I'm a perennial Windows user. Shrug).

I've exposed the ColdFusion container's port `8500` as `8523` on the host,
and the MariaDB's `3306`` on `3323`.

I map the `src` directory of this project
to the `/app/src` directory in the container.
The webroot is `/app`. So you ought to be able to browse to
`http://localhost:8523/src/dumpServer.cfm` to verify the install.
And then, like, chuck other code in there.

I expose the log dir `/opt/coldfusion/cfusion/logs` as `var/log/coldfusion/`:
I always find it helpful to have the logs right there to look at
when I'm testing new stuff.

I copy the MySQL community driver into the container so one can make
MySQL DSNs without fussing.

I've installed the CF debugger module as otherwise one can't switch on
Robust Exception Handling, which is a hard requirement for dev, I think.

There's a shell script `docker/rebuildContainer.sh`.
Use this to (re)build the containers:

```
./rebuildContainers.sh [cf admin password] [DB root password] [DB user password]
```

EG:

```
~/src/cf2023/docker$ ./rebuildContainers.sh 12345 123 1234
```

All it does is remove any existing containers, rebuild them, and brings them up.
