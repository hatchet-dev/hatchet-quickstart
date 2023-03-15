## Hatchet Quickstart

This repository contains a set of base configuration files to get a local Hatchet instance up and running. It assumes that you already have `hatchet`, `hatchet-server`, and `hatchet-admin` installed. For installation instructions, see [here](https://docs.hatchet.run).

### Getting Started

Generate the server configuration files via:

```sh
hatchet-admin quickstart --config ./config/
```

This will place the server configuration files in `./generated`. Then, run the server via:

```sh
hatchet-server --config ./generated/
```

**This will start a Hatchet instance on port `8080`.**

### Options

To change the port or address that the Hatchet runs on, navigate to `./config/server.yaml` and change `runtime.port`.

To use a different set of config files:

```sh
hatchet-admin quickstart --config ./config-file-dir
```

To use a different static directory for serving files:

```
hatchet-admin quickstart --static-dir ./my/static/dir
```
