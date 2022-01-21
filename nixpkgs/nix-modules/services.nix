{ ... }:

{
  dunst = {
    enable = true;
    settings = import ../dotfiles/services/dunst.nix;
  };

  syncthing = {
    enable = true;
  };
}
