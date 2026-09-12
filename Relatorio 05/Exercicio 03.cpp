#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
  float capacidade;
  float carga = 0.0;
  float peso;
  int opcao;

  cout << "Informe a capacidade maxima de carga do drone (kg): ";
  cin >> capacidade;

  do
  {
    cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
    cout << "1. Verificar Carga" << endl;
    cout << "2. Carregar Pacote" << endl;
    cout << "3. Descarregar Pacote" << endl;
    cout << "4. Encerrar Operacao" << endl;
    cout << "Escolha uma opcao: ";
    cin >> opcao;

    if(opcao == 1)
    {
      cout << fixed << setprecision(2) << "Carga Atual: " << carga << " kg / " << capacidade << " kg" << endl;
      cout << fixed << setprecision(2) << "Espaco Disponivel: " << capacidade - carga << " kg" << endl;
    }
    else if(opcao == 2)
    {
      cout << "Digite o peso do pacote a ser carregado (kg): ";
      cin >> peso;

      if(carga + peso > capacidade)
      {
        cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
      }
      else
      {
        carga += peso;
        cout << "Pacote adicionado com sucesso!" << endl;
      }
    }
    else if(opcao == 3)
    {
      cout << "Digite o peso a ser removido (kg): ";
      cin >> peso;

      if(carga - peso < 0.0)
      {
        cout << "Alerta: Nao e possivel remover mais peso do que o atual! Operacao cancelada." << endl;
      }
      else
      {
        carga -= peso;
        cout << "Pacote removido com sucesso!" << endl;
      }
    }
    else if(opcao == 4)
    {
      cout << "Encerrando sistema de telemetria..." << endl;
    }
  } while(opcao != 4);

  return 0;
}
