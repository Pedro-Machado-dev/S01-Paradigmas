using System;
using System.Collections.Generic;

// criacao da classe grimorio
public class Grimorio
{
    // propriedade com nenhum valor
    public string FeiticoFavorito { get; set; } = "Nenhum";

    // metodo para exibir o feitico
    public void Abrir()
    {
        Console.WriteLine($"O grimório foi aberto. Feitiço favorito: {FeiticoFavorito}");
    }
}

// criacao da classe companheiro
public class Companheiro
{
    public string Nome { get; private set; }
    public string Funcao { get; private set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    // metodo para o companheiro se apresentar
    public void Apresentar()
    {
        Console.WriteLine($"{Nome} - Função: {Funcao}");
    }
}

// criacao da classe maga
public class Maga
{
    public string Nome { get; private set; }
    
    // grimorio associado a maga
    public Grimorio MeuGrimorio { get; private set; }
    
    // lista privada de companheiros
    private List<Companheiro> grupo = new List<Companheiro>();

    // construtor
    public Maga(string nome)
    {
        Nome = nome;
        // composicao: o grimorio eh criado e nasce junto com a maga
        MeuGrimorio = new Grimorio();
    }

    // metodo para recrutar companheiros(agregacao)
    public void Recrutar(Companheiro c)
    {
        grupo.Add(c);
    }

    // metodo para exibir o grupo
    public void MostrarGrupo()
    {
        Console.WriteLine($"Grupo da maga {Nome}:");
        foreach (Companheiro c in grupo)
        {
            c.Apresentar();
        }
        Console.WriteLine(" ");
    }
}

class Program
{
    static void Main(string[] args)
    {
        // criando dois companheiros antes da maga
        Companheiro companheiro1 = new Companheiro("Himmel", "Herói");
        Companheiro companheiro2 = new Companheiro("Fern", "Maga");

        // criando a maga
        Maga maga = new Maga("Frieren");

        // recrutando os companheiros
        maga.Recrutar(companheiro1);
        maga.Recrutar(companheiro2);

        // definindo o feitico favorito no grimorio da maga
        maga.MeuGrimorio.FeiticoFavorito = "Criar um campo de flores";

        // chamando os metodos
        maga.MostrarGrupo();
        maga.MeuGrimorio.Abrir();

        /*
         explicacao
         composição: o objeto grimorio é criado dentro do construtor da classe maga, se a maga deixar de existir, o grimorio deixa de existir junto, pois a relação é forte
           
         agregação: os objetos da classe companheiro são criados na main de forma independente e depois passados para a lista da Maga pelo método recrutar. se a maga deixar
           de existir, os companheiros continuam existindo normalmente, pois a relação é fraca
        */
    }
}
