[⬅️ Back to feature collection](https://github.com/devcontainers-community/features/)

# CMake Dev Container Feature

🍰 Installs the CMake build tool

<p align=center>
  <img width="500" src="https://i.imgur.com/hwiPvLS.png" />
</p>

> CMake is an open-source, cross-platform family of tools designed to build,
> test and package software. CMake is used to control the software compilation
> process using simple platform and compiler independent configuration files,
> and generate native makefiles and workspaces that can be used in the compiler
> environment of your choice. The suite of CMake tools were created by Kitware
> in response to the need for a powerful, cross-platform build environment for
> open-source projects such as ITK and VTK.

&mdash; [CMake](https://cmake.org/)

This Dev Container Feature will install CMake using the official installer `.sh`
script into the `/usr/local` folder. This should place it on your `$PATH` no
problem! 🚀 It also installs the [CMake VS Code extension].

## Usage

![Codespaces](https://img.shields.io/static/v1?style=for-the-badge&message=Codespaces&color=181717&logo=GitHub&logoColor=FFFFFF&label=)
![Devcontainers](https://img.shields.io/static/v1?style=for-the-badge&message=Devcontainers&color=2496ED&logo=Docker&logoColor=FFFFFF&label=)

To use this feature, all you need to do is add it to your `devcontainer.json`
like this:

```jsonc
// devcontainer.json
{
  "features": {
    "ghcr.io/devcontainers-community/features/cmake": {}
  }
}
```

❓ Don't know what this ☝ means? Check out [this VS Code blog post].

### Options

- **`version`:** Choose a specific version to install. The default is `latest`.
  If specified, this should be a full `X.Y.Z` version number.

<!-- prettier-ignore-start -->
[this vs code blog post]: https://code.visualstudio.com/blogs/2022/09/15/dev-container-features
[cmake vs code extension]: https://marketplace.visualstudio.com/items?itemName=twxs.cmake
<!-- prettier-ignore-end -->
