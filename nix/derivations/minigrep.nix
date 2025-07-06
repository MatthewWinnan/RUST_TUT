{
  rustPlatform,
}:
rustPlatform.buildRustPackage rec {
  pname = "minigrep";
  version = "0.1.0";

  src = ../../projects/minigrep;
  cargoLock = {
    lockFile = src + /Cargo.lock;
  };
  cargoHash = "";
}
