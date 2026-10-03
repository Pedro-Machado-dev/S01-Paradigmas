using System;

// criacao da classe
public class CombatenteDeGondor
{
    // propriedades e encapsulamento
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }

    // propriedade do armamento
    public string Armamento { get; private set; } = "Desarmado";

    // construtor da propriedade
    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    // metodo/acao de equipar a arma
    public void Equipar(string arma)
    {
        Armamento = arma;
    }


    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {Nome} | Povo: {Povo} | Posto: {Posto}");
        
        // o armamento so funciona se for diferente de desarmado
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
        Console.WriteLine(" ");
    }
}

class Program
{
    static void Main(string[] args)
    {
        //criando os 3 combatentes
        CombatenteDeGondor combatente1 = new CombatenteDeGondor("Thorfinn", "Dúnedain", "Comandante");
        CombatenteDeGondor combatente2 = new CombatenteDeGondor("Thors", "Gondoriano", "Capitão");
        CombatenteDeGondor combatente3 = new CombatenteDeGondor("Askeladd", "Hobbit", "Chefe");

      
        combatente1.Equipar("Adagas");
        combatente2.Equipar("Espada");

      
        Console.WriteLine("Apresentacao das Unidades");
        combatente1.ApresentarUnidade();
        combatente2.ApresentarUnidade();
        combatente3.ApresentarUnidade();

        // combatente3.Posto = "Rei";

        // tentativa de alterar o posto de um combatente
        // ela vai gerar um erro de compilação porque a propriedade Posto tem seu set definido como privado
        
    }
}
