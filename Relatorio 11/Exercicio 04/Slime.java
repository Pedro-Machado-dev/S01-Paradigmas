// heranca de monstro
public class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Secar em tiras e cozinhar no caldo quente";
    }
}
