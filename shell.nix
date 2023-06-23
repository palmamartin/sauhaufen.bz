with (import <nixpkgs> {});
let
    unstable = import <nixos-unstable> {};
in
mkShell {
  name = "m";

  buildInputs = [
      unstable.nodePackages_latest.pnpm
      nodejs-18_x
  ];

  shellHook =
    ''
        export PATH=$PATH:$PWD/node_modules/.bin
    '';
}
