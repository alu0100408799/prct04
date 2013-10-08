
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

  data = File.open('matriz.txt').read
  matriza, matrizb = data.split(/\n\s*\n+/) #
  to_m(matriza) #Metodo de la clase Matrices 
  to_m(matrizb) #Metodo de la clase Matrices
  
  mproducto = Array.new(matriza.length){Array.new(matrizb.length)} 
  
     #Método para multiplicar dos matrices
	for i in 0...matriza.length
	   for j in 0...matrizb.length
	     for k in 0...matriza.length
	       mproducto[i][j] = mproducto[i][j] + (matriza[i][k]*matrizb[k][j])
	     end
	   end
	 end



