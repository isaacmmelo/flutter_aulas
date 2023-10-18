# Aplicativo ToDo com banco de dados locais

Projeto Flutter com implementação de: 
<br/>  - Banco de Dados Local com Hive
<br/>  - Botão Slider do iOS

## Banco de dados Hiv
´´´dart
  //Precisamos da função asyncrona para carregar o Hive
  //Essa função é executa de forma separada da função principal do aplicativo

  //Inicializar o Hive
  await Hive.initFlutter();

  //Abrindo a box do Hive
  var box = await Hive.openBox('toDobox');

´´´