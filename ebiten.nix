{ pkgs, config, inputs, ... }:
{
    environment.systemPackages = with pkgs; [
        mesa
        libXrandr
        libXcursor
        libXinerama
        libXi
        pkg-config    
    ];
}
