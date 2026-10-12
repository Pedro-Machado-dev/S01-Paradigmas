class Persona:

    #construtor
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona {self.nome} do arcano {self.arcano} invocada!")


class Aliado:

    #construtor
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome


#classe principal
class Lider:

    #construtor
    def __init__(self, codinome: str):
        self.codinome = codinome
        #composicao
        self.persona = Persona("Arsene", "Louco")
        self._equipe: list[Aliado] = []

    #metodo para agregacao
    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"O Palacio de {palacio} foi invadido!")
        
        self.persona.invocar()
        
        print("Equipe atual:")
        for membro in self._equipe:
            print(f" -> {membro.codinome} (Nome real: {membro.nome})")


if __name__ == "__main__":
    
    print(" Inicializando a equipe ")
    
    #objetos independentes
    ryuji = Aliado("Ryuji Sakamoto", "Skull")
    ann = Aliado("Ann Takamaki", "Panther")
    
    #objeto principal
    joker = Lider("Joker")

    print("\n Recrutando ")
    joker.recrutar(ryuji)
    joker.recrutar(ann)

    print("\n Infiltracao ")
    joker.infiltrar("Kamoshida")

    """
    explicacao:
    - composicao: A arsene foi criada diretamente do construtor 
      da classe lider, isso significa que ela nao existe fora do lider. se o Lider deixar de 
      existir, ela deixa de existir tbm
    
    - agregacao : Os objetos aliado foram criados na main, totalmente 
      independentes do lider, eles foram apenas adicionados a lista _equipe depois. se o lider 
      ou a lista _equipe deixarem de existir, os continuam existindo
    """
