//classe comboleblanc, que herda itemdocardapio
public class ComboLeblanc extends ItemDoCardapio {

  //construtor
    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }


  //sobrescreve o preco final, que da 10 de desconto
    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}
