{ pkgs, ... }:

with pkgs; {
  enable = true;

  configFile = {
    bspwm = {
      source = ../dotfiles/xdg-configs/bspwm;
      recursive = true;
      executable = true;
    };

    sxhkd = {
      source = ../dotfiles/xdg-configs/sxhkd;
      recursive = true;
    };

    polybar = {
      source = ../dotfiles/xdg-configs/polybar;
      recursive = true;
    };

    picom = {
      source = ../dotfiles/xdg-configs/picom;
      recursive = true;
    };

    "tmuxp" = {
      source = ../dotfiles/xdg-configs/tmuxp-sessions;
    };

    "rofi" = {
      source = ../dotfiles/xdg-configs/rofi;
    };

    # "rofi/plugins/rofiemoji" = {
    #   source = fetchFromGitHub {
    #     name = "rofiemoji";
    #     owner = "nkoehring";
    #     repo = "rofiemoji";
    #     rev = "ad61572830c9d3c00e30eec078d46dad3cfdb4a2";
    #     sha256 = "16rhb2cs8cqwflkcyw5dr77alp5wik4bv1dg66m4hkgcplxv0dx0";
    #   };
    # };

    # "rofi/themes".source = (fetchFromGitHub {
    #   name = "rofi-themes";
    #   owner = "davatorium";
    #   repo = "rofi-themes";
    #   rev = "bfdde8e7912ad50a468c721b29b448c1ec5fa5e3";
    #   sha256 = "1k0nznqccc9y13x3pj6yd2j80nbnl3pyy8ihs91rf89gizb09w63";
    # });

    "wallpapers" = {
      source = ../../wallpapers;
    };
  };
}

