{ pkgs, config, inputs, ... }:
{
    services.xserver.windowManager.hypr.enable = true;

    environment.systemPackages = [
        pkgs.hypr
        pkgs.rofi
    ];
}
