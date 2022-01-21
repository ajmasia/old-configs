{ pkgs, ... }:
let
  unstablePackages = import <nixpkgs-unstable> { };
in
with pkgs; [
  # Utils
  exa
  bat
  fzf
  fzy
  htop
  xclip
  ranger
  file
  ripgrep
  tmux
  tmuxp
  tldr
  killall
  brightnessctl
  pamix
  pavucontrol
  gnumake
  unzip
  dunst
  libnotify
  xsel

  # Tile window manager
  sxhkd
  polybar
  picom
  feh
  rofi

  # Media
  spotify
  musescore

  # Browsers
  chromium
  google-chrome
  opera

  # Comunications
  tdesktop
  discord
  slack

  # Productivity
  synology-drive
  todoist-electron
  bitwarden
  obsidian
  syncthing
  pdfarranger
  flameshot
  xcolor

  # Development
  docker-compose
  gcc11
  vscode
  unstablePackages.neovim
  python3
  nodejs-16_x
  nodePackages.node2nix
  (emacsWithPackages (epkgs: [ epkgs.emacsql-sqlite ]))
  sumneko-lua-language-server
  cargo
  stylua
  selene
  black
  python39Packages.flake8

  # Node Packages
  nodePackages.neovim
  nodePackages.eslint
  nodePackages.prettier
]
