{ pkgs, config, inputs, ... }:
{
    environment.systemPackages = with pkgs; [
        godot_4
        aseprite
    ];
}
