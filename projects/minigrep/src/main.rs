use minigrep::{Config, run};
use std::{env, process};

fn main() {
    let args: Vec<String> = env::args().collect();
    let config = Config::new(&args).unwrap_or_else(|err| {
        println!("Problem parsing arguments: {err}");
        process::exit(1);
    });

    match run(config) {
        Err(e) => {
            println!("Application error: {e}");
            process::exit(1);
        }
        Ok(()) => {
            println!("Works");
        }
    }
}
