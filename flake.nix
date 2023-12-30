{
    description = "Codeforces Tool is a command-line interface tool for Codeforces.";
    inputs = {
        nixpkgs.url = github:nixos/nixpkgs/nixos-23.11;
    };
    outputs = {self, nixpkgs} @ inputs:
    let
        system = "x86_64-linux";
        pkgs = inputs.nixpkgs.legacyPackages."${system}";
        lib = inputs.nixpkgs.lib;
    in {
        packages."${system}".default = pkgs.buildGoModule rec {
            pname = "cf-tool";
            version = "v1.0.0";
            src = lib.cleanSource ./.;
            vendorHash = null;
            meta = {
                description = "Codeforces Tool is a command-line interface tool for Codeforces.";
                homepage = "https://github.com/xalanq/cf-tool";
                # licence = licences.mit;
                # maintainers = with pkgs.maintainers; [ rickyxrc ];
                # platforms = platforms.all;
            };
        };
        # is = "this a output?";
    };
}
