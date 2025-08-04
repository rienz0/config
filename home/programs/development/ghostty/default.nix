{ home, ... } :
{
  home.file."Library/Application Support/com.mitchellh.ghostty/config".text = builtins.readFile ./config;
}