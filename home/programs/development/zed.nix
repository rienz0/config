{pkgs, ...}: {
  programs = {
    zed-editor = {
      enable = true;
      extensions = [
        "nix"
        "toml"
      ];
      extraPackages = [
        pkgs.nixd
      ];
      userSettings = {
        features = {
          copilot = true;
        };
        theme = {
          mode = "system";
          light = "Xcode Classic Light";
          dark = "Xcode Classic Darker";
        };
        icon_theme = {
          mode = "system";
          light = "JetBrains New UI Icons (Light)";
          dark = "JetBrains New UI Icons (Dark)";
        };
        lsp = {
          clangd = {
            binary = {
              path_lookup = true;
              path = "clangd";
              arguments = ["--header-insertion=never"];
            };
          };
        };
        ui_font_family = ".SystemUIFont";
        ui_font_size = 14;
        buffer_font_size = 13;
        file_finder = {
          modal_width = "medium";
        };
        load_direnv = "direct";
      };
    };
  };
}
