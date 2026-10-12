class HeroiOverwatch:

    #construtor
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    #metodo generico que sera sobrescrito pelas classes filhas
    def usar_suprema(self):
        print(f"[{self.codinome}] usou uma suprema generica!")


#heranca
class HeroiTanque(HeroiOverwatch):
  
    def usar_suprema(self):
        print(f"[{self.codinome}] usou sua suprema de Tanque: Escudo massivo ativado!")


#heranca
class HeroiSuporte(HeroiOverwatch):

    
    #sobrescrita
    def usar_suprema(self):
        print(f"[{self.codinome}] usou sua suprema de Suporte: Bonus de vida para todos!")

    #metodo exclusivo
    def curar_equipe(self):
        print(f" -> {self.codinome} esta curando os aliados ao redor!")


if __name__ == "__main__":
    
    print(" Inicializando Heróis ")
    
    #objetos das classes filhas
    reinhardt = HeroiTanque("Reinhardt", "Tanque")
    mercy = HeroiSuporte("Mercy", "Suporte")

    #polimorfismo
    equipe: list[HeroiOverwatch] = [reinhardt, mercy]

    print("\n Testando Habilidades na Batalha ")
    
    for heroi in equipe:
    
        heroi.usar_suprema()
        
        #checagem
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()
        
        print("-" * 30)
