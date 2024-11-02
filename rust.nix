{pkgs, ...}:
{
    nixpkgs.overlays = [
        (import "${fetchTarball {url = "https://github.com/nix-community/fenix/archive/main.tar.gz"; sha256 = "1giz4b2hfjnv50bff41vlii6qdfa9bl8rf32p8ps8p0alz5v8076";}}/overlay.nix")
    ];
    environment.systemPackages = with pkgs; [
        (fenix.complete.withComponents [
         "cargo"
         "clippy"
         "rust-src"
         "rustc"
         "rustfmt"
        ])
            rust-analyzer-nightly
    ];
}
