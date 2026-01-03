{ config, pkgs, ... }:

{
  home.username = "ted";
  home.homeDirectory = "/home/ted";
  
  # This should match your NixOS version (check with: nixos-version)
  home.stateVersion = "25.11";

  # Let Home Manager manage itself
  programs.home-manager.enable = true;
  

  # Install packages for your user
  home.packages = with pkgs; [
	vencord
	vscode
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
  raylib-games
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
