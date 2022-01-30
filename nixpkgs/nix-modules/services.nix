{ ... }:

{
  dunst = {
    enable = true;
    settings = import ../dotfiles/services/dunst.nix;
  };

  syncthing = {
    enable = true;
  };

  xscreensaver = {
    enable = true;
  };

  # grobi = {
  #   enable = true;
  #   rules =
  #     let
  #       LAPTOP_SCREEN = "eDP";
  #       HOME_SCREEN = "HDMI-A-0";
  #     in
  #     [
  #       {
  #         name = "Solo";
  #         outputs_connected = [ LAPTOP_SCREEN ];
  #         outputs_disconnected = [ HOME_SCREEN ];
  #         configure_single = LAPTOP_SCREEN + "@1920x1080";
  #         primary = true;
  #         atomic = true;
  #       }
  #       {
  #         name = "Home";
  #         outputs_connected = [ HOME_SCREEN ];
  #         configure_single = HOME_SCREEN;
  #         primary = true;
  #         atomic = true;
  #       }
  #     ];
  # };

  redshift = {
    enable = true;
    #provider = "geoclue2";

    settings = {
      redshift.brightness-day = 1;
      redshift.brightness-night = 0.8;
    };

    latitude = "36";
    longitude = "-6";

    temperature = {
      day = 7700;
      night = 3700;
    };

    tray = true;
  };
}
