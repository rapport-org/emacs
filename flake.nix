# -*- mode: nix -*-

{
  description = ''
'';

  #####

  nixConfig.extra-substituters = [
    "https://numtide.cachix.org"
    "https://nix-community.cachix.org"
    "https://rapport-org.cachix.org"
  ];
  nixConfig.extra-trusted-public-keys = [
    "numtide.cachix.org-1:2ps1kLBUWjxIneOy1Ik6cQjb41X0iXVXeHigGmycPPE="
    "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    "rapport-org.cachix.org-1:RNYwAKNN5W+uXJdjRdMJbGh1GOH5BNe/jOjbQnA1pxw="
  ];

  #####

  inputs.nixpkgs_24dot05.url = "github:NixOS/nixpkgs/24.05";
  inputs.nixpkgs.follows = "nixpkgs_24dot05";
  inputs.emacs.url = "github:nix-community/emacs-overlay";
  inputs.emacs.inputs.nixpkgs.follows = "nixpkgs";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";
  inputs.haumea.url = "github:nix-community/haumea/v0.2.2";
  inputs.sops-nix.inputs.nixpkgs.follows = "nixpkgs";
  inputs.sops-nix.url = "github:Mic92/sops-nix";

  #####
  
  outputs = {self, ...} @ inputs: inputs.flake-parts.lib.mkFlake {
    perSystem = {

    };

  };
}
