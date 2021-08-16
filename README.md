<h1>Clone All Repos</h1> 

<p align="center">
  <img src="http://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>
</p>

### Tópicos 

:small_blue_diamond: [Descrição do projeto](#descrição-do-projeto)

:small_blue_diamond: [Funcionalidades](#funcionalidades)

:small_blue_diamond: [Deploy da Aplicação](#deploy-da-aplicação-dash)

:small_blue_diamond: [Pré-requisitos](#pré-requisitos)

:small_blue_diamond: [Autenticação](#autenticação)

:small_blue_diamond: [Como rodar a aplicação](#como-rodar-a-aplicação-arrow_forward)

## Descrição do projeto 

<p align="justify">
  Scripts em powershell para realizar o clone ou o pull de todos os repositórios de um mesmo projeto no Azure Repos. 
</p>

## Funcionalidades

:heavy_check_mark: Faz o login no Azure Repos 

:heavy_check_mark: Clona todos os repositórios ao mesmo tempo  

:heavy_check_mark: Faz o pull de todos os repositórios ao mesmo tempo  

## Deploy da Aplicação :dash:

Baixe os arquivos ***CloneAllRepos.config*** e ***CloneAllRepos.ps1*** na pasta onde deseja que os repositórios do Azure Repos fiquem.

## Pré-requisitos

:warning: [Git](https://nodejs.org/en/download/)

:warning: [Powershell](https://docs.microsoft.com/pt-br/powershell/scripting/install/installing-powershell?view=powershell-7)

## Autenticação

**Autenticação com SSH**

Você precisará configurar a autenticação com SSH aos repositórios Git do Azure DevOps.

[Veja como usar autenticação SSH no Azure DevOps Repos](https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops)

**Autenticação com PAT**

Você precisará configurar um token PAT para realizar a autenticação ao Azure DevOps Repos e listar os repositórios.

[Veja como usar PAT (Personal Access Token) no Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=preview-page)

<br>

> Você precisará tanto da autenticação com ***PAT*** quanto da autenticação com ***SSH***. A primeira (***PAT***) será utilizada para autenticar no ***Azure DevOps Repos*** e listar todos os repositórios do seu projeto. Já a segunda (***SSH***) será utilizada para autenticar no servidor ***Git*** e  fazer o `clone` ou `pull` em cada repositório listado.

## Como rodar a aplicação :arrow_forward:

### Com arquivo de configuração (CloneAllRepos.config + CloneAllRepos.ps1)

Abra o arquivo ***CloneAllRepos.config*** no seu editor de texto preferido e altere os parâmetros ***URL*** e ***PAT***.

1. Na ***URL*** informe a URL do seu Team Project Azure Repos
3. Em ***PAT***, informe seu Personal Access Token criado no Azure DevOps
4. Salve e feche o arquivo

No terminal, execute o script: 

*Abra o seu terminal, com privilégios de administrador, na pasta onde estão os arquivos **CloneAllRepos.config** e **CloneAllRepos.ps1***
```
powershell -ExecutionPolicy Bypass -File ./CloneAllRepos.ps1
```

### Sem arquivo de configuração, passando as credenciais por parâmetros (CloneAllReposParams.ps1)

No terminal, execute o script: 

*Abra o seu terminal, com privilégios de administrador, na pasta onde esta os arquivo **CloneAllReposParams.ps1*** e execute o comando abaixo preenchendo os parâmetros ***URL*** e ***PAT***.
```
powershell -ExecutionPolicy Bypass -File ./CloneAllReposParams.ps1 -URL {Your_DevOps_URL} -PAT {Your_PAT_Token}
```

## Licença 

The [MIT License]() (MIT)

Copyright :copyright: 2020 - Clone All Repos
