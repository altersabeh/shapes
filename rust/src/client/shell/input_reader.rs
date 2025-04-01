use text_io::read;

pub fn read_input() -> String {
    print!("Your Answer >>> ");
    let mut user_input: String = read!("{}\n");
    user_input = user_input.trim().to_lowercase().to_string();
    read_exit(&user_input);
    user_input
}

pub fn read_number() -> f64 {
    loop {
        let user_input = read_input();

        match user_input.parse::<f64>() {
            Ok(value) => return value,
            Err(_) => println!("Invalid number. Please try again."),
        }
    }
}

fn read_exit(user_input: &str) {
    if user_input == "exit" || user_input == "e" {
        println!("Thank you for using the Shapes CLI!");
        std::process::exit(0);
    }
}
