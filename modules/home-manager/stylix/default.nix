{
  inputs,
  pkgs,
  config,
  ...
}: let
  nerdfonts = pkgs.nerdfonts.override {
    fonts = [
      "Ubuntu"
      "UbuntuMono"
      "CascadiaCode"
      "FantasqueSansMono"
      "FiraCode"
      "Mononoki"
    ];
  };
in {
  home.packages = [
    nerdfonts
  ];

  stylix = {
    autoEnable = false;
    polarity = "dark";
    image = "/home/diegopyl/Documentos/nix-config/wallpapers/aaaaa.jpg";
    base16Scheme = "${config.scheme.outPath}";
    targets = {
      dunst.enable = true;
      alacritty.enable = true;
      gtk.enable = true;
    };
  };

  stylix.cursor = {
    name = "phinger-cursors";
    package = pkgs.phinger-cursors;
    size = 16;
  };

  stylix.fonts = {
    serif = {
      package = nerdfonts;
      name = "Ubuntu Nerd Font";
    };
    sansSerif = {
      package = nerdfonts;
      name = "Ubuntu Nerd Font";
    };
    monospace = {
      package = nerdfonts;
      name = "UbuntuMono Nerd Font";
    };
    emoji = {
      package = pkgs.noto-fonts-emoji;
      name = "Noto Color Emoji";
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "papirus-biscuit-dark";
      package = pkgs.mythemes.biscuit;
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
