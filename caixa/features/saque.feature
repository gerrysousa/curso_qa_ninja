#language: pt

Funcionalidade: Saque
    Sendo um cliente correntista do banco
    Posso fazer saque de dinheiro
    Para que eu possa comprar em estabelecimentos que não aceitam cartão

    # Sendo => quem é o ator
    # Posso => o que deve ser feito(desenvolvido)
    # Para => o valor atribuido, valor de negócio

@sprint1
Cenário: Saque de dinheiro

    Dado que eu tenho uma conta corrente com R$ 100  
    Quando faço um saque no valor de R$ 10
    Então meu saldo final será de R$ 90
    E vejo a mensagem "Saque com sucesso."

@sprint1
Cenário: Saque de dinheiro

    Dado que eu tenho uma conta corrente com R$ 100  
    Quando faço um saque no valor de R$ 110
    Então meu saldo final será de R$ 100
    E vejo a mensagem "Saldo insuficiente."

@sprint1
Cenario: Limite por transação

        # Desafio da semana, implementar este comportamento na classe conta
        # Entrega 10/09/2018

        Dado que eu tenho uma conta corrente com R$ 1000
        Quando faço um saque no valor de R$ 701
        Então meu saldo final será de R$ 1000
        E vejo a mensagem "Valor máximo por transação deve ser de R$ 700."