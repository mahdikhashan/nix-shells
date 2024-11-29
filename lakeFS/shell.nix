{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.gnumake
    pkgs.go
    pkgs.nodejs_22
    pkgs.maven
    pkgs.zulu8
    pkgs.python3Packages.virtualenv
  ];

  shellHook = ''
    if [ ! -d "venv" ]; then
      virtualenv venv
    fi
    source venv/bin/activate
    pip install lakefs-sdk==1.43.0 python-on-whales==0.62.0 tenacity==8.2.2
  '';
}
