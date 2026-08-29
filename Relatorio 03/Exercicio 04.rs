use std::io::{self, Write};

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
    let npt = (prova1 + prova2) / 2.0;
    let pf = (npt * 0.6) + (redacao * 0.4);

    if pf >= 60.0 {
        println!("Parabens! Candidato aprovado no processo seletivo. Resultado: {}", pf);
    } else {
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao. Resultado: {}", pf);
    }

    pf
}

fn main() {
    print!("Digite a nota da prova 1: ");
    io::stdout().flush().unwrap();
    let mut entrada1 = String::new();
    io::stdin().read_line(&mut entrada1).unwrap();
    let prova1: f64 = entrada1.trim().parse().unwrap_or(0.0);

    print!("Digite a nota da prova 2: ");
    io::stdout().flush().unwrap();
    let mut entrada2 = String::new();
    io::stdin().read_line(&mut entrada2).unwrap();
    let prova2: f64 = entrada2.trim().parse().unwrap_or(0.0);

    print!("Digite a nota da redacao: ");
    io::stdout().flush().unwrap();
    let mut entrada3 = String::new();
    io::stdin().read_line(&mut entrada3).unwrap();
    let redacao: f64 = entrada3.trim().parse().unwrap_or(0.0);

    let final_pf = calcular_pontuacao(prova1, prova2, redacao);
    println!("Pontuacao Final retornada: {}", final_pf);
}
