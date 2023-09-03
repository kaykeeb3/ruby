# 1. Símbolos
sym = :exemplo
puts sym

# 2. Operador ternário
idade = 20
status = (idade >= 18) ? "Maior de idade" : "Menor de idade"
puts status

# 3. Interpolação de strings
animal = "gato"
puts "O #{animal} é um animal doméstico."

# 4. Range
numeros = (1..10).to_a
puts numeros

# 5. Iteradores
(1..5).each do |num|
  puts "Número: #{num}"
end

# 6. Método each_with_index
frutas = ["maçã", "banana", "laranja"]
frutas.each_with_index do |fruta, index|
  puts "Índice #{index}: #{fruta}"
end

# 7. Bloco
def executa_bloco
  yield if block_given?
end
executa_bloco { puts "Isso é um bloco." }

# 8. Lambda
soma = lambda { |a, b| a + b }
resultado = soma.call(3, 4)
puts "Resultado: #{resultado}"

# 9. Método de classe
class Calculadora
  def self.soma(a, b)
    return a + b
  end
end
puts "Soma: #{Calculadora.soma(3, 4)}"

# 10. Método de instância
class Pessoa
  def initialize(nome)
    @nome = nome
  end

  def saudacao
    puts "Olá, meu nome é #{@nome}."
  end
end
pessoa = Pessoa.new("Alice")
pessoa.saudacao

# 11. Atributos de leitura e escrita
class Carro
  attr_accessor :modelo
  def initialize(modelo)
    @modelo = modelo
  end
end
carro = Carro.new("Sedan")
puts "Modelo do carro: #{carro.modelo}"
carro.modelo = "SUV"
puts "Novo modelo do carro: #{carro.modelo}"

# 12. Módulos como namespaces
module Veiculo
  class Carro
    def dirigir
      puts "Dirigindo o carro."
    end
  end
end
carro = Veiculo::Carro.new
carro.dirigir

# 13. Mixins
module Mover
  def mover
    puts "Movendo..."
  end
end

class Pato
  include Mover
end
pato = Pato.new
pato.mover

# 14. Acessores personalizados
class Pessoa
  def initialize(nome)
    @nome = nome
  end

  def nome
    @nome.capitalize
  end
end
pessoa = Pessoa.new("maria")
puts "Nome da pessoa: #{pessoa.nome}"

# 15. Operador de concatenação
mensagem = "Olá" << " Mundo!"
puts mensagem

# 16. Manipulação de strings
texto = "Ruby é divertido!"
puts texto.upcase
puts texto.downcase

# 17. Manipulação de arrays
numeros = [3, 1, 2]
numeros.sort!
puts "Números ordenados: #{numeros}"

# 18. Estruturas de controle case
dia_semana = "segunda"
case dia_semana
when "segunda", "terça", "quarta", "quinta", "sexta"
  puts "Dia de trabalho"
when "sábado", "domingo"
  puts "Final de semana"
else
  puts "Dia inválido"
end

# 19. Expressões regulares
texto = "Ruby 3.0 é a última versão."
resultado = texto.match(/\d+\.\d+/)
puts "Versão Ruby: #{resultado}"

# 20. Manipulação de arquivos CSV
require 'csv'

CSV.open("dados.csv", "w") do |csv|
  csv << ["Nome", "Idade"]
  csv << ["Alice", 30]
  csv << ["Bob", 25]
end

CSV.foreach("dados.csv", headers: true) do |row|
  puts "#{row['Nome']} tem #{row['Idade']} anos."
end

# 21. Hash com valores padrão
pessoa = Hash.new("Desconhecido")
puts "Nome: #{pessoa['nome']}"

# 22. Uso de splat (*) em métodos
def listar_itens(*itens)
  itens.each { |item| puts item }
end
listar_itens("item1", "item2", "item3")

# 23. Operadores lógicos
a = true
b = false
puts "a AND b: #{a && b}"
puts "a OR b: #{a || b}"
puts "NOT a: #{!a}"

# 24. Alias de método
class Pessoa
  def saudacao
    puts "Olá!"
  end
  alias cumprimento saudacao
end
pessoa = Pessoa.new
pessoa.cumprimento

# 25. Constantes
PI = 3.14159
puts "O valor de PI é #{PI}"

# 26. Manipulação de exceções
begin
  resultado = 10 / 0
rescue ZeroDivisionError => e
  puts "Erro: #{e.message}"
end

# 27. Closures
def criar_contador
  contador = 0
  return lambda { contador += 1 }
end
contador = criar_contador
puts contador.call
puts contador.call

# 28. Uso de módulos em classes
module Identificavel
  def identificar
    puts "Eu sou um #{self.class}"
  end
end
class Animal
  include Identificavel
end
animal = Animal.new
animal.identificar

# 29. Uso de self
class Pessoa
  def self.dizer_ola
    puts "Olá do método de classe!"
  end
end
Pessoa.dizer_ola

# 30. Refatoração de código em blocos
nomes = ["Ana", "Maria", "João"]
nomes_maiusculos = nomes.map { |nome| nome.upcase }
puts nomes_maiusculos

