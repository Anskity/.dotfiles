{pkgs, ...}:
{
    home.packages = [
        pkgs.oh-my-zsh
        pkgs.zsh
        pkgs.zsh-completions
        pkgs.zsh-powerlevel10k
        pkgs.zsh-syntax-highlighting
        pkgs.zsh-history-substring-search
    ];
    programs.zsh.enable = true;
    programs.zsh.enableCompletion = true;
    programs.zsh.oh-my-zsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = [
            "git"
        ];
    };
    programs.zsh.shellAliases = {
        "vim" = "nvim";
        ":q" = "exit";
        "la" = "ls -a";
        "ll" = "ls -l";
    };

    programs.zsh.initExtra = ''
        if [ -z $TMUX ]; then
            tmux 
        fi
    '';
}
