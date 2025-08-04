{
  programs = {
    starship = {
      enableZshIntegration = true;
      enable = true;
      settings = {
        format = ''$directory$nix_shell[λ](#afafaf) '';
        add_newline = false;
        directory = {
          truncation_length = 1;
          format = "[$read_only]($read_only_style)[$path]($style) ";
          style = "cyan";
          read_only = "ro ";
          read_only_style = "#FF4D4D";
        };
        nix_shell = {
          format = "[$symbol]($style) ";
          symbol = "ж";
          style = "bold blue";
        };
      };
    };
  };
}
