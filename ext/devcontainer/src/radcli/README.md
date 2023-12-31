# Radius CLI

Installs the [Radius CLI](https://github.com/radius-project/radius) along with needed dependencies.

## Example Usage - Install latest release

```json
"features": {
    "ghcr.io/devcontainers/lechenrc77/radiuscli:latest": {
        "version": "latest"
    }
}
```

## Example Usage - Install explicit version

```json
"features": {
    "ghcr.io/devcontainers/lechenrc77/radiuscli:latest": {
        "version": "0.27.1"
    }
}
```

## Example Usage - Install edge release

```json
"features": {
    "ghcr.io/devcontainers/lechnerc77/radiuscli:latest": {
        "version": "edge"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Select or enter a Radius CLI version. Available versions are "latest" and "edge" | string | latest |
