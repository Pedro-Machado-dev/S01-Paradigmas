#include <iostream>
#include <string>
#include <vector> 

using namespace std;

// criando a classe 
class Hobbit 
{
protected: 
    // protected permite que as classes filhas acessem o nome diretamente
    string nome;

public:
    // metodo setter para o nome
    void setNome(string n) 
    {
        nome = n;
    }

    // metodo virtual
    virtual void fazerAtividade() 
    {
        cout << "O hobbit " << nome << " está aproveitando um dia tranquilo na Comarca." << endl;
    }
};

// criando a classe jardineiro que herda hobbit
class Jardineiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O jardineiro " << nome << " está cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

// criando a classe cozinheiro que herda hobbit
class Cozinheiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O cozinheiro " << nome << " está preparando o segundo café da manhã para os convidados!" << endl;
    }
};

// criando a classe Fazendeiro que herda Hobbit
class Fazendeiro : public Hobbit 
{
public:
    void fazerAtividade() override 
    {
        cout << "O fazendeiro " << nome << " está colhendo vegetais e hortaliças em suas terras!" << endl;
    }
};

int main() 
{
    // instanciando um objeto de cada profissao (nomes de refencia a animes)
    Jardineiro meuJardineiro;
    meuJardineiro.setNome("Jardineira Maomao");

    Cozinheiro meuCozinheiro;
    meuCozinheiro.setNome("Cozinheiro Soma");

    Fazendeiro meuFazendeiro;
    meuFazendeiro.setNome("Fazendeiro Thorfinn");

    // criando um vetor para armazenar ponteiros
    vector<Hobbit*> listaHobbits;

    // &para passar por referencia 
    listaHobbits.push_back(&meuJardineiro);
    listaHobbits.push_back(&meuCozinheiro);
    listaHobbits.push_back(&meuFazendeiro);

    cout << " Dia a dia na Comarca " << endl;

    for (int i = 0; i < listaHobbits.size(); i++) 
    {
        listaHobbits[i]->fazerAtividade();
    }

    return 0;
}
