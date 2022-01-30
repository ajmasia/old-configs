{ pkgs, ... }:
let
  unstablePackages = import <nixpkgs-unstable> { };
in
with pkgs; [
  # Utils
  exa
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
  sxiv
  bpytop
  jq

  # fonts
  # font-awesome

  # Tile window manager
  sxhkd
  polybar
  picom
  feh
  rofi

  # Media
  spotify
  musescore
  cava
  kazam

  # Browsers
  chromium
  google-chrome
  brave

  # Comunications
  tdesktop
  discord
  slack

  # Productivity
  synology-drive
  todoist-electron
  todoist
  bitwarden
  obsidian
  syncthing
  pdfarranger
  flameshot
  xcolor
  gimp
  inkscape
  libreoffice
  calibre

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
