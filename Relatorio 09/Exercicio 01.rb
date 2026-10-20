#classe base
class CoquetelAfterlife
  #encapsulamento
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco 
  end

  #getter
  def preco
    @_preco
  end

  #setter
  def preco=(valor)
    if valor.is_a?(Numeric) && valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!" 
    end
  end

  def ficha
    "Drink: #{@nome} | Preço: €$#{@_preco}"
  end
end


#heranca
class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  #super
  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  #sobrescrita
  def ficha
    "#{super} | Lenda: #{@lenda}"
  end
end


#main 
coquetel_comum = CoquetelAfterlife.new("Pitu", 25)
drink_lenda1 = DrinkDeLenda.new("Johnny", 50, "Johnny")
drink_lenda2 = DrinkDeLenda.new("David", 35, "David")

drinks_do_bar = [coquetel_comum, drink_lenda1, drink_lenda2]

puts "Fichas dos Drinks"

drinks_do_bar.each do |drink|
  puts drink.ficha
end

puts "\n Testando Reajuste de Preços"

drink_lenda1.preco = 500

drink_lenda1.preco = 80

puts drink_lenda1.ficha

#Testando Alteração de Atributo Apenas Leitura"
#tentativa de alterar o nome
# A linha 'drink_lenda2.nome = ...' foi comentada para evitar o erro e o programa voltar a rodar"
