{
  nixConfig = {
    substituers = [
      "https://cache.nixos.org"
    ];
  };

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    mac-app-util = {
      url = "github:hraban/mac-app-util";
    };
    nix-homebrew = {
      url = "github:zhaofengli-wip/nix-homebrew";
    };
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
    };
    vide = {
      url = "github:rienz0/vide";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };

  outputs = inputs @ {
    self,
    darwin,
    nixpkgs,
    mac-app-util,
    home-manager,
    nix-homebrew,
    homebrew-core,
    homebrew-cask,
    ...
  }: let
    system = "aarch64-darwin";
    username = "lucas";
    specialArgs = {inherit inputs username system;};
  in {
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;
    darwinConfigurations = {
      mac = darwin.lib.darwinSystem {
        inherit system specialArgs;
        modules = [
          ./modules/darwin
          ./modules/homebrew

          mac-app-util.darwinModules.default
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = specialArgs;
              backupFileExtension = "backup";
              sharedModules = [
                mac-app-util.homeManagerModules.default
              ];
              users.${username} = import ./home;
            };
          }

          nix-homebrew.darwinModules.nix-homebrew
          {
            nix-homebrew = {
              enable = true;
              user = username;
              taps = {
                "homebrew/homebrew-core" = homebrew-core;
                "homebrew/homebrew-cask" = homebrew-cask;
              };
              mutableTaps = false;
            };
          }
        ];
      };
    };
  };
}
