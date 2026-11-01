public class Main {
    public static void main(String[] args) {

        //instanciacao
        Morador howl = new Mago("Qifrey", "Feitiço da agua"); //mudei os nomes do mago e do denomio por nn ter visto o filme ainda
        Morador calcifer = new DemonioDoFogo("Ifrit");

        howl.apresentar();
        calcifer.apresentar();

        // passo 5 - tentativa de criar um objeto Morador diretamente
        // Morador Ippo = new Morador("Ippo");
    }
}
