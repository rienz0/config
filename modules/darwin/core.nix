{
  pkgs,
  inputs,
  username,
  system,
  ...
}: {
  nix = {
    gc = {
      automatic = true;
    };
    linux-builder = {
      enable = true;
    };
    optimise = {
      automatic = true;
    };
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
    overlays = [
      inputs.nix-vscode-extensions.overlays.default
    ];
  };

  system.stateVersion = 6;

  time = {
    timeZone = "Europe/Paris";
  };
}
