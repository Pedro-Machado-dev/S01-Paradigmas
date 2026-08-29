use std::io::{self, Write};

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    (palpite - numero_secreto).abs() <= 5
}

fn main() {
    let numero_secreto: i32 = 27;

    loop {
        print!("Digite seu palpite: ");
        io::stdout().flush().unwrap();

        let mut entrada = String::new();
        let lidos = io::stdin().read_line(&mut entrada).unwrap();

        if lidos == 0 {
            break;
        }

        let palpite: i32 = match entrada.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        if acertou_o_alvo(palpite, numero_secreto) {
            let distancia = (palpite - numero_secreto).abs();
            println!("Voce acertou! Ficou a apenas {} unidades do numero secreto!", distancia);
            break;
        } else {
            println!("Voce passou longe! Tente novamente.");
        }
    }
}
