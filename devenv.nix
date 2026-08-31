{
  pkgs,
  config,
  ...
}: {
  languages.ruby = {
    enable = true;
    bundler.enable = true;
    documentation.enable = true;
    lsp.enable = true;
  };

  env.ENVIRONMENT = "ruby";

  languages.python = {
    enable = true;

    venv.enable = true;

    directory = "./scripts";

    uv = {
      enable = true;
      sync.enable = true;
    };

    lsp = {
      enable = true;
      package = pkgs.ty;
    };
  };

  packages = with pkgs; [
    alejandra
  ];

  enterTest = ''
    ruby --version
    bundle --version
    python --version
    uv --version
    ty --version
    alejandra --version
  '';
}
