{
  description = "Rift development environment for OpenJDK";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs, ... }: {
    fixed-labs.rift.x86_64-linux =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      {
        packages = with pkgs; [
          temurin-bin-27
          autoconf
          gcc
          gnumake
          zip
          unzip
          file
          perl
          wget
          cpio
          pkg-config
          freetype
          freetype.dev
          fontconfig
          fontconfig.dev
          cups
          cups.dev
          alsa-lib
          alsa-lib.dev
          libffi
          libffi.dev
          libx11
          libx11.dev
          libxext
          libxext.dev
          libxrender
          libxrender.dev
          libxrandr
          libxrandr.dev
          libxtst
          libxtst.dev
          libxt
          libxt.dev
        ];

        env = {
          JAVA_HOME = "${pkgs.temurin-bin-27}";
        };
      };
  };
}
