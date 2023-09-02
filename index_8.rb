# Algoritmo de ordenação por bolha
def ordenacao_bolha(array)
  n = array.length
  loop do
    trocado = false
    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        trocado = true
      end
    end
    break unless trocado
  end
  array
end

lista = [64, 34, 25, 12, 22, 11, 90]
puts "Lista não ordenada: #{lista}"
puts "Lista ordenada: #{ordenacao_bolha(lista)}"
