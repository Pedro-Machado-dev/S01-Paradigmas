//classe item do cardapio
public class ItemDoCardapio {
  //atributos privados
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

  //getter
    public String getNome() {
        return nome;
    }
  //getter
    public double getPreco() {
        return preco;
    }
 //metodo
    public double precoFinal() {
        return preco;
    }
}
