{ pkgs, ... }:

let
  HOME_PATH = builtins.getEnv "HOME";
in
with pkgs; {

  home = {
    packages = (import ./nix-modules/packages.nix) pkgs;
    file = (import ./nix-modules/file.nix) { };
  };

  nixpkgs.overlays = import ./nix-modules/overlays.nix;
  xdg = (import ./nix-modules/xdg.nix) pkgs;
  programs = (import ./nix-modules/programs.nix) { pkgs = pkgs; builtins = builtins; };
  services = (import ./nix-modules/services.nix) { };
}
