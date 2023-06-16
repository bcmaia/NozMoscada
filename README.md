# Projeto Parque árboreo

Todos os arquivos do projetos podem ser encontrados em <a href="https://drive.google.com/drive/folders/134vnkkF_5TraWdF6ZyBkL2aTBzUvJ0B6">Google Drive</a>. (Devido a dados sensíveis o drive está privado)<br>


## Descrição do Projeto
O projeto tem como objetivo criar um aplicativo que possa de maneira fácil catalogar as árvores do campus. E eventualmente
receber informes do usúarios sobre árvores que pareçam estar em estado crítico (risco de queda de galhos ou da árvore em si).

## Requisitos
  Esses requisitos podem ser vistos de maneira simples no <a href="https://www.figma.com/file/atdB7MxcoXUE3kd6tyEfGQ/Untitled?type=design&node-id=0-1&t=ulWkTOnLy74vJeKD-0">Mockup Figma</a>.
  
  1. Três tipos de usuários: Administrador, Confiável, Comum:<br>

    . Admistradores tem os mesmos direitos de (Confiável e Comum). Além de poderem escalar um usuário comum para confiável.

    . Confiável tem os mesmos diretos de (Comum). Além de aceitar ou recusar um informe.
   
    . Podem criar informes sobre árvores que acreditam estar em estado crítico.
  
  2. Árvores:
  
    . Os registros de árvore contém ao menos: id, espécie e localização.
    
    . Informe: o usúario deve acessar a aba de descrição da árvore desejada pelo mapa. Os informes devem conter fotos
    com descrição sobre o problema encontrado.
  
  3. Mapa:
    Para facilitar a criação de informes e a visualização da cobertura atual do aplicativo um mapa de cada área (inicialmente campus 1) será utilizado.
    
    . botões em nas localizações relativas a cada árvore que levam para a aba de descrição da árvore escolhida.
    
    . localização atual do usuário e a direção ao qual está virado, assim, facilitando encontrar a árvore.
    
## Abordagens
  Nessa seção iremos falar sobre os métodos que foram utilizados para cumprir os requisitos.
  
  ### Aplicativo
   Devido ao foco portátil do aplicativo a implementação principal focará na plataforma android, assim, com Flutter como framework.
  ### Dados
   Devido á alta necessidade de memória do aplicativo (mapa, fotos, descrições, dados de usuários) um banco de dados será necessário, levando em conta o escopo do prototípo (aplicativo reduzido) foi optado o uso do FireBase já que é eficiente em base de dados pequenas.  
  ### Mapa
   Devido ao aplicativo funcionar em torno de relátorios um mapa responsivo é de suma importância, assim, sua implementação será feita utilizando a Google Maps API (inicialmente PNG) que pode futuramente facilitar a implementação de GPS.
   
 ## Comentários
 
 ### Aplicativo
 
 ### Dados
 
 ### Mapa
  Para facilitar a utilização do aplicativo um botão seria criado na posição de cada árvore, porém, manualmente seria inviável (+2600 árvores), de forma que, esforços serão gastos com a tentativa da automatização.
  
  #### automatização
  Para automatizar o mapa o arq 
 
   
