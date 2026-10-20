#modulo contrato
module Depoente
  def depor
    raise NotImplementedError, "Implementacao"
  end
end

#modulo implementacao
module Detivel
  def ser_detido
    puts "#{@nome} foi levado(a) pela Scotland Yard."
  end
end


#classe base
class Envolvido
  #encapsulamento
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end


#classe testemunha
class TestemunhaOcular < Envolvido
  include Depoente

  def depor
    puts "#{@nome}: Eu vi uma figura misteriosa correndo na montanha zoldyck"
  end
end


#classe suspeito
class SuspeitoDoCrime < Envolvido
  include Depoente
  include Detivel

  def depor
    puts "#{@nome}: Eu tenho um alibi, estava no exame hunter a noite toda"
  end
end


#classe principal
class Investigacao
  def initialize(caso)
    @caso = caso
    @envolvidos = []
  end

  def registrar(envolvido)
    @envolvidos << envolvido
  end

  def ouvir_todos
    puts "\n Investigando o caso: #{@caso}"
    #polimorfismo
    @envolvidos.each do |e|
      e.depor
    end
  end

  def acionar_scotland_yard
    puts "\n Acionando autoridades"
    detiveis = @envolvidos.select { |e| e.respond_to?(:ser_detido) }
    detiveis.each do |d|
      d.ser_detido
    end
  end
end


#main 
#criando testemunha e suspeitos antes da investigacao
testemunha = TestemunhaOcular.new("Senhora Biscuit")
suspeito1 = SuspeitoDoCrime.new("Professor Wing")
suspeito2 = SuspeitoDoCrime.new("Ilummi")

#criacao da investigacao
investigacao = Investigacao.new("A montanha zoldyck")

#registro
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard
