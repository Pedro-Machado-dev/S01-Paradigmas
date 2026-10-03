using System;
using System.Collections.Generic;

// criacao da entidade cosmica
public class EntidadeCosmica
{
    // propriedades e encapsulamento
    public string Nome { get; private set; }
    
    // origem com valor desconhecido
    public string Origem { get; set; } = "Desconhecida";

    // construtor
    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    // metodo/acao virtual de manifestar
    public virtual void Manifestar()
    {
        Console.WriteLine($"A entidade {Nome} está se manifestando");
        
        // so exibe a origem se ela for conhecida
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Sua origem é: {Origem}");
        }
    }
}

// classe profundo herdando de entidade cosmica
public class Profundo : EntidadeCosmica
{
    // repassando o valor para a classe pai
    public Profundo(string nome) : base(nome)
    {
    }

    // sobrescrevendo sem chamar o pai
    public override void Manifestar()
    {
        Console.WriteLine($"{Nome} surge");
    }
}

// criacao da classe migo herdando de entidade cosmica
public class MiGo : EntidadeCosmica
{
    // construtor repassando o valor para a classe pai
    public MiGo(string nome) : base(nome)
    {
    }

    // sobrescrevendo e chamando o pai primeiro
    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine($"{Nome} voa com suas asas");
    }
}

// criacao da classe pesquisador
public class Pesquisador
{
    public string Nome { get; private set; }
    
    // lista privada de entidades
    private List<EntidadeCosmica> catalogo = new List<EntidadeCosmica>();

    public Pesquisador(string nome)
    {
        Nome = nome;
    }

    // metodo para catalogar a entidade
    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    // metodo para ler o catalogo
    public void LerCatalogo()
    {
        Console.WriteLine($"Catálogo do Pesquisador {Nome}:\n");
        foreach (EntidadeCosmica e in catalogo)
        {
            e.Manifestar();
            Console.WriteLine(" ");
        }
    }
}

class Program
{
    static void Main(string[] args)
    {
        // criando uma entidade de cada classe
        EntidadeCosmica cthulhu = new EntidadeCosmica("Cthulhu");
        Profundo dagon = new Profundo("Dagon");
        MiGo fungo = new MiGo("Fungo de Yuggoth");

        
        cthulhu.Origem = "R'lyeh";
        fungo.Origem = "Yuggoth";

        // criando o pesquisador
        Pesquisador pesquisador = new Pesquisador("Armitage");

        // catalogando todas no pesquisador
        pesquisador.Catalogar(cthulhu);
        pesquisador.Catalogar(dagon);
        pesquisador.Catalogar(fungo);

        // chamando o metodo para ler o catalogo
        pesquisador.LerCatalogo();
    }
}
