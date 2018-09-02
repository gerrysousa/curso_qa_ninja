class Animal
    attr_accessor :nome, :idade, :raca

    def initialize(nome, idade, raca)
        @nome = nome
        @idade = idade
        @raca = raca
    end

    def mostra_nome
        puts @nome
    end

    def mostra_idade
        puts @idade
    end
end

class Gato < Animal
    def mia
        puts @nome +' diz: Miau...'
    end
end

class Cachorro < Animal
    def late
        puts @nome +' diz: au au...'
    end
end

class Pato < Animal
    def grasna
        puts @nome +' diz: quack quack...'
    end
end


tom = Gato.new('Tom', 5, 'Siames')
# tom.nome = 'Tom'
# tom.idade = 5

tom.mostra_nome
# tom.mostra_idade

# tom.mostra_nome
#  puts tom.mostra_idade

galfield = Gato.new('Garfield', 3, 'Preguiça')

galfield.mostra_nome

galfield.mia

spike = Cachorro.new('Spike', 10, 'Bulldog')
spike.late

patolino = Pato.new('Patolino', 12, 'Indefinida')
patolino.grasna