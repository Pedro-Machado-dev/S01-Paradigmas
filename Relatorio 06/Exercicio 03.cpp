#include <iostream>
#include <string>

using namespace std;

// criando a classe 
class MembroInatel 
{
protected: 
    // protected permite que apenas essa classe e as suas filhas acessem o atributo
    string nome;

public:
    // metodo setter para o nome
    void setNome(string n) 
    {
        nome = n;
    }

    // metodo virtual
    virtual void seApresentar() 
    {
        cout << "Sou um membro da comunidade Inatel: " << nome << endl;
    }
};

// criando a classe aluno que herda MembroInatel
class Aluno : public MembroInatel 
{
private:
    string curso;

public:
    // metodo setter para o curso
    void setCurso(string c) 
    {
        curso = c;
    }
    void seApresentar() override 
    {
        cout << "Meu nome é " << nome << " e estudo no curso de " << curso << endl;
    }
};

// criando a classe professor que herda MembroInatel
class Professor : public MembroInatel 
{
private:
    string disciplina;

public:
    // metodo setter para a disciplina
    void setDisciplina(string d) 
    {
        disciplina = d;
    }

    void seApresentar() override 
    {
        cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << endl;
    }
};

int main() 
{
    // instanciando os objetos das classes filhas
    Aluno meuAluno;
    Professor meuProfessor;

    // atribuindo valores ao aluno
    meuAluno.setNome("Pedro");
    meuAluno.setCurso("Engenharia de Software");

    // atribuindo valores ao Professor
    meuProfessor.setNome("Felipe Emanoel");
    meuProfessor.setDisciplina("Calculo 03");

    // chamando o metodo seApresentar
    cout << " Apresentacoes " << endl;
    meuAluno.seApresentar();
    meuProfessor.seApresentar();

    return 0;
}
