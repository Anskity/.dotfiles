{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lua-language-server
    gopls
    nixd
  ];
}
