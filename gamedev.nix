{ pkgs, config, inputs, ... }:
{
    # Video Drivers
    hardware.opengl = {
        enable = true;
        driSupport = true;
    };
    #services.xserver.videoDrivers = ["nvidia"];
    #hardware.nvidia.modesetting.enable = true;
    #programs.gamemode.enable = true;

    environment.systemPackages = with pkgs; [
        godot_4
        aseprite
        unityhub
    ];
}
