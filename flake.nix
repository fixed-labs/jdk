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
          fontconfig
          cups
          alsa-lib
          libffi
          libx11
          libxext
          libxrender
          libxrandr
          libxtst
          libxt
        ];

        env = {
          JAVA_HOME = "${pkgs.temurin-bin-27}";
        };
      };
  };
}
