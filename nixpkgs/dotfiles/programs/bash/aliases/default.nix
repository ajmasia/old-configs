import ./git.nix //
{
  # System
  sce = "sudo lvim /etc/nixos/configuration.nix";
  she = "sudo lvim /etc/nixos/hardware-configuration.nix";
  scs = "sudo nixos-rebuild switch";

  # User config
  hm = "home-manager";
  uc = "cd ~/repos/configs";
  uce = "lvim ~/repos/configs/nixpkgs/home.nix";
  ucs = "home-manager switch";
  ucvs = "home-manager switch -v";

  # Shell
  c = "clear";
  cat = "bat";
  ls = "exa";
  tree = "l --tree --color=always";
  gtree = "tree -l --git | less -r";
}
