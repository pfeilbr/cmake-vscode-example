with import <nixpkgs> {}; {
    cmakeVscodeExampleEnv = stdenv.mkDerivation {
        name = "cmake-vscode-example-env";
        buildInputs = [ stdenv
                        gcc
                        cmake
                        valgrind
                        sqlite
                        sfml
                        SDL2
                        # glfw
                      ];
    };
}
