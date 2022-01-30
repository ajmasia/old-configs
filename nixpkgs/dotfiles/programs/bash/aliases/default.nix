import ./git.nix //
  import ./projects.nix //
{
  # System
  sce = "sudo lvim /etc/nixos/configuration.nix";
  she = "sudo lvim /etc/nixos/hardware-configuration.nix";
  scs = "sudo nixos-rebuild switch";
  logout = "kill -9 -1";

  # User config
  hm = "home-manager";
  hmd = "cd ~/repos/configs";
  hme = "lvim ~/repos/configs/nixpkgs/home.nix";
  hms = "home-manager switch";
  hmsv = "home-manager switch -v";

  # Shell
  c = "clear";
  cat = "bat";
  ls = "exa";
  tree = "l --tree --color=always";
  gtree = "tree -l --git | less -r";
}
