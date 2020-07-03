module Habilidades

    module Volador
        def volar
        puts 'Estoy volandooooo!'
        end

        def aterrizar
        puts 'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
        puts 'Estoy nadando!'
        end

        def sumergir
        puts 'glu glub glub glu'
        end

    end

    module Caminante
        def caminar
        puts 'Puedo caminar!'
        end
    end

end

module Alimentacion
    module Herbivoro
        def comer
        puts 'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
        puts 'Puedo comer carne!'
        end
    end

end


class Animal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre=nombre
    end
end

class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Habilidades::Nadador
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Habilidades::Volador

end

class Insecto < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Habilidades::Volador

end



class Pinguino < Ave
    
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    
    include Alimentacion::Herbivoro
end

class Pato < Ave
   
    include Alimentacion::Herbivoro
end

class Perro < Mamifero
    
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    
    include Alimentacion::Herbivoro
end

class Mosca < Insecto
    
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    
    include Alimentacion::Herbivoro
end

