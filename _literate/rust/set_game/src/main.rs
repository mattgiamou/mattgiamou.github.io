#[derive(Debug)]
enum Colour {
    Red,
    Green,
    Blue
}
#[derive(Debug)]
enum Shape {
    Pill,
    Diamond,
    Wave
}
#[derive(Debug)]
enum Fill {
    Empty,
    Half,
    Solid
}
#[derive(Debug)]
struct Card {
    colour: Colour,
    shape: Shape,
    fill: Fill,
    number: u8
}

impl Card {

    fn encode_colour(&self) -> &str {
        match self.colour {
            Colour::Red => "r",
            Colour::Green => "g",
            Colour::Blue => "b"
        }
    }

    fn encode_shape(&self) -> &str {
        match self.shape {
            Shape::Pill => "p",
            Shape::Diamond => "d",
            Shape::Wave => "w"
        }
    }

    fn encode_fill(&self) -> &str {
        match self.fill {
            Fill::Empty => "e",
            Fill::Half => "h",
            Fill::Solid => "s"
        }
    }

    fn encode(self) -> String {
        // Add the number once this is figured out
        self.encode_colour().to_string() + self.encode_shape() + self.encode_fill() + &self.number.to_string()
    }
}

fn main() {
    println!("Hello, world!");
    let card = Card {
        colour: Colour::Red,
        shape: Shape::Diamond,
        fill: Fill::Half,
        number: 2
    };
    println!("{:?}", card);
    println!("{:}", card.encode());
    // println!("{}", "a".to_owned() + "b");
}
