Projeto criado com o intuito de aprofundamento em Flutter/Dart.

Nesse projeto foram utilizados:
  - Padrão MVC
  - Repository Pattern
  - Shared Preferences
  - Dio Package
  
 O app criado conta com uma splash screen inicial que, após 3 segundos, leva o usuário para uma tela de login onde o mesmo pode acessar o app 
 ou diretamente para a Home Page, caso o mesmo já tenha realizado login anteriormente.
 
 Na tela de login, caso o usuário não esteja "cadastrado" (foram utilizados um login e uma senha fixos - admin e admin123, respectivamente), uma SnackBar contendo
 uma mensagem de erro é mostrada na tela.
 
 Na Home é apresentada ao usuário uma ListView contendo diversos posts consumidos da API JsonPlaceholder, onde o usuário pode clicar em cada um dos itens e ser
 redirecionado para a tela de detalhes do determinado item, onde, nessa tela, são apresentadas informações como o título, o índice e o corpo da postagem.
 
 Por fim, o usuário também tem a opção de realizar logout, a partir do botão criado para esse na AppBar da Home Page.
