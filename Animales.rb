# Ejercicio 2
module Habilidades
    
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end 
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end  
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'    
        end   
    end
end


module Alimentacion

    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end   
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end     
    end
end

#Crear la clase Animal 
class Animal 
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end
 
#Crear las clases Ave,Mamifero e Insecto. 
class Ave < Animal
    include Habilidades::Caminante
end

class Mamifero < Animal

end

class Insecto < Animal
    include Habilidades::Volador
end

#Crear las clases Pinguini,Paloma y Pato 
#Incluye los módulos en cada subclase utilizando la instrucción include 

class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro    
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
end

#Crear las clases Perro,Gato y Vaca. Las tres heredan de Mamifero

class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

#Crear las clases Mosca,Mariposa y Abeja. las tres heredan de Insecto

class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
end

#aves

willy = Pinguino.new('Willy')
puts willy.nombre
puts willy.comer
puts willy.nadar
puts willy.sumergir
puts "\n"

picasso = Paloma.new('Picasso')
puts picasso.nombre
puts picasso.comer
puts picasso.volar
puts picasso.aterrizar
puts picasso.caminar
puts "\n"

lucas = Pato.new('Lucas')
puts lucas.nombre
puts lucas.volar
puts lucas.caminar
puts lucas.nadar
puts lucas.sumergir
puts "\n"

#mamiferos

polo = Perro.new("Polo")
puts polo.nombre
puts polo.comer
puts polo.caminar
puts "\n"

silvestre = Gato.new("Silvestre")
puts silvestre.nombre
puts silvestre.comer
puts silvestre.caminar
puts "\n"

loca = Vaca.new("Loca")
puts loca.nombre
puts loca.comer
puts loca.caminar
puts "\n"

#Insectos

don = Mosca.new("Don")
puts don.nombre
puts don.volar
puts "\n"

maya = Abeja.new("Maya")
puts maya.nombre
puts maya.volar
puts "\n"

maria = Mariposa.new("Maria")
puts maria.nombre
puts maria.volar
puts "\n"