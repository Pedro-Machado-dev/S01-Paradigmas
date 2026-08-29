use std::io::{self, Write};

//funcao que valida a placa
fn validar_placa(placa: &str) -> bool {
    if placa.chars().count() < 7 {
        return false;
    }

    let mut letras_maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            letras_maiusculas += 1;
        }
        if c.is_numeric() {
            numeros += 1;
        }
    }

    letras_maiusculas >= 4 && numeros >= 2
}

fn main() {
    loop {
        print!("Digite a placa do veiculo: ");
        io::stdout().flush().unwrap();

        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).unwrap();

        let placa = entrada.trim();

        if validar_placa(placa) {
            println!("Placa cadastrada no sistema!");
            break;
        }
    }
}
