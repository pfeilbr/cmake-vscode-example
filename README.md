# cmake-vscode-example

* example project using cmake
    * uses cmake `Find*.cmake` files in [`cmake/`](cmake/)
* uses [Nix](https://nixos.org/nixpkgs/manual/) package manager for managing development dependencies
    * see [`default.nix`](default.nix)

## Prerequisites

* [Nix](https://nixos.org/nix/download.html)

## Build and Run
```sh
git clone
cd cmake-vscode-example

# install dependencies if needed and setup shell
nix-shell

mkdir build
cd build
cmake ..
make

# run
./example
```