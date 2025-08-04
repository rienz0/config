{
  programs = {
    zsh = {
      enable = true;
      initContent = ''
        eval "$(starship init zsh)"
      '';
    };
  };
}
