> :whale: container for patternplate

# patternplate-container

[![Greenkeeper badge](https://badges.greenkeeper.io/sinnerschrader/patternplate-container.svg)](https://greenkeeper.io/)

## Installation

Grab it from docker hub

```shell
docker pull patternplate:1.0.0
```

## Usage

A patternplate setup is bootstrapped at `/opt/patterns`.
Place your project files there via docker cp.

`patternplate` is available as executable via `npm -g`.

```shell
# Run patternplate server in /opts/patterns
docker run -t -i patternplate:1.0.0

# Build the static interface
docker run -t -i patternplate:1.0.0 patternplate build-interface
```

## Extending

```Dockerfile
FROM patternplate:1.0.0

CP patterns patterns
CP configuration configuration
```

## Tags

patternplate-container tags strictly follow `patternplate` versions.

* 1.0.0
* 1.0.1
* 1.0.2
* 1.0.3

## Building

```
docker build -t patternplate:1.0.0 Dockerfile
docker build --build-arg version=1.0.1 Dockerfile
```

---
Built by (c) marionebl. Released under the MIT license.
