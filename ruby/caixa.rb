#  Nome do cliente
# Saldo do cliente
# Metodo para fazer saque recebendo um valor que subtrai do saldo do cliente
# 
# Feature: Caixa
# 
# Cenário: Saque com sucesso
# 
# Dado que eu tenho uma conta corrente com 100 reais 
# Quando saco 10 reais
# Então meu saldo será de 90 reais


class ContaCorrente
    attr_accessor :nome, :saldo 

    def initialize(nome, saldo)
        @nome=nome
        if saldo >= 1
        @saldo = saldo 
        puts 'Conta criada com sucesso!'     
        else
        puts 'A conta não pode ser criada sem saldo disponivel'
     end

    end

    def mostrar_saldo()
        puts '_________________________'
        puts '|O saldo atual é de R$'+@saldo.to_s+'|'
        puts '|________________________|'
    end

    def fazer_saque(valor)
        if valor < saldo
            @saldo = saldo - valor
            puts '_______________________________________________'
            puts '|Saque realizado, o saldo final é de '+ @saldo.to_s+' reais |'
            puts '|_____________________________________________|'
            
        else
            puts 'Saque não pode ser realizado, não há saldo disponivel'
        end
    end    
end

# até aqui funcionava normalmente
# conta_1 = ContaCorrente.new(100)
# conta_1.mostrar_saldo()
# conta_1.fazer_saque(10)
# conta_1.mostrar_saldo()

def fluxo_caixa(resposta, conta)
    conta_2 = conta 
  
    case resposta        
    when 1
        conta_2.fazer_saque(10)
       
    when 2
        conta_2.mostrar_saldo()
       
    else 
        puts 'Codigo invalido'
    end
end

conta_1 = ContaCorrente.new('Gerry', 100)
loop do   
    puts '_____________________________________________'
    puts '| Olá '+conta_1.nome+', bem vindo ao Caixa de Banco v1 |'
    puts '| Informe 1, para sacar 10 reias da conta.  |'
    puts '| Informe 2, para ver o saldo.              |'
    puts '|___________________________________________|'

    resultado = STDIN.gets.to_i

    fluxo_caixa(resultado, conta_1)
end

