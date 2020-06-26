
class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre,cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        @cuentas.map {|x| x.saldo}.sum
    end

end




class CuentaBancaria 
    attr_accessor :banco, :saldo, :cuenta

    def initialize(nombre_banco, numero_cuenta, saldo=0)
        @banco = nombre_banco
        @cuenta = numero_cuenta
        @saldo = saldo
        
        
    end

    def transferir(monto,otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end

end


cliente1 = CuentaBancaria.new('BCI', 657845, 5000)
cliente2 = CuentaBancaria.new('Estado', 885265, 5000)



usuario = Usuario.new('Lionel', [cliente1, cliente2])

print usuario.saldo_total










