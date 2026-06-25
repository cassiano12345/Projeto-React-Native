### Gestão de Estagios em React Native

O presente projeto foi um projeto academico, onde tive o meu primeiro contacto com API e tokens de acesso, e teve como objetivo criar uma aplicação mobile para gestão do processo de condidatura a estagios,bem como o processo de seleção de candidatos aos estagios. 
O projeto foi feito em React native (Javascript), contou com uma Api, e uma base de dados em Mysql. Para a parte dos administradores e funcionarios é possivel fazer login e obter o token de acesso, adicionar estagios, eliminar estagios, alterar estagios, e visualizar os estagios disponiveis.
Na parte dos alunos, eles pondem fazer login e obter o token de acesso, fazer cadidatura a um estagio, ver as cadidaturas a estagios feitas por ele, e eliminar candidaturas.


### Algumas funcionalidades a destacar
Ficheiro-> Login.js

***Funções*** <br/>
- json_function: A função tem como objetivo fazer o login com auxilio da API, no headers é enviado o username e a password, que fora criptografados em base64, e como resposta vem dois valores importantes em JSON, o access token, e um valor de nome superadmin, criado na base de dados, que serve para diferenciar se o utilizador que fez o login é administrador, ou aluno, se o falor obtido na resposta foi 1, significa que o utilizador é administrador, se for 0 significa que o utilizador é aluno.

Ficheiro-> Adicionar_Estagio.js
- componentWillMount: A função tem como objetivo adicionar estagio, para tal, foi usada a API e o token de acesso de forma a verificar se o utilizador de permissão para aceder a funcionalidade, o toke de acesso foi codificado em base64.

Ficheiro-> Resutados_aluno.js 
- componentWillMount: A função serve para buscar os resultados das condidaturas a estagio aplicadas pelo aluno, para tal foi usada a API, onde no headers foi incluido o token de acesso, de forma a vertificar se o utilizador tem permisão para aceder a funcionalidade, o toke de acesso foi codificado em base64..

- _onRefresh: A função serve para atualizar a tabela dos resultados, por meio da API, e do token de acesso, o toke de acesso foi codificado em base64.

***Imagens***

***Página principal*** <br/>
Na imagem a baixo é possivel ver a pagina principal da aplicação, onde tem um tab navigation, que leva nos a pagina de login.
<p align="center">
  <img src="Imagens da aplicação/Pagina de principal.jpg" alt="OpenMontage" width="230">
</p>

***Página de login*** <br/>
Na imagem a baixo é possivel ver a página de login onde tem as caixas de texto para username e password, bem como visualizar a password.
<p align="center">
  <img src="Imagens da aplicação/Pagina de login.jpg" alt="OpenMontage" width="230">
</p>

***Menu de utilizador admin*** <br/>
Na imagem a baixo é possivel ver o menu de utilizador do administrador, onde tem a opção de ver cadastros dos utilizadoes, ver as candidaturas dos alunos, os resultados das candidaturas, ver os estagios disponiveis, adicionar pais de estagios, e ano de candidatura. 
<p align="center">
  <img src="Imagens da aplicação/Menu de utilizador admin.jpg" alt="OpenMontage" width="230">
</p>

***Tabela de utilizadores admin*** <br/>
Na imagem a baixo mostra a tabela de utilizador, onde tem a opção de adicionar mais utilizadores, bem como visualizar com mais detalhes os utilizadores, editar ou eliminar.
<p align="center">
  <img src="Imagens da aplicação/Tabela de utilizadores admin.jpg" alt="OpenMontage" width="230">
</p>

***Editar ou eliminar utilizador*** <br/>
Na imagem a baixo mostra a opção de editar ou eliminar utilizador. 
<p align="center">
  <img src="Imagens da aplicação/adicionar ou eliminar aluno.jpg" alt="OpenMontage" width="230">
</p>

***Tabela de estágios admin*** <br/>
A imagem a baixo mostra a tabela de estágios disponiveis, onde tem a opção de adicionar mais estagios, e a opção de visualizar com mais detalhes os estágios disponiveis.
<p align="center">
  <img src="Imagens da aplicação/Tabela de estagios admin.jpg" alt="OpenMontage" width="230">
</p>

***Adicionar ou eliminar estágios*** <br/>
Na imagem a baixo mostra a opção de adicionar ou eliminar estagio.
<p align="center">
  <img src="Imagens da aplicação/adicionar ou eliminar estagios.jpg" alt="OpenMontage" width="230">
</p>

***Candidaturas por avaliar*** <br/>
A imagem a baixo mostra a tabela de candidaturas de alunos que o funcionário tem a avaliar.

<p align="center">
  <img src="Imagens da aplicação/Avaliar candidatuas admin.jpg" alt="OpenMontage" width="230">
</p>

***Visualizar candidatura admin*** <br/>
A imagem a baixo mostra os detalhes da candidatura do aluno, e o funcionario tem a opção de aceitar ou rejeitar a candidatura.

<p align="center">
  <img src="Imagens da aplicação/Analisar candidatura de aluno.jpg" alt="OpenMontage" width="230">
</p>

***Menu de utilizador Aluno*** <br/>
Na imagem a baixo é possivel ver o menu de utilizador do administrador, onde tem as opções de fazer candidatura, ver as candidaturas aplicadas, e ver os resultados.

<p align="center">
  <img src="Imagens da aplicação/Menu de utilizador aluno.jpg" alt="OpenMontage" width="230">
</p>

***Visualizar a candidatura aluno*** <br/>
Na imagem a baixo mostra a tabela onde o aluno pode ver as candidaturas por ele aplicadas.

<p align="center">
  <img src="Imagens da aplicação/Visualizar candidatura.jpg" alt="OpenMontage" width="230">
</p>

***Resultado das candidaturas aluno*** <br/>
Na imagem a baixo mostra a tabela onde o aluno pode ver o resultado das candidaturas feitas por ele.

<p align="center">
  <img src="Imagens da aplicação/Resultado das candidaturas.jpg" alt="OpenMontage" width="230">
</p>

***Links***
