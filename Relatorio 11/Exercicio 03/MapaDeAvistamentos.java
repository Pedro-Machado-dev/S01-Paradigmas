import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    // construtor sem parametros que inicializa o mapa vazio
    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    // metodo para guardar o ser
    public void registrar(String local, Sobrenatural ser) {
        this.avistamentos.put(local, ser);
    }

    // metodo para buscar o ser
    public void investigar(String local) {
        System.out.println("Caçando: " + local + "...");
        Sobrenatural serEncontrado = this.avistamentos.get(local);

        if (serEncontrado == null) {
            System.out.println("Tudo tranquilo por aqui, sem velhas ou  alieniginas\n");
        } else {
            serEncontrado.manifestar();
            System.out.println();
        }
    }
}
