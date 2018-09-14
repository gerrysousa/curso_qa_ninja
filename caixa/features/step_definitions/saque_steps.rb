#Steps do Cucumber
require_relative '../../src/conta'

Dado('que eu tenho uma conta corrente com R$ {int}') do |saldo_inicial|
    
    @conta = Conta.new(saldo_inicial)
    puts @conta.saldo
    puts 'entrou no dado'
end
  
Quando("faço um saque no valor de R$ {int}") do |valor_saque|
    @conta.saca(valor_saque)
end
  
Então("meu saldo final será de R$ {int}") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end

Então("vejo a mensagem {string}") do |mensagem|
    expect(@conta.mensagem).to eql mensagem
  end

