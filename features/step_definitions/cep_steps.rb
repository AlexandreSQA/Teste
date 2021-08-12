Quando('faço uma requisição GET para o serviço cep') do
   @request_cep = HTTParty.get('https://viacep.com.br/ws/02554010/json')
  end
  
  Quando('o serviço Cep responde com {int}') do |status_code|
    expect(@request_cep.code).to eq status_code
  end
  
  Então('tenho o retorno com os dados do endereço do cep informado') do
    value = '{"ibge":"3550308"}'
    puts JSON.parse(value)
    #puts @request_cep
    
  end

  Então('tenho o retorno de erro para cep invalido') do
    @request_cep = HTTParty.get('https://viacep.com.br/ws/12345678/json')
    puts @request_cep
  end