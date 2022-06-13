#![allow(dead_code, unused_mut, unused_variables)]

fn main() {
    let args: Vec<String> = std::env::args().skip(1).collect();


    for arg in args {
        if arg == "sum".to_string() {
            sum();
        } else if arg == String::from("double") {
            double();
        } else{
            count(arg);
        }

    }

}

fn sum(){
    let mut sum = 0;
    for i in 7..24 {
        sum += i;
    }
    println!("The sum is {}", sum);
}

fn double() {
    let mut count = 0;
    let mut x = 1;

    while x < 500 {
        count += 1;
        x *= 2;

    }

    println!("You can double x {} times until x is larger than 500", count);
}

fn count(arg: String){
    for i in 1..8 {
    println!("arg");
}
}