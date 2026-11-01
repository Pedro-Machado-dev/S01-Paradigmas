//importando para guardar os itens do cardapio
import java.util.ArrayList;

//classe cafeleblacn
public class CafeLeblanc {
  //privado, e criado vazio
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item) {
        this.cardapio.add(item);
    }

  //metodo que usa um for each imprimindo os precos de cada item
    public void mostrarCardapio() {
        System.out.println(" Cardapio do Cafe Leblanc");
        for (ItemDoCardapio item : cardapio) {
            System.out.println(item.getNome() + " - R$ " + item.precoFinal());
        }
    }
}
