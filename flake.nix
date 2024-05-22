{
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };

    outputs.packages."x86_64-linux".default = let pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in pkgs.buildEnv {
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
}
