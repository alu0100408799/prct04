#!/usr/bin/env ruby

class Matrices
	#Método de la clase Matrices que recibe el valor de la columna y la fila por parte del usuario
	def FilasColums (filas,colums)
	    puts "Escriba el número de filas"
	    @filas = gets.split("\n")
	    puts "Escriba el número de columnas"
	    @colums = gets.split("\n")
	end
	#Método que contine el valor de las filas
	def TFilas
	  @filas
	end
	#Método que contiene el valor de las columnas
	def TColumnas
	  @colums
	end
       #Método que rellena el Array recibiendo los valores por parte del usuario
	def Initialize(filas, columnas)
	    @Matriz = Array.new(filas){Array.new(columnas)} 
	
	    for i in 0..filas-1
	      for j in 0..columnas-1
		  STDOUT.flush #Vacia el Buffer
		  @Matriz[i][j] = gets.chomp
	      end
	    end
	end
	#Método que contiene los valores del Array
	def TMatriz
	  @Matriz
	end
end

#Método para multiplicar dos matrices
      def MMultiplicar()
	for i in 0..MA.TMatriz.length-1
	   for j in 0..MB.TMatriz.length-1
	     for k in 0..MProducto.length-1
	       MProducto[i][j] = MProducto[i][j].to_i + (MA.TMatriz[i][k].to_i*MB.TMatriz[k][j].to_i)
	     end
	   end
	 end
      end

  MA = Matrices.new
  MA.FilasColums(0, 0)
  MA.Initialize(MA.TFilas[0].to_i,MA.TColumnas[0].to_i)
  MB = Matrices.new
  MB.FilasColums(0,0)
  MB.Initialize(MB.TFilas[0].to_i,MB.TColumnas[0].to_i)

  MProducto = Array.new(MA.TFilas[0].to_i){Array.new(MB.TColumnas[0].to_i)}
  MMultiplicar()
  
  puts MProducto.join(" ")