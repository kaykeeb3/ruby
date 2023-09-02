# Algoritmo de busca linear em um array
def busca_linear(array, alvo)
  array.each_with_index do |elemento, indice|
    return indice if elemento == alvo
  end
  return nil
end

lista = [1, 3, 5, 7, 9]
alvo = 5

resultado = busca_linear(lista, alvo)
puts "O alvo #{alvo} foi encontrado na posição #{resultado}" if resultado
