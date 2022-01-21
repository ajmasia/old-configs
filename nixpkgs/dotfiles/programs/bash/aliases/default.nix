import ./git.nix //
{
  # System
  sce = "sudo lvim /etc/nixos/configuration.nix";
  scs = "sudo nixos-rebuild switch";
  sc = "cd ~/repos/configs/";

  # Home manager
  hm = "home-manager";
  hme = "lvim ~/.config/nixpkgs/home.nix";
  hms = "home-manager switch";
  hmvs = "home-manager switch -v";

  # Shell
  c = "clear";
  cat = "bat";
  ls = "exa";
  tree = "l --tree --color=always";
  gtree = "tree -l --git | less -r";
}
