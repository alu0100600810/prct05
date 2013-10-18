
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

	attr_reader :x, :y


	 def initialize(x,y)
     	    @x,@y = x, y
     	 end

	def to_s        # Return a String that represents this point
    	   "(#@x,#@y)"   # Just interpolate the instance variables into a string
    	end

	def +(other)         # Define + to do vector addition
    	    Point.new(@x + other.x, @y + other.y)
    	end

	def -@               # Define unary minus to negate both coordinates
    	    Point.new(-@x, -@y)
    	end

	def *(scalar)        # Define * to perform scalar multiplication
   	    return Point.new(@x*scalar,   @y*scalar) if scalar.is_a? Numeric
    	    return Point.new(@x*scalar.x, @y*scalar.y) if scalar.is_a? Point
   	 end
end
