{
  mkShell,
  cargo,
  rustc,
  just,
  clippy,
  rustfmt,
  ...
}:
mkShell {
  packages = [
    cargo
    rustc
    just
    clippy
    rustfmt
  ];

  shellHook = ''
    echo "Welcome to the RUST zone 🦀"
    echo "Check The Book -> https://doc.rust-lang.org/book"
  '';
}
