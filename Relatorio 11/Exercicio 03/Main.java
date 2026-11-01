public class Main {
    public static void main(String[] args) {
        // instanciando os aliens e espiritos
        Alienigena alien = new Alienigena("Tico Bigulim");
        EspiritoYoukai youkai = new EspiritoYoukai("Vovó turbo");

        // criando o mapa e registrando os locais
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Hospital abandonado", alien);
        mapa.registrar("Tunel da cidade", youkai);

        // investigando os dois locais registrados e um terceiro não registrado
        mapa.investigar("Hospital abandonado");
        mapa.investigar("Tunel da cidade");
        mapa.investigar("Casa da Seiko");
    }
}
