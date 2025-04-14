use shapes::{
    base::{commons::BaseShape, models::Circle},
    client::shell::Runner,
};

fn main() {
    let program: Runner = Runner::new();

    let mut circle: Circle = Circle::new(15.25);
    circle.set_color("RED");
    circle.print_description();

    program.run();
}
