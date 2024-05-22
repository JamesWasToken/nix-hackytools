{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in {
      packages.x86_64-linux.default = pkgs.buildEnv {
        name = "work-hackingtools";
        paths = with pkgs; [
          inetutils
          nmap
          burpsuite
          dnsrecon
          wpscan
          wireshark
          sqlmap
          metasploit
          gobuster
          dnsenum
          masscan
          fcrackzip
          sslscan
        ];
      };
    };
}
