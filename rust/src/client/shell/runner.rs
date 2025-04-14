use super::handler;
use super::input_reader::read_input;

use std::collections::HashMap;

pub struct Runner;

impl Runner {
    #[allow(clippy::new_without_default)]
    pub fn new() -> Self {
        println!("{}", "=".repeat(53));
        println!("Welcome to the Area and Perimeter Calculator!");
        println!("{}", "=".repeat(53));
        Runner
    }

    fn starting_message() {
        println!("Choose a shape to calculate its area and perimeter.");
        println!("  [C] CIRCLE");
        println!("  [R] RECTANGLE");
        println!("  [S] SQUARE");
        println!("Type '[E]XIT' to quit the program.")
    }

    pub fn run(&self) {
        let print_thank_you_message: fn() = || {
            println!("Thank you for using the Shapes CLI!");
            println!("P.S. Did you know? The secret code is 42!");
        };

        loop {
            Self::starting_message();

            let shape = read_input();
            if shape == "q" {
                print_thank_you_message();
                std::process::exit(0);
            }

            let actions: HashMap<&str, fn()> = HashMap::from([
                ("circle", handler::handle_circle as fn()),
                ("c", handler::handle_circle),
                ("rectangle", handler::handle_rectangle),
                ("r", handler::handle_rectangle),
                ("square", handler::handle_square),
                ("s", handler::handle_square),
            ]);

            let action = actions.get(shape.as_str()).copied().unwrap_or({
                || {
                    println!("Invalid input. Please try again.");
                    println!("Type one of the listed options.");
                }
            });

            action();

            println!("{}", "=".repeat(53));
        }
    }
}
