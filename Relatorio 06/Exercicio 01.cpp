#include <iostream>
#include <string>

using namespace std;

// criando a classe banda
class Banda 
{
public: //metodo de acesso/encapsulamento
    // definindo os atributos
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    // criando o construtor com os parametros
    Banda(string n, int i, float p, int e) 
    {
        nome = n;
        integrantes = i;
        potenciaSom = p;
        energia = e;
    }

    // método ou acao de duelar
    void duelar(Banda& rival) 
    {  
      
        cout << "A banda " << nome << " iniciou a sua apresentação e duelando contra a banda " << rival.nome << endl;
        
        // converter o float para int
        rival.energia -= (int)potenciaSom;
    }
};

int main() 
{
    Banda bandaDesafiante("Pearl Jam", 4, 35.5f, 100);
    Banda bandaRival("Three Days Grace", 5, 42.0f, 100);

    // executando a acao/metodo
    bandaDesafiante.duelar(bandaRival);

    cout << " Status Atualizado " << endl;
    cout << "Energia da banda " << bandaDesafiante.nome << ": " << bandaDesafiante.energia << endl;
    cout << "Energia da banda " << bandaRival.nome << ": " << bandaRival.energia << endl;

    return 0;
}
