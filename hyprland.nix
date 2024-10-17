{ pkgs, config, inputs, ... }:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar
    wofi
    pavucontrol
    wlogout
    shotman
    hyprshot
    hyprcursor
    wl-clipboard
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ];
}
