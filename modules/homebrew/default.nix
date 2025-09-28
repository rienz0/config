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
      "discord"
      "anki"
      "obsidian"
      "font-zed-mono"
      "ghostty"
      "transmission"
    ];
  };
}
