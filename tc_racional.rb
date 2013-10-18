# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase


  def setup
    @num1 = Fraccion.new(1,4)
    @num2 = Fraccion.new(1,2)
  end
  
  def test_suma
     assert_equal("3/4", @num1.suma(@num2).to_s)
     
  end

  def test_resta
     assert_equal("-1/4", @num1.resta(@num2).to_s)
  end

  def test_mult
   assert_equal("2/8", @num1.mult(@num2).to_s)
  end
  
  def test_div
    assert_equal("1/2", @num1.div(@num2).to_s)
  end
end

