{ pkgs, ... }:

{
  home.packages = [
    pkgs.htop
    # pkgs.bpytop
    # pkgs.ranger
    # pkgs.fortune
    # pkgs.neovim
    # pkgs.zsh

  ];

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  # };

  # # programs.firefox = {
  #   enable = true;
  #   profiles = {
  #     myprofile = {
  #       settings = {
  #         "general.smoothScroll" = false;
  #       };
      # };
    # };
  };

  # services.gpg-agent = {
  #   enable = true;
  #   defaultCacheTtl = 1800;
  #   enableSshSupport = true;
  # };

  programs.home-manager = {
    enable = true;
    path = "…";
  };
}