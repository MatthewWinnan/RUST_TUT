{
  mkShell,
  cargo,
  rustup,
  just,
  rustc,
  ...
}:
mkShell {
  packages = [
    cargo
    rustup
    just
    rustc
  ];

  shellHook = ''
    echo "Welcome to the RUST zone 🦀"
    echo "Check The Book -> https://doc.rust-lang.org/book"
  '';
}
