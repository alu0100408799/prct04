data = File.open('matriz.txt').read
matrizc = Array.new

matriza, matrizb = data.split(/\n\s*\n+/)

  def mapmap(matriz)
    matriz.map { |r| 
      r.map { |e| 
	yield e
      }
    }
  end

  def to_m(matriz)
    matriz = matriz.split(/\n/)
    matriz = matriz.map { |r| r.split(/\s+/) }
    matriz = mapmap(matriz) { |x| x.to_i } 
  end

matriza = to_m(matriza)
matrizb = to_m(matrizb)

m = matriza.size
n = matriza[0].length

for i in 0...m do
  matrizc[i] = Array.new
  for j in 0...n do
    matrizc[i][j] = 0
  end
end
           
    for i in 0...m do
      for j in 0...n do
	matrizc[i][j] = matriza[i][j] + matrizb[i][j]
      end
    end


puts "\n El resultado de la suma es :"
matrizc.each do |fila|
   puts fila.join(" ")
end

