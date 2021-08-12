#language: pt

@Cep
Funcionalidade: Cep
    validar operações de busca por Cep

    @get_Cep

    Cenário: Validar GET API Cep
    Quando faço uma requisição GET para o serviço cep
    E o serviço Cep responde com 200
    Então tenho o retorno com os dados do endereço do cep informado

    @get_inv

    Cenário: Validar GET API informando um CPE inválido
    Quando faço uma requisição GET para o serviço cep
    E o serviço Cep responde com 200
    Então tenho o retorno de erro para cep invalido