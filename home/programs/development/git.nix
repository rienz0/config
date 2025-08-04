{pkgs, ...}: {
  programs = {
    git = {
      enable = true;
      package = pkgs.git;
      userName = "rienz0";
      userEmail = "rienzzo@proton.me";
      ignores = ["*.swp"];
      aliases = {
        c = "commit -m";
        a = "add";
        ps = "push";
        pl = "pull";
        co = "checkout";
        cl = "clone";
        b = "branch";
      };
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
        core = {
          editor = "code --wait";
        };
        credential = {
          helper = "store";
        };
      };
    };
  };
}
