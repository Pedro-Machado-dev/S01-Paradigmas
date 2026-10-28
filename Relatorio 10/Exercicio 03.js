//classe componente
class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura} | Nível de Perigo: ${this.nivelDePerigo}`;
    }
}

//classe composta
class DiarioMisterioso {
    #fichas = [];

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
      
        const novaFicha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(novaFicha);
    }

    exibirFichas() {
        console.log(`\n Diaria nº ${this.numero} ---`);
        this.#fichas.forEach(ficha => console.log(ficha.descrever()));
    }
}

//classe independente
class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

//classe agregadora
class CabanaDoMisterio {
    #funcionarios = [];

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\n Cabana do misterio (Proprietario: ${this.dono}) ---`);
        this.#funcionarios.forEach(func => console.log(`Funcionario(a): ${func.nome} - ${func.cargo}`));
    }
}

//main

const diario3 = new DiarioMisterioso(3);
diario3.anotar("Gnomos", "Baixo");
diario3.anotar("MultUrso", "Medio");
diario3.anotar("Bill Cipher", "Apocaliptico");

diario3.exibirFichas();

//testando a agregacao
const wendy = new Funcionario("Wendy", "Caixa");
const soos = new Funcionario("Soos", "Faz-Tudo");

const cabana = new CabanaDoMisterio("Stan Pines");
cabana.contratar(wendy);
cabana.contratar(soos);

cabana.abrirAsPortas();

//explicacao da arquitetura
/*
  diferenca enrte composicao e agregacao
  
 composicao (DiarioMisterioso e FichaDeCriatura)
    dependencia total, a FichaDeCriatura só é instanciada e existe dentro
    do metodo anotar() do diario, se o objeto DiarioMisterioso deixar de existir,
    as fichas criadas dentro dele deixam de existir tambem
 
  agregacao (CabanaDoMisterio e Funcionario)
    ligação fraca, os objetos Funcionario (wendy e soos) foram instanciados
    de forma independente e apenas passados como
    referencia para o metodo contratar() da Cabana, se a cabana for destruida,
   os funcionarios continuam existindo
 */
