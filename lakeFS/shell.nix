{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    buildInputs = [
        pkgs.gnumake
        pkgs.go
        pkgs.nodejs_22
        pkgs.maven
        pkgs.zulu8
    ];
}
