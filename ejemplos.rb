=begin
class CuentaBancaria 
        attr_accessor :saldo, :cuenta, :usuario

    def initialize(nombre_usuario, numero_cuenta, saldo=0)
        @usuario=nombre_usuario
        @cuenta = numero_cuenta
        @saldo = saldo
        
        
    end
 
    def self.arr
        ObjectSpace.each_object(self).entries
    end



    def transferir(monto,otra_cuenta)
        CuentaBancaria.new(@usuario,@cuenta,  @saldo - monto)
    end 

end


 cliente1= CuentaBancaria.new('Lionel', 657845, 5000)
 cliente2=CuentaBancaria.new('Cristiano', 885265, 5000)

 
 p2 = cliente1.transferir(1000, 885265)
pp cliente1
 pp p2

=end


class Alumnos
    attr_accessor :nombre, :notas
    def initialize (nombre, notas)
        @nombre = nombre
        @notas = notas
    end

    def promedio
        @notas.sum / @notas.count
    end
end


alumnos = []

5.times do |x|
  nombre="Alumno_#{x}"
  notas= [rand(1..7),rand(1..7),rand(1..7),rand(1..7)]
  alumno = Alumnos.new(nombre, notas)
  alumnos.push(alumno)
end

pp alumnos[0]