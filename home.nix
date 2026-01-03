{ config, pkgs, ... }:

{
  home.username = "ted";
  home.homeDirectory = "/home/ted";
  
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
  

  home.packages = with pkgs; [
  vencord
  ghostty
  neovim-gtk
  ripgrep
  fd
  lazygit
  protonplus
  adwsteamgtk
  heroic
  gruvbox-material-gtk-theme
  netbeans
  python3
  python3Packages.debugpy
  zed-editor
  jetbrains.idea-community-bin
  ant
  kdePackages.kdeconnect-kde
  kdePackages.qt6ct
  nordic
  bibata-cursors
  vintagestory
  ];
  programs.neovim = {
	enable = true;
	defaultEditor = true;
  viAlias = true;
	vimAlias = true;
  };
 }
