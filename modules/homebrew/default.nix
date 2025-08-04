{...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };
    global = {
      brewfile = true;
    };
    masApps = {};
    casks = [
      "whatsapp"
      "spotify"
      "discord"
      "telegram"
      "anki"
      "raycast"
      "obsidian"
      "font-zed-mono"
      "ghostty"
      "proton-mail"
    ];
  };
}
