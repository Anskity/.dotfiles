{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    lib = nixpkgs.lib;
    sys = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${sys};
  in
  {
    nixosConfigurations.nixos = lib.nixosSystem {
      specialArgs = { inherit inputs; };
      system = sys;
      modules = [ ./configuration.nix ];
    };

    homeConfigurations.victor = home-manager.lib.homeManagerConfiguration {
      pkgs = pkgs;
      modules = [ ./home.nix ];
    };
  };
}
