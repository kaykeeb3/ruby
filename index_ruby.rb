
# Função para operação lógica "E" (AND)
def operacao_e(valor1, valor2)
  return valor1 && valor2
end

# Função para operação lógica "OU" (OR)
def operacao_ou(valor1, valor2)
  return valor1 || valor2
end

# Função para operação lógica "NÃO" (NOT)
def operacao_nao(valor)
  return !valor
end

# Exemplos de uso
puts "Operação lógica E (AND):"
puts "true AND true = #{operacao_e(true, true)}"
puts "true AND false = #{operacao_e(true, false)}"
puts "false AND true = #{operacao_e(false, true)}"
puts "false AND false = #{operacao_e(false, false)}"

puts "\nOperação lógica OU (OR):"
puts "true OR true = #{operacao_ou(true, true)}"
puts "true OR false = #{operacao_ou(true, false)}"
puts "false OR true = #{operacao_ou(false, true)}"
puts "false OR false = #{operacao_ou(false, false)}"

puts "\nOperação lógica NÃO (NOT):"
puts "NOT true = #{operacao_nao(true)}"
puts "NOT false = #{operacao_nao(false)}"
