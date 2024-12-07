{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.dart
  ];

  shellHook = ''
    echo $PATH | tr ':' '\n' | grep dart
  '';
}
