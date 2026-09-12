#include <iostream>
using namespace std;

int combinar_equipes(int n)
{
  if(n == 0)
  {
    return 0;
  }
  else if(n == 1)
  {
    return 1;
  }
  else if(n > 1)
  {
     return combinar_equipes(n - 1) + combinar_equipes(n - 2);


}


int main()
{
  int chaveamento;
  int total;

  cout<<"Digite o tamanho do chaveamento (n): " ;

  cin>>chaveamento;

  total = combinar_equipes(chaveamento);

  cout<< "Total de cenarios de confrontos possiveis: " << total << endl;

  return 0;
}
