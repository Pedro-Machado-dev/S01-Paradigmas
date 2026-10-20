#classe
class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem '#{mensagem}' enviada para o passado!"
  end
end


#classe 
class MembroDoLab
  #encapsulamento
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end


#classe principal
class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new 
    @membros = [] 
  end

  def admitir(membro)
    @membros << membro 
    puts "Membro admitido: #{membro.numero} - #{membro.nome}"
  end

  def experimento(mensagem)
    puts "\n Iniciando experimento"
    @membros.each do |m|
      puts "Presente: #{m.numero} - #{m.nome}" 
    end
  
    @phonewave.enviar_dmail(mensagem) 
  end
end


#main 
#criando dois membros do lab
membro1 = MembroDoLab.new("001", "Okabe Rintarou")
membro2 = MembroDoLab.new("002", "Shina Mayuri")

#criacao do lab
lab = LaboratorioDeGadgets.new

#admissao
lab.admitir(membro1)
lab.admitir(membro2)


lab.experimento("El Psy Kongroo.")


# explicação sobre composicao e agregacao
# composicao: ocorre com o objeto phonewave, instanciado diretamente 
# dentro do metodo da classe laboratoriodegadgets, isso cria uma 
# dependencia total, o aparelho so existe dentro do laboratorio, se o 
# laboratorio deixar de existir, o phonewave é destruído com ele
#
# agregacao: ocorre com os objetos da classe membrolab, eles sao instanciados 
# no main de forma independente, antes do laboratório existir, eles sao apenas 
# passados como referência para dentro do laboratório, é uma ligação fraca,
# se o laboratório fechar, os membros continuam a existir fora dele
