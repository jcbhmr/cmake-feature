# CMake Dev Container Feature

🍰 Installs the CMake build tool

<div align="center">

<p>
  <img width="600" src="https://i.imgur.com/hwiPvLS.png" />
</p>

<!-- prettier-ignore -->
[Docs](https://devcontainers.community/features-cmake/)
| [GitHub](https://github.com/devcontainers-community/features-cmake)
| [Feature collection](https://devcontainers.community/features/)

</div>

> CMake is an open-source, cross-platform family of tools designed to build, test and package software. CMake is used to control the software compilation process using simple platform and compiler independent configuration files, and generate native makefiles and workspaces that can be used in the compiler environment of your choice. The suite of CMake tools were created by Kitware in response to the need for a powerful, cross-platform build environment for open-source projects such as ITK and VTK.

&mdash; [CMake](https://cmake.org/)

## Usage

```jsonc
// devcontainer.json
{
  "features": {
    "ghcr.io/devcontainers-community/features/cmake:1": {}
  }
}
```

### Options

- **`version`:** Choose a specific version to install. The default is 'latest'. If specified, this should be a full 'X.Y.Z' version number.
