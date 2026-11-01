//classe que 
public class Alienigena implements Sobrenatural {
    // encapsulamento
    private String nome;

    // construtor
    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println("O " + nome + " apareceu e tentou abduzir bolas...");
    }
}
