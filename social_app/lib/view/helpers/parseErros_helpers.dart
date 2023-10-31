String returnMessageErrorPtBr(String errorCode) {
  switch (errorCode) {
    case '101':
      return "Parâmetros Inválidos";

    case '102':
      return "Problemas com os parâmetros de construção da Querry";

    case '105':
      return "Nome do campo inválido";

    case '107':
      return "Fomato incorreto do JSON";

    case '109':
      return "User Parse.initialize antes de usar Parse.library";

    case '116':
      return "Você execedeu o limite de configurações de parâmetros";

    case '117':
      return "Valor de limite inválido";

    case '118':
      return "Valor de skip inválido";

    case '119':
      return "Operações negada. Permissão inválida";

    case '120':
      return "Os resutlados não foram encontrados no cache";

    case '121':
      return "Key inválida para JSONObject";

    case '123':
      return "ACL inválido";

    case '125':
      return "Endereço de e-mail inválido";

    case '137':
      return "O campo único está duplicado";

    case '139':
      return "O valor do campo está reservado";

    case '140':
      return "Número máximo de classes atingido";

    case '141':
      return "Cloude Code Failed";

    case '142':
      return "Validação do Cloud Code falha";

    case '143':
      return "Webhook error";

    case '150':
      return "Dados de imagem inválida";

    case '151':
      return "Arquivo não salvo";

    case '152':
      return "Tempo de push inválido";

    case '158':
      return "Erro do Hosting";

    case '160':
      return "Nome do evento inválido";

    case '255':
      return "Classe não está vazia. Não pode ser excluída";

    case '256':
      return "Nome do App é inválido";

    case '902':
      return "O request está faltando com a API Key";

    case '903':
      return "O request ertá usando uma API Key inválida";

    case '200':
      return "Nome de usuário incorreto ou não cadastrado";

    case '201':
      return "Senha incorreta";

    case '202':
      return "Nome de usuário já utilizado";

    case '203':
      return "Email já foi utilizado";

    case '204':
      return "Email não encontrado";

    case '205':
      return "Usuário ou email não encontrado, faça o registro";

    case '206':
      return "Sessão não encontrada";

    case '207':
      return "Crie o usuário por SignUp";

    case '208':
      return "A conta já está vinculada a outro usuário";

    case '209':
      return "A sessão não é válida, refaça o login";

    case '-1':
      return "Parâmetros inválidos";

    case '1':
      return "Erro interno";

    case '2':
      return "Serviço não disponível";

    case '4':
      return "Cliente não encontrado";

    default:
      return "Erro não especificado";
  }
}
