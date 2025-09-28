{username, ...}: {
  system = {
    keyboard = {
      enableKeyMapping = true;
    };
    defaults = {
      NSGlobalDomain = {
        AppleInterfaceStyleSwitchesAutomatically = true;
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        AppleShowScrollBars = "WhenScrolling";
        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.trackpad.scaling" = 1.0;
      };
      WindowManager = {
        EnableTiledWindowMargins = false;
        GloballyEnabled = false;
      };
      controlcenter = {
        AirDrop = true;
        BatteryShowPercentage = true;
        Bluetooth = true;
        Display = false;
        FocusModes = true;
        NowPlaying = true;
        Sound = false;
      };
      dock = {
        largesize = 85;
        tilesize = 60;
        minimize-to-application = true;
        persistent-apps = [
          "/System/Applications/Apps.app"
          "/Applications/Safari.app"
          "/Applications/Discord.app"
          "/Applications/Telegram.app"
          "/System/Applications/Messages.app"
          "/System/Applications/Notes.app"
          "/Applications/Obsidian.app"
          "/System/Applications/Calendar.app"
          "/Applications/Anki.app"
          "/Applications/Ghostty.app"
          "/Users/lucas/Applications/Home Manager Apps/Visual Studio Code.app"
        ];
      };
      finder = {
        AppleShowAllFiles = true;
        AppleShowAllExtensions = true;
        FXPreferredViewStyle = "Nlsv";
        ShowPathbar = true;
        ShowStatusBar = true;
        _FXSortFoldersFirst = true;
        _FXSortFoldersFirstOnDesktop = true;
      };
      hitoolbox = {
        AppleFnUsageType = "Change Input Source";
      };
      menuExtraClock = {
        ShowDayOfWeek = false;
      };
      screencapture = {
        target = "clipboard";
      };
      trackpad = {
        Clicking = true;
      };
    };
  };
}
