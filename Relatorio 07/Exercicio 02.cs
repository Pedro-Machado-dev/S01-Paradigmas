using System;
using System.Collections.Generic;

// criacao da classe base
public class Pokemon
{
    // propriedades e encapsulamento
    public string Especie { get; private set; }
    public int Nivel { get; private set; }

    // construtor
    public Pokemon(string especie, int nivel)
    {
        Especie = especie;
        Nivel = nivel;
    }

    // metodo/acao virtual de atacar
    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} usou um ataque comum.");
    }
}

// criacao da classe tipo planta herdando de pokemon
public class TipoPlanta : Pokemon
{
    // construtor repassando os valores para a classe pai
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    // sobrescrevendo o ataque sem chamar o pai
    public override void Atacar()
    {
        Console.WriteLine($"{Especie} usou um golpe de planta especial");
    }
}

// criacao da classe tipo eletrico herdando de pokemon
public class TipoEletrico : Pokemon
{
    // construtor repassando os valores para a classe pai
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    // sobrescrevendo o ataque e chamando o pai primeiro
    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine($"E depois, {Especie} soltou uma descarga eletrica");
    }
}

class Program
{
    static void Main(string[] args)
    {
        // criando a lista de pokemons
        List<Pokemon> timePokemon = new List<Pokemon>();

        // criando os pokemons
        Pokemon pokemon1 = new Pokemon("Snorlax", 30);
        TipoPlanta pokemon2 = new TipoPlanta("Mewtwo", 15);
        TipoEletrico pokemon3 = new TipoEletrico("Pichu", 10);

        // adicionando na lista
        timePokemon.Add(pokemon1);
        timePokemon.Add(pokemon2);
        timePokemon.Add(pokemon3);

        Console.WriteLine("Batalha de exibicao!\n");

        // percorrendo a lista com foreach
        foreach (Pokemon p in timePokemon)
        {
            p.Atacar();
            Console.WriteLine(" ");
        }
    }
}
