use std::io::{self, Write};

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
    for numero in limite_inferior..=limite_superior {
        if numero % 10 == digito {
            println!("{}", numero);
        }
    }
}

fn main() {
    print!("Digite o digito final desejado (0 a 9): ");
    io::stdout().flush().unwrap();
    let mut entrada1 = String::new();
    io::stdin().read_line(&mut entrada1).unwrap();
    let digito: i32 = entrada1.trim().parse().unwrap_or(0);

    print!("Digite o limite inferior: ");
    io::stdout().flush().unwrap();
    let mut entrada2 = String::new();
    io::stdin().read_line(&mut entrada2).unwrap();
    let limite_inferior: i32 = entrada2.trim().parse().unwrap_or(0);

    print!("Digite o limite superior: ");
    io::stdout().flush().unwrap();
    let mut entrada3 = String::new();
    io::stdin().read_line(&mut entrada3).unwrap();
    let limite_superior: i32 = entrada3.trim().parse().unwrap_or(0);

    imprimir_terminados_em(digito, limite_inferior, limite_superior);
}
