/*
 * explicacao de composicao e agregacao
 * 
 * - composicao: ocorre quando a classe principal (cozinheiro) instancia e controla 
 *   o objeto interno (panela) dentro do seu proprio construtor 
 * 
 * - agregacao: ocorre quando a classe recebe objetos que já foram criados fora dela
 *   o slime e a mandragora sao criados antes do cozinheiro e apenas passados prontos pelo metodo 
 */
public class Main {
    public static void main(String[] args) {
      //instanciando os monstros antes do cozinheiro
        Slime slime = new Slime("Slime Rimuru");
        Mandragora mandragora = new Mandragora("Mandragora Berrante");

        Cozinheiro senshi = new Cozinheiro("Senshi", "Ferro de Adamantium");

        senshi.adicionarIngrediente(slime);
        senshi.adicionarIngrediente(mandragora);

        senshi.servirBanquete();
    }
}
