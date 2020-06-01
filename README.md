<h1>Clone All Repos</h1> 

<p align="center">
  <img src="http://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
</p>

### Tópicos 

:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Funcionalidades](#funcionalidades)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos)

:small_blue_diamond: [Deploy da Aplicação](#deploy-da-aplicação-dash)

:small_blue_diamond: [Como rodar a aplicação](#como-rodar-a-aplicação-arrow_forward)

... 

## Descrição do projeto 

<p align="justify">
  Scripts em powershell para realizar o clone ou o pull de todos os repositórios de um mesmo projeto no Azure Repos. 
</p>

## Funcionalidades

:heavy_check_mark: Faz o login no Azure Repos 

:heavy_check_mark: Clona todos os repositórios ao mesmo tempo  

:heavy_check_mark: Faz o pull de todos os repositórios ao mesmo tempo  

## Deploy da Aplicação :dash:

... 

Baixe os arquivos CloneAllRepos.config e CloneAllRepos.ps1 na pasta onde deseja que os repositórios do Azure Repos fiquem.

## Pré-requisitos

:warning: [Git](https://nodejs.org/en/download/)

:warning: [Powershell](https://docs.microsoft.com/pt-br/powershell/scripting/install/installing-powershell?view=powershell-7)

...

## Como rodar a aplicação :arrow_forward:

Abra o arquivo *CloneAllRepos.config* no seu editor de texto preferido e altere os parâmetros *URL*, *username* e *password*.

1. Na *URL* informe a URL do seu Team Project Azure Repos
2. No *username*, informe o seu usuário para acessar o Azure DevOps
3. Em *password*, informe sua senha de acesso ao Azure DevOps
4. Salve e feche o arquivo

No terminal, execute o script: 

*Abra o seu terminal, com privilégios de administrador, na pasta onde estão os arquivos CloneAllRepos.config e CloneAllRepos.ps1*
```
powershell -ExecutionPolicy Bypass -File ./CloneAllRepos.ps1
```

## Licença 

The [MIT License]() (MIT)

Copyright :copyright: 2020 - Clone All Repos