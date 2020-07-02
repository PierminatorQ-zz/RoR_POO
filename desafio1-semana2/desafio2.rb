class Person
    def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
    end

    def birthday
        @age += 1
        end

end

class Student < Person
    def initialize(first, last, age)
        super(first, last, age)
    end
    
    def talk
       puts "Aquí es la clase de programación con Ruby?"     
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end


end

class Teacher < Person
    def initialize(first, last, age)
        super(first, last, age)
    end
    
     def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
     end

     def introduce
     puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
     end


end

class Parent < Person
    def initialize(first, last, age)
        super(first, last, age)
    end

     def talk
        puts "Aquí es la reunión de apoderados?"
     end

     def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end

end


alumno1= Student.new('Lionel', 'Messi', 37)
profe1=Teacher.new('Cristiano', 'Ronaldo', 39)
papa1=Parent.new('Josep', 'Guardiola', 52)
