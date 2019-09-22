
let
  nixpkgs =
    builtins.fetchTarball {
      # nixpkgs-19.09 as of 2019/09/22.
      url = "https://github.com/NixOS/nixpkgs/archive/47d65314df389ef547ac75e7a9b63f72ec37c3e9.tar.gz";
      sha256 = "0jkmx3x96qpywpvyjfh2zp7gx84pzrn8q21pd0l1bqvnhqplhcyh";
    };

in

with (import nixpkgs {});

mkShell {
  nativeBuildInputs = [
    electron_6
    yarn
  ];
}
