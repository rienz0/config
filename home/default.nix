{
  pkgs,
  inputs,
  username,
  ...
}: {
  imports = [
    ./base.nix
    ./programs
  ];

  home = {
    inherit username;
    homeDirectory = "/Users/${username}";
    stateVersion = "25.05";

    packages = with pkgs; [];
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };
}
