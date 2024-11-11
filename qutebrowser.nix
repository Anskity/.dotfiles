{...}:
{
    #qutebrowser
    programs.qutebrowser = {
        enable = true;
        settings = {
            content.javascript.clipboard = "access";
            content.site_specific_quirks.enabled = true;
            #colors.webpage.darkmode.enabled = true;
        };
        searchEngines = {
            gg = "https://www.google.com/search?q={}";
            yt = "https://www.youtube.com/results?search_query={}";
        };
        keyBindings = {
            normal = {
                "<ctrl-o>" = "close";
                "xs" = "config-cycle statusbar.show always never";
                "xt" = "config-cycle tabs.show always never";
                "xx" = "config-cycle tabs.show always never;; config-cycle statusbar.show always never";
            };
            insert = {
                "<ctrl-c>" = "mode-leave";
            };
            prompt = {
                "<ctrl-n>" = "fake-key <Down>";
                "<ctrl-p>" = "fake-key <Up>";
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
}
