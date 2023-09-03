# 1. Saída básica
puts "Olá, Mundo!"

# 2. Variáveis
nome = "João"
idade = 30
puts "Meu nome é #{nome} e tenho #{idade} anos."

# 3. Entrada de dados
print "Digite seu sobrenome: "
sobrenome = gets.chomp
puts "Seu sobrenome é #{sobrenome}."

# 4. Estruturas condicionais
if idade >= 18
  puts "Você é maior de idade."
else
  puts "Você é menor de idade."
end

# 5. Loops
10.times do |i|
  puts "Contagem: #{i + 1}"
end

# 6. Arrays
frutas = ["maçã", "banana", "laranja"]
puts "Minha fruta favorita é #{frutas[0]}."

# 7. Hashes (Dicionários)
pessoa = { nome: "Maria", idade: 25 }
puts "#{pessoa[:nome]} tem #{pessoa[:idade]} anos."

# 8. Funções
def saudacao(nome)
  puts "Olá, #{nome}!"
end
saudacao("Pedro")

# 9. Escopo de variáveis
x = 10
def exibir_x
  puts x # Isso vai gerar um erro, pois x não está no escopo local
end
exibir_x

# 10. Comentários
# Este é um comentário de uma linha

=begin
Este é um comentário
de múltiplas linhas
=end

# 11. Concatenação de strings
mensagem = "Bom" + "dia"
puts mensagem

# 12. Operadores matemáticos
num1 = 10
num2 = 5
soma = num1 + num2
puts "A soma de #{num1} e #{num2} é #{soma}."

# 13. Estruturas de repetição
for i in 1..5
  puts "Número: #{i}"
end

# 14. Break e Next
for i in 1..10
  next if i % 2 == 0
  puts "Ímpar: #{i}"
end

# 15. Arrays multidimensionais
matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matriz[1][1] # Saída: 5

# 16. Funções recursivas
def fatorial(n)
  if n <= 1
    return 1
  else
    return n * fatorial(n - 1)
  end
end
puts "Fatorial de 5: #{fatorial(5)}"

# 17. Manipulação de arquivos
File.open("exemplo.txt", "w") do |file|
  file.puts "Este é um arquivo de exemplo."
end
conteudo = File.read("exemplo.txt")
puts "Conteúdo do arquivo: #{conteudo}"

# 18. Classes e objetos
class Pessoa
  attr_accessor :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end
pessoa1 = Pessoa.new("Ana", 28)
puts "#{pessoa1.nome} tem #{pessoa1.idade} anos."

# 19. Herança
class Estudante < Pessoa
  def estudar
    puts "#{nome} está estudando."
  end
end
estudante1 = Estudante.new("Carlos", 20)
estudante1.estudar

# 20. Módulos
module Matematica
  def self.soma(a, b)
    return a + b
  end
end
puts "Soma: #{Matematica.soma(3, 4)}"
