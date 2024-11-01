{ pkgs, config, inputs, ... }:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = [
    pkgs.waybar
    pkgs.wofi
    pkgs.pavucontrol
    pkgs.wlogout
    pkgs.shotman
    pkgs.hyprshot
    pkgs.hyprcursor
    pkgs.hyprpaper
    pkgs.wl-clipboard
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ];
}
