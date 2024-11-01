{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lua-language-server
    gopls
    nixd
  ];
}
