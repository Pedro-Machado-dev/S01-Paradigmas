//classe base
class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} usou Ko em sua mão e atacou ${alvo.nome}!`);
    }
}

//classes filhas

class Intensificador extends UsuarioDeNen { //ia colocar fortificador, mas achei q talvez fosse descontar
    atacar(alvo) {
        console.log(`${this.nome} usa o Jajanken e ataca ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usa Godspeed e ataca ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen { //ia colocar conjurador, mas achei q talvez fosse descontar
    atacar(alvo) {
        console.log(`${this.nome} usa suas correntes de Nen e segura ${alvo.nome}!`);
    }
}

//classe independente
class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

// classe agregadora
class TrupeFantasma {
    //encapsulamento
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        //agregacao
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\n A trupe foi avistada em ${this.cidade.toUpperCase()}`);
        // forEach para percorrer o array
        this.#aranhas.forEach(aranha => console.log(`Membro #${aranha.numero}: ${aranha.nome}`));
    }

    buscarAranha(numero) {
        return this.#aranhas.find(aranha => aranha.numero === numero);
    }
}

//main

const chrollo = new Aranha("Chrollo Lucilfer", 0);
const uvogin = new Aranha("Uvogin", 11);

const trupe = new TrupeFantasma("York Shin", [chrollo, uvogin]);
trupe.revelarAranhas();

//usando buscararanha
const aranhaAlvo = trupe.buscarAranha(11);
console.log(`\nAlvo capturado ${aranhaAlvo.nome}`);


const gon = new Intensificador("Gon Freecs");
const killua = new Transmutador("Killua Zoldyck");
const kurapika = new Materializador("Kurapika");

const equipeHunters = [gon, killua, kurapika];

console.log(`\n Inicio da luta `);
equipeHunters.forEach(hunter => hunter.atacar(aranhaAlvo));
