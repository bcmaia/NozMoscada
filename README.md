# Projeto Parque Arbóreo

Todos os arquivos do projetos podem ser encontrados em <a href="https://drive.google.com/drive/folders/134vnkkF_5TraWdF6ZyBkL2aTBzUvJ0B6">Google Drive</a>. (Devido a dados sensíveis o drive está privado)<br>


## Descrição do Projeto
O projeto tem como objetivo criar um aplicativo que possa de maneira fácil catalogar as árvores do campus. E eventualmente
receber informes de usúarios sobre árvores que pareçam estar em estado crítico (risco de queda de galhos ou da árvore em si).

## Requisitos
  Esses requisitos podem ser vistos de maneira simples no <a href="https://www.figma.com/file/atdB7MxcoXUE3kd6tyEfGQ/Untitled?type=design&node-id=0-1&t=ulWkTOnLy74vJeKD-0">Mockup Figma</a>.
  
 1. Três tipos de usuários: Administrador, Confiável, Comum:<br>
  
     - Admistrador: tem os mesmos direitos de (Confiável e Comum). Além de poderem escalar um usuário comum para confiável.
  
     - Confiável: Tem os mesmos diretos de (Comum). Além de aceitar ou recusar um informe.
  
     - Comum: Podem criar informes sobre árvores que acreditam estar em estado crítico.
  
 2. Árvores:
  
     - Os registros de árvore contém ao menos: id, espécie e localização.
  
     - Informe: o usúario deve acessar a aba de descrição da árvore desejada pelo mapa. Os informes devem conter fotos
    com descrição sobre o problema encontrado.
  
 3. Mapa:
  Para facilitar a criação de informes e a visualização da cobertura atual do aplicativo um mapa de cada área (inicialmente campus 1) será utilizado.

     - Botões em nas localizações relativas a cada árvore que levam para a aba de descrição da árvore escolhida.
    
     - Localização atual do usuário e a direção ao qual está virado, assim, facilitando encontrar a árvore.
    
## Abordagens
 Nessa seção falaremos sobre os métodos que foram utilizados para cumprir os requisitos.
  
   ### Aplicativo
  Devido ao foco portátil do aplicativo a implementação principal focará na plataforma android, assim, com Flutter como framework.
   ### Dados
  Devido à alta necessidade de memória do aplicativo (mapa, fotos, descrições, dados de usuários) um banco de dados será necessário. Levando em conta o escopo do protótipo (aplicativo reduzido) foi escolhido o FireBase, por ser eficiente em bases de dados pequenas.  
   ### Mapa
  Devido ao fato de o aplicativo funcionar em torno de relátorios, um mapa responsivo é de suma importância, assim, sua implementação será feita utilizando a Google Maps API (inicialmente PNG) que pode futuramente facilitar a implementação de GPS.
   
## Comentários
   ### Mapa
  Para facilitar a utilização do aplicativo um botão seria criado na posição de cada árvore, porém, mapear estes botões manualmente seria inviável, dado que há mais de 2600 árvores. Portanto, esforços serão gastos com a tentativa da automatização.
  
   ### Automatização
  Para automatizar o mapa o arquivo .CAD será utilizado para extrair a posição de cada árvore que será plotada no mapa futuramente como um botão.
  
  O protótipo da automatização pode ser encontrado no <a href="https://colab.research.google.com/drive/1ba_5tJW49E_7XTO_V34KiW4XL28xo76r">link</a>.
  
  O documento com a extração das posições se encontra no <a href="https://drive.google.com/drive/folders/134vnkkF_5TraWdF6ZyBkL2aTBzUvJ0B6">Google Drive</a>.
  
   
 
   
