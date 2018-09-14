#language: pt

Funcionalidade: Cadastro do usuário
    Sendo um visitante do site
    Posso fazer meu cadastro com nome, email e senha
    Para que eu possa anunciar meu veiculo usado

# @sprint1 @smoke
# Cenário: Cadastro simples

# 	Dado que estou na página de cadastro
# 	Quando faço o meu cadastro com
# 		| nome  | Gerry           |
# 		| email | gerry@teste.com |
# 		| senha | 123456          |
# 	Então sou autenticado com sucesso

@sprint1
Cenario: Email inválido

	Dado que estou na página de cadastro
	Quando faço o meu cadastro com email inválido
		| nome  | Gerry |
		| email | teste |
		| senha | 123456|
		| mensagem | Email inválido.|
	Então devo ver a mensagem "Email inválido."

@sprint1
Cenario: Senha não informada

	Dado que estou na página de cadastro
	Quando faço o meu cadastro sem informar a senha
		| nome  	| Gerry 			|
		| email | gerry@teste.com |
		| mensagem  | Senha não informada.	|
	Então devo ver a mensagem "Senha não informada."

@sprint1
Cenario: Nome não informado

	Dado que estou na página de cadastro
	Quando faço o meu cadastro sem informar o nome
		| email | teste@teste.com |
		| senha | 123456|
		| mensagem | Nome não informado.|
	Então devo ver a mensagem "Nome não informado."

@sprint2
Cenario: Senha muito curta
	
	Dado que estou na página de cadastro
	Quando faço o meu cadastro com senha com de cinco digitos
		| nome  	| Gerry 			|
		| email | gerry@teste.com |
		| senha 	| 12345 			|
		| mensagem  | Senha deve ter pelo menos 6 caracteres.	|
	Então devo ver a mensagem "Senha deve ter pelo menos 6 caracteres."
