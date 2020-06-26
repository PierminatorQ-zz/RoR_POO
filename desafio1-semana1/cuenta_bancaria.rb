class CuentaBancaria 
    attr_accessor :usuario
    def initialize (nombre_usuario,numero_cuenta,vip=0)
        raise RangeError, "numero de cuenta distinto a 8 numeros" if numero_cuenta.to_s.length !=8
        @usuario=nombre_usuario
        @cuenta=numero_cuenta
        @vip = vip
    end

    def numero_de_cuenta
        print "#{@vip} - #{@cuenta}"
    end

end


cuenta = CuentaBancaria.new('Jorge',124568,1)
print cuenta.numero_de_cuenta








