#include <iostream>
#include <iomanip>

using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho)
{
  float probabilidadetot = 1.0;

  for(int i=0; i<tamanho; i++)
    {
      probabilidadetot *= probabilidades[i];
    }
  
  return probabilidadetot;
}

int main()
{
  int componentes;
  float confiabilidade;
  cout << "Digite a quantidade de componentes do sistema: ";

  cin >> componentes;

  float probabilidades[componentes];

  for(int i=0; i<componentes; i++)
  {
    cout << "Digite a probabilidade do componente " << i + 1 << " (ex: 0.95): ";
    cin >> probabilidades[i];
  }

  confiabilidade = calcular_confiabilidade_sistema(probabilidades, componentes);

  cout<< fixed << setprecision(4) << "Confiabilidade total do sistema: " << confiabilidade;
  cout << fixed << setprecision(2) << " (" << (confiabilidade * 100) << "%)" << endl;

  return 0;
}
