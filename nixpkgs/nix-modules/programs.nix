{ pkgs, builtins }:

let
  HOME_PATH = builtins.getEnv "HOME";
in
with builtins; {
  alacritty = {
    enable = true;

    settings = {
      background_opacity = 0.92;
      font = {
        size = 8;
        normal = {
          family = "Hack Nerd Font";
        };
      };
      colors = {
        primary = {
          background = "#282c34";
        };
      };
      window = {
        padding = { x = 3; y = 3; };
      };
    };
  };

  bash = {
    enable = true;
    historyIgnore = [ "ls" "cd" "exit" ];
    sessionVariables = {
      EDITOR = "vim";
    };
    initExtra = ''
      export PATH="$HOME/.local/bin:$PATH"
      export PATH="$HOME/.local/share/scripts:$PATH"

      # Load Environment Variables
      if [ -f .env ]; then
        export $(cat .env | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}' )
      fi
    '';
    profileExtra = ''
      setxkbmap -option caps:escape
      if [ -e /home/ajmasia/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ajmasia/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
    '';
    shellOptions = [ "histappend" "checkwinsize" "extglob" "globstar" "checkjobs" "autocd" ];
    shellAliases = import ../dotfiles/programs/bash/aliases;
  };

  # zsh = {
  #   enable = true;
  #   # historyIgnore = [ "ls" "cd" "exit" ];
  #   sessionVariables = {
  #     EDITOR = "vim";
  #   };
  #   initExtra = ''
  #     export PATH="$HOME/.local/bin:$PATH"
  #     export PATH="$HOME/.local/share/scripts:$PATH"

  #     # Load Environment Variables
  #     if [ -f .env ]; then
  #       export $(cat .env | grep -v '#' | sed 's/\r$//' | awk '/=/ {print $1}' )
  #     fi
  #   '';
  #   profileExtra = ''
  #     setxkbmap -option caps:escape
  #     if [ -e /home/ajmasia/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ajmasia/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
  #   '';
  #   # shellOptions = [ "histappend" "checkwinsize" "extglob" "globstar" "checkjobs" "autocd" ];
  #   shellAliases = import ../dotfiles/programs/bash/aliases;
  # };

  bat = {
    enable = true;
  };

  git = {
    enable = true;
    userEmail = "email@antoniomasia.com";
    userName = "Antonio José Masiá";
    extraConfig = {
      core = {
        excludesfile = "${HOME_PATH}/.gitignore";
      };

      # github = {
      #   oauth-token = readFile ~/.oauth-token;
      #   user = "ajmasia";
      # };

      # pull = {
      #   ff = "only";
      # };

      ui = {
        color = true;
      };
    };
  };

  starship = {
    enable = true;
    enableBashIntegration = true;
    # enableZshIntegration = true;
    settings = {
      add_newline = false;

      line_break = {
        disabled = true;
      };

      nix_shell = {
        impure_msg = "i";
        pure_msg = "p";
      };
    };
  };

  zathura = {
    enable = true;
  };

  # rofi = {
  #   enable = true;
  #   theme = "${HOME_PATH}/.config/rofi/themes/User\ Themes/onedark.rasi";
  # };

  tmux = {
    baseIndex = 1;
    enable = true;
    extraConfig = builtins.readFile ../dotfiles/programs/tmux/tmux.conf;
    historyLimit = 10000;
    keyMode = "vi";
    shortcut = "x";
    terminal = "screen-256color";
  };

}
