class Conta
    attr_accessor :saldo, :mensagem
      
    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > @saldo
            @mensagem = "Saldo insuficiente."
        else

            if valor > 700
                @mensagem = "Valor máximo por transação deve ser de R$ 700."
            else
                @saldo = @saldo - valor
                @mensagem = "Saque com sucesso."
            end
        end

    end
end