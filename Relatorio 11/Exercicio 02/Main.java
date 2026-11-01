public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Cafe com leite, muito cremoso", 12.00); //coloquei como decimais, mas pelo que vi podia colocar inteiro que convertia
        ItemDoCardapio curry = new ItemDoCardapio("Curry Especial, muito gostoso", 35.00);
        ComboLeblanc combo = new ComboLeblanc("Combo Super Especial Cremoso & Gostoso", 47.00);

        CafeLeblanc leblanc = new CafeLeblanc();
        leblanc.adicionar(cafe);
        leblanc.adicionar(curry);
        leblanc.adicionar(combo);

        leblanc.mostrarCardapio();
    }
}
