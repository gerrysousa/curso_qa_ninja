# def imprime_nome
#     puts 'Gerry'
# end

# def imprime_idade
#     puts 28
# end

# imprime_idade
# imprime_idade

# def soma(v1, v2)
#     puts v1+v2
# end

# soma(3,7)

#funcionalidade que deve exibir uma resposta ao usuario

def achou_bug(resposta)
    case resposta
    when 1
        puts 'Informar ao Dev'
    when 0
        puts 'Pode ir para produção'
    else 
        puts 'Codigo invalido'
    end
end

puts 'Olá, bem vindo ao TestLink.RB v1'
puts 'Informe 0, se resultado é sem BUG.'
puts 'Informe 1, se ocorreu bugs.'

resultado = STDIN.gets.to_i

achou_bug(resultado)

