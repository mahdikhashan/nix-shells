{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.go
  ];

  shellHook = ''
    go install golang.org/x/lint/golint@latest
    go version
  '';
}
