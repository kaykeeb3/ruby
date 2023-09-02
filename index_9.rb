# Exemplo de classe e métodos em Ruby
class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def saudacao
    puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
  end
end

pessoa1 = Pessoa.new("Alice", 30)
pessoa1.saudacao
