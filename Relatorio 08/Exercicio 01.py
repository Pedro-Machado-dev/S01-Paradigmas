class MortoVivo:

    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome          #publico
        self._almas = almas       #protegido
        self.__estus = estus      #privado

    #getter
    def get_estus(self):
        return self.__estus

    #setter
    def set_estus(self, quantidade: int):
        if 0 <= quantidade <= 10:
            self.__estus = quantidade
        else:
            print("Quantidade de Estus invalida")

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"


#heranca
class Clerigo(MortoVivo):

    def __init__(self, nome: str, almas: int, estus: int, milagre: str):
        #chama o construtor da classe pai
        super().__init__(nome, almas, estus)
        self.milagre = milagre   

    #sobrescrita
    def mostrar_status(self):
        status_pai = super().mostrar_status()
        return f"{status_pai} | Milagre: {self.milagre}"


if __name__ == "__main__":
 
    petrus = Clerigo("Petrus", 2000, 5, "Curar")
    
    print("Status Inicial ")
    print(petrus.mostrar_status())

    print("\n Testando Setter (15)")
    petrus.set_estus(15)  #deve falhar

    print("\n Testando Setter (10)")
    petrus.set_estus(10)  #deve funcionar

    print("\n Status Final ")
    print(petrus.mostrar_status())
