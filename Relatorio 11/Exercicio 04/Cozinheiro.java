import java.util.ArrayList;

public class Cozinheiro {
    private String nome;
    
    // composicao
    private Panela panela;

    // agregacao
    private ArrayList<Monstro> ingredientes;

    // construtor - recebe e instancia a panela
    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    // metodo de agregacao
    public void adicionarIngrediente(Monstro monstro) {
        this.ingredientes.add(monstro);
    }

    // metodo de exibir usando o for each
    public void servirBanquete() {
        System.out.println("Rango do Cozinheiro " + nome);
        System.out.println("Feito na panela de: " + panela.getMaterial() + "\n");

        for (Monstro m : ingredientes) {
            System.out.println(" Ingrediente: " + m.getNome());
            System.out.println("  Modo de preparo: " + m.receita());
        }
    }
}
