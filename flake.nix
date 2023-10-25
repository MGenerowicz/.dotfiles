{

  description = "My first Flake";

  inputs = {

    nixpkgs.url = "nixpkgs/nixos-unstable";
   };

  outputs = {self, nixpkgs, ...}:
   let 
    lib = nixpkgs.lib;
 in {
    nixosConfigurations = {
     nixos = lib.nixosSystem {
       system = "x86_64_linux";
       modules = [./configuration.nix];
     }; 
  };
};


}
