{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot = {
    kernel.sysctl."kernel.sysrq" = 1;

    loader = {
      systemd-boot = {
        enable = true;
      };

      efi = {
        canTouchEfiVariables = true;
      };
    };

    plymouth = {
      enable = true;
    };

    initrd = {
      kernelModules = [ "amdgpu" ];
    };
  };

  networking = {
    hostName = "saturn";
    useDHCP = false;

    networkmanager = {
      enable = true;
    };

    interfaces = {
      eno1 = {
        useDHCP = true;
      };
      wlp1s0 = {
        useDHCP = true;
      };
    };
  };

  time = {
    timeZone = "Europe/Madrid";
  };

  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  services = {
    xserver = {
      enable = true;

      layout = "us";
      xkbVariant = "altgr-intl";
      xkbOptions = "caps:escape";

      displayManager = {
        lightdm = {
          enable = true;
          greeters = {
            gtk = {
              enable = true;
              indicators = [ "~host" "~spacer" "~clock" "~spacer" "~session" "~a11y" "~power" ];

            };
          };
        };
      };

      windowManager = {
        bspwm = {
          enable = true;
        };
      };

      libinput = {
        enable = true;

        touchpad = {
          naturalScrolling = true;
          tapping = true;
          additionalOptions = ''
            MatchIsTouchpad "on"
          '';
        };
      };

      videoDrivers = [ "amdgpu" ];
    };

    blueman = {
      enable = true;
    };

    printing = {
      enable = true;
      drivers = [ pkgs.hplip ];
    };

    avahi = {
      enable = true;
    };

    # udev = {
    #   packages = [
    #     (pkgs.writeTextFile
    #       {
    #         name = "dygma";
    #         text = ''
    #           SUBSYSTEMS=="usb", ATTRS{idVendor}=="1209", ATTRS{idProduct}=="2201", GROUP="users", MODE="0666"
    #           SUBSYSTEMS=="usb", ATTRS{idVendor}=="1209", ATTRS{idProduct}=="2200", GROUP="users", MODE="0666"
    #         '';
    #         destination = "/etc/udev/rules.d/50-dygma.rules";
    #       })
    #   ];
    # };
  };

  sound = {
    enable = true;

    mediaKeys = {
      enable = true;
    };
  };

  hardware = {
    pulseaudio = {
      enable = true;
      package = pkgs.pulseaudioFull;
    };

    bluetooth = {
      enable = true;

      settings = {
        General = {
          ControllerMode = "bredr";
        };
      };
    };

    opengl = {
      enable = true;
    };
  };


  users.users.ajmasia = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" "input" "audio" ];
  };

  virtualisation = {
    docker = {
      enable = true;
    };
  };

  environment = {
    variables = {
      EDITOR = "vim";
    };

    systemPackages = with pkgs; [
      wget
      curl
      vim
      home-manager
      firefox
    ];
  };

  nixpkgs.config.allowUnfree = true;

  system = {
    stateVersion = "21.11";
  };
}

