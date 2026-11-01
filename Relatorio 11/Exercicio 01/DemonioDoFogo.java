public class DemonioDoFogo extends Morador {

    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Eu sou " + getNome() + " e sou e que faco esse castelo andar"); //mensagem pedida pelo exercicio
    }
}
