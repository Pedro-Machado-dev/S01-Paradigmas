// heranca de monstro
public class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cortar a cabeça antes que grite, fatiar as raízes e fritar";
    }
}
