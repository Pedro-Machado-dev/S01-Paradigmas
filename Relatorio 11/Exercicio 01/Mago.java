public class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Prazer, eu sou o mago " + getNome() + " e meu feitico é: " + feitico + ".");
    }
}
