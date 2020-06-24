
 class Carta 
attr_accessor :numero, :pinta
    def initialize (numero, pinta)
        @numero=numero
        @pinta=pinta
    end

end 

cartas=[]
letter= ['C', 'D', 'E', 'T']




5.times do
    num_rand= rand(1..13)
    pin_rand= letter.sample()

     cartas.push( Carta.new( num_rand, pin_rand) )

    
end

pp cartas
