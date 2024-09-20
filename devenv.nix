{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = with pkgs;
    [
      hugo
      go
    ]
    ++ lib.optional stdenv.isDarwin pngpaste;

  pre-commit.hooks = {
    actionlint.enable = true;
    markdownlint.enable = true;
  };
}
