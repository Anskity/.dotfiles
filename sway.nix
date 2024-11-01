{ pkgs, config, inputs, ... }:
{
  programs.sway = {
    enable = true;
    xwayland.enable = true;
  };
}
