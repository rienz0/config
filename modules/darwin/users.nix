{
  pkgs,
  username,
  ...
}: {
  users = {
    users = {
      ${username} = {
        name = "lucas";
        home = "/Users/${username}";
        shell = pkgs.bash;
        createHome = true;
      };
    };
  };
  system = {
    primaryUser = "lucas";
  };
}
