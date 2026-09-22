#include <iostream>
#include <string>

using namespace std;

// criando a classe
class LinkSocial 
{
private: 
    // atributos privados, apenas metodos da propria classe podem acessar
    string nome;
    string arcana;
    int rank;

public:
    // metodos setters
    void setNome(string n) 
    {
        nome = n;
    }

    void setArcana(string a) 
    {
        arcana = a;
    }

    void setRank(int r) 
    {
        rank = r;
    }

    // metodos getters
    string getNome() 
    {
        return nome;
    }

    string getArcana() 
    {
        return arcana;
    }

    int getRank() 
    {
        return rank;
    }

    // metodo para incrementar o rank
    void subirRank() 
    {  
        rank++;
    }
};

int main() 
{
    // criando/instanciando um objeto
    LinkSocial meuAliado;

    // definindo os valores usando os setters
    meuAliado.setNome("Rudeus Greyrat");
    meuAliado.setArcana("Chariot");
    meuAliado.setRank(1);

    // exibindo o status inicial para efeito de comparação
    cout << "Link Social com " << meuAliado.getNome() << "!" << endl;
    cout << "Arcana: " << meuAliado.getArcana() << " | Rank atual: " << meuAliado.getRank() << endl;

    // executando a acao/metodo para subir o rank
    meuAliado.subirRank();

    // exibindo os dados confirmando o aumento utilizando os getters
    cout << "\n Status Atualizado " << endl;
    cout << "O Rank do Link Social com " << meuAliado.getNome() << " (Arcana " << meuAliado.getArcana() << ") subiu!" << endl;
    cout << "Novo Rank: " << meuAliado.getRank() << endl;

    return 0;
}
