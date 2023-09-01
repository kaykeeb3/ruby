# Exemplo de loop com while
contador = 1
while contador <= 10
  puts "Contagem: #{contador}"
  contador += 1
end

# Exemplo de loop com for
for i in 1..5
  puts "Número: #{i}"
end

# Exemplo de função
def saudacao(nome)
  puts "Olá, #{nome}!"
end

saudacao("Alice")
saudacao("Bob")

# Exemplo de classe
class Animal
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def info
    puts "#{nome} tem #{idade} anos de idade."
  end
end

cachorro = Animal.new("Rex", 3)
cachorro.info

# Exemplo de manipulação de array
frutas = ["maçã", "banana", "laranja"]
frutas.each do |fruta|
  puts "Gosto de #{fruta}"
end

# Exemplo de condicional
idade = 18
if idade >= 18
  puts "Você é maior de idade."
else
  puts "Você é menor de idade."
end
