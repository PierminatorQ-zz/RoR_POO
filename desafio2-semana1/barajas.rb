
require_relative 'carta.rb'

class Baraja
    attr_accessor :cartas
    def initialize()
        @cartas = Array.new

        pintas =['C', 'D', 'E', 'F']
         pintas.each do |pintas|
            13.times do |i|
                carta_t=Carta.new(i+1, pintas)
                @cartas.push(carta_t)
            end

         end
        
    end

    def barajar
        @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir
        @mano=@cartas.shuffle.pop(5)
    end
end


bar_1=Baraja.new




