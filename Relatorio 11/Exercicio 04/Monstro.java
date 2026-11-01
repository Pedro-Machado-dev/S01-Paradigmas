// classe abstrataa
public abstract class Monstro {
    // encaps
    private String nome;

    // construtor
    public Monstro(String nome) {
        this.nome = nome;
    }

    // getter
    public String getNome() {
        return nome;
    }

    // metodo abstrato
    public abstract String receita();
}
