# Exemplo de conjunto (set) em Ruby
require 'set'

conjunto = Set.new([1, 2, 3, 4, 4, 5, 5])

# Imprimindo elementos únicos do conjunto
conjunto.each do |elemento|
  puts elemento
end
