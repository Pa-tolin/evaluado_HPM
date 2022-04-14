# Ejercicio 1
class Person

    attr_accessor :first_name, :last_name

    def initialize(first, last)
      @first_name = first
      @last_name = last
    end

    def introduce
        "Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Student < Person

    def talk
        "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor." + super+''
    end

end

class Teacher < Person

    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos." +super+'' 
    end

end

class Parent < Person

    def talk
        "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados." + super+'' 
    end
end

estudiante = Student.new('Javier','Tolrraz')
puts estudiante.talk
puts estudiante.introduce


profesor = Teacher.new('Boris','Arco')
puts profesor.talk
puts profesor.introduce


apoderado = Parent.new('Ignacio','Lucero')
puts apoderado.talk
puts apoderado.introduce


