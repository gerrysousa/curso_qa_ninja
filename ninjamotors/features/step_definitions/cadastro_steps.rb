Dado('que estou na página de cadastro') do
  visit 'http://ninjamotors.herokuapp.com/api/reset'
  visit 'http://ninjamotors.herokuapp.com/cadastre-se'
end

Quando('faço o meu cadastro com') do |table|
  @usuario = table.rows_hash

  fill_in 'full-name', with: @usuario[:nome]
  fill_in 'email', with: @usuario[:email]
  fill_in 'password', with: @usuario[:senha]

  click_button 'Cadastrar'
end

Então('sou autenticado com sucesso') do
  within('.navbar') do
    menu_usuario = find('#navbarDropdown')
    expect(menu_usuario.text).to eql @usuario[:nome]
  end
end

Então('sou autenticado com sucesso') do
  within('.navbar') do
    menu_usuario = find('#navbarDropdown')
    expect(menu_usuario.text).to eql @usuario[:nome]
  end
end

Quando("faço o meu cadastro com email inválido") do |table|
  @usuario = table.rows_hash

  fill_in 'full-name', with: @usuario[:nome]
  fill_in 'email', with: @usuario[:email]
  fill_in 'password', with: @usuario[:senha]

  click_button 'Cadastrar'
end

Então("devo ver a mensagem {string}") do |mensagem|
  sleep(5)
  expect(page).to have_content @usuario[:mensagem]
end

Dado("que eu estou na página de cadastro") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("faço o meu cadastro sem informar a senha") do |table|
  @usuario = table.rows_hash

  fill_in 'full-name', with: @usuario[:nome]
  fill_in 'email', with: @usuario[:email]
  
  click_button 'Cadastrar'
end

Quando("faço o meu cadastro sem informar o nome") do |table|
  @usuario = table.rows_hash

  fill_in 'email', with: @usuario[:email]
  fill_in 'password', with: @usuario[:senha]

  click_button 'Cadastrar'
end

Quando("faço o meu cadastro com senha com de cinco digitos") do |table|
  @usuario = table.rows_hash

  fill_in 'full-name', with: @usuario[:nome]
  fill_in 'email', with: @usuario[:email]
  fill_in 'password', with: @usuario[:senha]

  click_button 'Cadastrar'
end