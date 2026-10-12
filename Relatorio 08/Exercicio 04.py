from abc import ABC, abstractmethod

# interface(segui o exemplo do exemplo.py)
class IUnidadeDeRede(ABC):

    @abstractmethod
    def executar_invasao(self):
        pass


#classe parte 
class Cyberdeck:

    #construtor
    def __init__(self, modelo: str):
        self.modelo = modelo


#implementacao com composicao
class OperadorNetrunner(IUnidadeDeRede):

    #construtor
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        #composicao
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    #implementacao obrigatoria 
    def executar_invasao(self):
        print(f"Netrunner {self.nome} usando {self.cyberdeck.modelo} esta quebrando o gelo (ICE) de um servidor.")


class DroneDeVigilancia(IUnidadeDeRede):

    #construtor
    def __init__(self, codigo: str):
        self.codigo = codigo

    #implementacao obrigatoria
    def executar_invasao(self):
        print(f"Drone {self.codigo} esta interceptando o sinal da rede.")


#agregacao
class CelulaHacker:

    #construtor
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        #agregacao: a celula recebe membros que ja existem independentemente dela
        self.membros = membros

    def iniciar_ataque(self):
        print(f"A célula {self.nome} iniciou o ataque!")
        
        #polimorfismo
        for membro in self.membros:
            membro.executar_invasao()


if __name__ == "__main__":
    
    print(" Inicializando Unidades ")
    
    #unidades independentes criadas antes da celula
    netrunner = OperadorNetrunner("T-Bug", "Militech Paraline")
    drone = DroneDeVigilancia("DRN-77")

    print("\n Formando a Celula Hacker ")
    #agregacao
    celula_voodoo = CelulaHacker("Voodoo Boys", [netrunner, drone])
    
    print("\n Executando Invasao ")
    celula_voodoo.iniciar_ataque()

    #erro intencional
    #Interfaces nao podem ser instanciadas diretamente.
    
    #unidade_falha = IUnidadeDeRede()
