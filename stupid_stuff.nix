{ pkgs, config, inputs, ... }:
{
    environment.systemPackages = [
        pkgs.cava
            pkgs.cowsay
            pkgs.fortune
            pkgs.figlet
            pkgs.neofetch
            pkgs.wtf
            pkgs.sl
            pkgs.cmatrix
            pkgs.cbonsai
            pkgs.pipes
    ];
}
