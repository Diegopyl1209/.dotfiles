{config, ...}: {
  home = {
    file = {
      ".local/bin/fetch" = {
        executable = true;
        text = import ./eyecandy/nixfetch.nix {};
      };
      ".local/bin/genmenupic" = {
        executable = true;
        text = import ./misc/genmenupic.nix {inherit config;};
      };
      ".local/bin/lcon" = {
        executable = true;
        text = import ./misc/con.nix {};
      };
      ".local/bin/roundvalue" = {
        executable = true;
        text = import ./misc/roudnvalue.nix {};
      };
      ".local/bin/setWall" = {
        executable = true;
        text = import ./misc/changeWall.nix {};
      };
      ".local/bin/tiling" = {
        executable = true;
        text = import ./misc/tiling.nix {};
      };
      ".local/bin/panes" = {
        executable = true;
        text = import ./eyecandy/panes.nix {};
      };
      ".local/bin/wifimenu" = {
        executable = true;
        text = import ./rofiscripts/wifi.nix {};
      };
      ".local/bin/powermenu" = {
        executable = true;
        text = import ./rofiscripts/powermenu.nix {};
      };
      ".local/bin/screenshotmenu" = {
        executable = true;
        text = import ./rofiscripts/screenshot.nix {};
      };
      ".local/bin/changevolume" = {
        executable = true;
        text = import ./notifs/changevolume.nix {};
      };
    };
  };
}
