{ config, pkgs, ... }:

{
    imports = [
    ];

    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "victor";
    home.homeDirectory = "/home/victor";

    home.stateVersion = "24.05"; # Please read the comment before changing.

    home.packages = [
        pkgs.fzf
        pkgs.unzip

        ];

    wayland.windowManager.sway.enable = true;
    wayland.windowManager.sway.xwayland = true;

    home.sessionVariables = {
        EDITOR = "nvim";
        TERMINAL = "kitty";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;

    programs.zsh.enable = true;
    programs.zsh.shellAliases = {
        vim = "nvim";
    };

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

    #qutebrowser
    programs.qutebrowser = {
        enable = true;
        settings = {
            content.javascript.clipboard = "access";
        };
        keyBindings = {
            normal = {
                "<ctrl-o>" = "close";
            };
            insert = {
                "<ctrl-c>" = "mode-leave";
            };
            prompt = {
                "<ctrl-n>" = "completion-item-focus next";
                "<ctrl-p>" = "completion-item-focus prev";
                "<ctrl-c>" = "mode-enter normal";
            };
            passthrough = {
                "<ctrl-c>" = "mode-leave";
            };
            register = {
                "<ctrl-c>" = "mode-leave";
            };
            yesno = {
                "<ctrl-c>" = "mode-leave";
            };
        };
    };

    #tmux
    programs.tmux = {
        enable = true;
    };

    programs.feh = {
        enable = true;
    };

    programs.obs-studio.enable = true;

    services.picom.enable = true;

    #Dotfiles
    home.file = {
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/nvim;
        ".config/waybar".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/waybar;
        ".config/hypr".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/hypr;
        ".config/i3".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/i3;
        ".config/kitty".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/kitty;
        ".config/wofi".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/wofi;
        ".icons/".source = config.lib.file.mkOutOfStoreSymlink /home/victor/.dotfiles/config/icons;
    };
}
