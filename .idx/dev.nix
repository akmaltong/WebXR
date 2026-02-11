{ pkgs, ... }: {
  channel = "stable-23.11"; # or "stable-24.05"
  packages = [
    pkgs.python3
  ];
  idx = {
    extensions = [];
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["python3" "-m" "http.server" "$PORT" "--bind" "0.0.0.0"];
          manager = "web";
        };
      };
    };
  };
}
