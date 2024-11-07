{ pkgs, inputs, ... }:
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
    pkgs.swaynotificationcenter
  ];
}
