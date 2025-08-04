{username, ...}: {
  networking = {
    computerName = "Mac";
    hostName = "mac";
  };
  security = {
    pam = {
      services = {
        sudo_local = {
          touchIdAuth = true;
        };
      };
    };
  };
  power = {
    sleep = {
      computer = 5;
      display = 5;
    };
  };
}
