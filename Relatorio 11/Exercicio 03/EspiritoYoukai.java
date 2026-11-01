// Classe herda a interface
public class EspiritoYoukai implements Sobrenatural {
    // encaps
    private String nome;

    // construtor
    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    // sobrescrita
    @Override
    public void manifestar() {
        System.out.println("O " + nome + " surgiu no tunel para esticar as pernas");
    }
}
