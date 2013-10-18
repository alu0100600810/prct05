
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :a, :b


	def initialize(a,b)   #inicialisamos, donde a es el numerador y b es el denominador
     	    @a,@b = a, b

	    mcm = gcd(a, b)
	    @a = a/mcm
	    @b = b/mcm	
        end

	


	def to_s        # devuelve una cadena con la representacion del racional
    	   "#{@a}/#{@b}"   
    	end

	def suma(other)         # Es la suma 
    	    a = (@a * other.b) + (@b * other.a)
	    b = @b * other.b
	    sum = Fraccion.new(a, b)
	   
		
    	end

	def resta(other)               # Es la resta
    	   a = (@a * other.b) - (@b * other.a)
	   b = @b * other.b
	   sum = Fraccion.new(a, b)
	  
    	end

	def mult(other)        # Esta es la multiplicacion
   	    a = @a * other.a
	    b = @b * other.b
	    sum = Fraccion.new(a, b)
            sum
   	end
	
	def div(other)
	    a = @a * other.a
	    b = @b * other.b
	    sum = Fraccion.new(a, b)
              
        end
end


a = Fraccion.new(1, 4)
b = Fraccion.new(1, 2)
puts "El valor de a es:"; puts a;
puts " El valor de b es:" ;puts b;
puts"La suma es:" ;puts a.suma(b)
puts"La resta es:" ;puts a.resta(b)
puts"La multiplicacion es:" ; puts a.mult(b)
puts" La division es :"; puts a.div(b)




