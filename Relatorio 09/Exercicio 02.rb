#classe base
#abstracao
class Instrumentista
  #encapsulamento
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "#{self.class} deve implementar o método interpretar"
  end
end


#heranca
class Solista < Instrumentista
  #sobrescrita
  def interpretar(peca)
    puts "#{@nome} (#{@instrumento}) tocando #{peca}: conduz a melodia"
  end
end


#heranca
class Acompanhador < Instrumentista
  #sobrescrita
  def interpretar(peca)
    puts "#{@nome} (#{@instrumento}) tocando #{peca}: acompanha o ritmo"
  end
end


#agregacao
class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  #polimorfismo
  def reger(peca)
    puts "\nRegente #{@nome} inicia a peça: #{peca}"
    @orquestra.each do |m|
      m.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |m| "#{m.class} - #{m.nome}" }
  end
end


#main 
solista = Solista.new("Kaori", "Violino")
acompanhador = Acompanhador.new("Kousei", "Piano")
regente = Regente.new("Hiroko")

regente.convocar(solista)
regente.convocar(acompanhador)

regente.reger("Introdução")

puts "\nEscalação"
textos_escalacao = regente.escalacao
textos_escalacao.each do |texto|
  puts texto
end

#teste de erro de abstracao
#tentativa de chamar metodo na classe base
base = Instrumentista.new("Emi", "Piano")
#base.interpretar("Opening")
