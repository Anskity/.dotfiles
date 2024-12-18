{ config, pkgs, ... }:

{
    imports = [
        ./tmux.nix
        ./qutebrowser.nix
        ./stupid_stuff.nix
        ./lsp.nix
        ./webdev.nix
        ./zsh.nix
        ./c.nix
    ];

    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "victor";
    home.homeDirectory = "/home/victor";

    home.stateVersion = "24.05"; # Please read the comment before changing.

    nixpkgs.config.allowUnfree = true;

    home.packages = [
        pkgs.fzf
        pkgs.yazi
        pkgs.unzip
        pkgs.alacritty
        pkgs.wget
        pkgs.kitty
        pkgs.tree
        pkgs.ripgrep

        pkgs.discord
        pkgs.vesktop
        pkgs.mpv
        pkgs.youtube-tui
        pkgs.youtube-music
        pkgs.blueman
        pkgs.bluez
        pkgs.bluez-alsa
        pkgs.bluez-tools
        pkgs.ffmpeg

        pkgs.python3

        pkgs.emacsPackages.doom
        pkgs.emacs
        ];

    wayland.windowManager.sway.enable = true;
    wayland.windowManager.sway.xwayland = true;

    home.sessionVariables = {
        EDITOR = "nvim";
        TERMINAL = "kitty";
        BROWSER = "${pkgs.qutebrowser}/bin/qutebrowser";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;


    programs.bash.enable = true;
    programs.bash.shellAliases = {
        vim = "nvim";
        ":q" = "exit";
    };

    #neovim
    programs.neovim.enable = true;

    #Go
    programs.go.enable = true;

    #Git
    programs.git.enable = true;
    programs.git.userName = "xijniN";
    programs.git.userEmail = "xijnin@gmail.com";
    programs.git.extraConfig.init.defaultBranch = "master";


    programs.feh = {
        enable = true;
    };

    programs.obs-studio.enable = true;

    services.picom.enable = true;

    programs.cava.enable = true;
    programs.cava.settings = {
        color = {
            background = "'#000000'";
            foreground = "'#fabd2f'";
        };
    };

    #Dotfiles
    home.file = {
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/nvim;
        ".config/waybar".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/waybar;
        ".config/hypr".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/hypr;
        ".config/i3".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/i3;
        ".config/kitty".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/kitty;
        ".config/wofi".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/wofi;
        ".config/rofi".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/rofi;
        ".config/vesktop/themes".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/vesktop/themes;
        ".config/vesktop/settings".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/vesktop/settings;
        ".icons/".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/icons;
    };
}
