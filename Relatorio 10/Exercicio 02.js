//classe pistola - composta
class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

//classe base
class AgenteProtocolo {
    //encapsulamento
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome; //publico
        
        //composicao
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} é generico e nao possui habilidade definida`);
    }

    entrarEmCombate() {
        
        console.log(`[COMBATE] ${this.codinome} esta equipado com ${this.#pistola.modelo} | Ação: ${this.usarHabilidade()}`);
    }
}

//classes filhas

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return "Cobrindo a area com Artimanha ( smoke da clove)";
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return "Lançando o lobo para encontrar players";
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return "Avanço para cima de um player ( dash)";
    }
}

//agregacao
class Esquadrao {
    #agentes;

    constructor(nome, agentes = []) {
        this.nome = nome;
        this.#agentes = agentes;
    }

    //metodos e polimorfismo
    iniciarPartida() {
        console.log(`\n Esquadrao ${this.nome.toUpperCase()} iniciando a partida`);
        //polimorfismo
        this.#agentes.forEach(agente => agente.entrarEmCombate());
    }

    //filtragem
    listarControladores() {
        //filtro
        return this.#agentes.filter(agente => agente instanceof Controlador);
    }
}


//main

//criando agentes
const omen = new Controlador("Omen", "Ghost");
const clove = new Controlador("Clove", "Shorty");
const sky = new Iniciador("Sky", "Sheriff");
const jett = new Duelista("Jett", "Frenzy");

const esquadraoAlpha = new Esquadrao("Tropa", [omen, clove, sky, jett]);

esquadraoAlpha.iniciarPartida();

//listando apenas os controladores
console.log("\n Controladores");
esquadraoAlpha.listarControladores().forEach(agente => console.log(`- ${agente.codinome}`));

// 8. TESTE DE CLASSE ABSTRATA SIMULADA
console.log("\n Teste de erro");
const agenteInvalido = new AgenteProtocolo("Agente Genérico", "Classic");

//erro proposital na linha debaixo
// agenteInvalido.entrarEmCombate();
