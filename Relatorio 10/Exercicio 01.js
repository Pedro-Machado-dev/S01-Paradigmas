//classe base
class Pokemon {
    //encapsulamento
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido; // publico
        this.tipo = tipo;       // publico
        this.#vida = vidaInicial;
    }

    //getter, le de fora mas nn altera diretamente
    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida -= pontos;
        if (this.#vida < 0) {
            this.#vida = 0;
        }
        console.log(`[DANO] ${this.apelido} sofreu dano, vida restante: ${this.#vida}`);
    }

    //virtual - equivalente
    atacar(alvo) {
        console.log(`${this.apelido} bateu em ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

//classe filha squirtle
class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        //chama o construtor
        super(apelido, 'Agua', vidaInicial);
    }

    //sobrescrita
    atacar(alvo) {
        console.log(`${this.apelido} usa muita agua em ${alvo.apelido}!`); //nao estou muito criativo hoje :(
        alvo.sofrerDano(20);
    }
}

//bulbassaur
class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        //chama o construtor
        super(apelido, 'Planta', vidaInicial);
    }

    //sobrescrita
    atacar(alvo) {
        console.log(`${this.apelido} usa uma planta venenosa em ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}

//main

//criando/instanaciando objetos
const meuSquirtle = new Squirtle('Squirtle azul', 40);
const meuBulbasaur = new Bulbasaur('Bulbassaur verde', 30); //vida obrigatoria

console.log(`\n Batalha`);
console.log(`${meuSquirtle.apelido} (Vida: ${meuSquirtle.vida}) x ${meuBulbasaur.apelido} (Vida: ${meuBulbasaur.vida})\n`);

meuBulbasaur.atacar(meuSquirtle);

console.log("\n Squirtle Ataca");

meuSquirtle.atacar(meuBulbasaur);
meuSquirtle.atacar(meuBulbasaur);

//imprimindo a vida
console.log(`\n Fim da Batalha`);
console.log(`Status de ${meuSquirtle.apelido}: ${meuSquirtle.vida} de vida.`);
console.log(`Status de ${meuBulbasaur.apelido}: ${meuBulbasaur.vida} de vida.`);

// 5. TESTE DE ENCAPSULAMENTO
// Descomente a linha abaixo para ver o erro gerado ao tentar acessar um atributo privado fora da classe.
// console.log(meuSquirtle.#vida);
