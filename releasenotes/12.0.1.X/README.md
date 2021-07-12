| **Server version** | 12.0.1.X                                                                           |  
| ---:               | :---                                                                               |
| **Cliente tag**    | release_12.0.1                                                                     |
| **SDK**            | [**12.00.01.0003**](\\\storage\BUILDS\TFS\framework\release-12.0\sdk\12.0.1.0003)  |
<br/>

# Resumo das funcionalidades mais relevantes

- Atualização tecnológica: Angular 11
- Performance:
  - Reformulação do boot da aplicação servidor
  - Utilização de LazyLoading para carregamento dos módulos (Framework module vs Product Module) na aplicação cliente
  - Melhorias generalizadas na utilização da aplicação (client-side)
  - Pesquisa nas listas
  - Gestão de imagens para impressão
- Melhorias na forma como se faz debug da aplicação cliente
- Reformulação das rotas cliente
- Reformulação do versionamento da aplicação cliente e gestão de conteúdos estáticos
- Disponibilização de um novo componente client-side de calendário (vista anual)
  <br/>
  <img src="./images/calendar.png" width="600">
- Possibilidade de incluir no 'user menu' uma entrada com informação sobre o produto:
  <br/>
  <img src="./images/aboutOption.png" width="100">
  <br/>
  <img src="./images/aboutModal.png" width="400">
- Possibilidade de definir um 'response type' na modelação de service actions:
  - json
  - blob
  - array buffer
- Upgrade Database:
  - Possibilidade de definir dependencias no processo de atualização de base de dados
<br/><br/>

# Resumo dos problemas resolvidos

- AdditionalItems não estão a ser mapeados _([167985](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167985&_a=edit))_
- Correção de rotas de poupop _([161347](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161347&_a=edit))_
- Print de documentos - datas na impressão não respeitam a cultura _([146553](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=146553&_a=edit))_
- Sempre que não existem valores a somar ou o somatório total é 0€ aparece a label "Soma: " _([147841](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=147841&_a=edit))_
- Picagem de artigos com o leitor de código de barras introduz artigo errado _([168125](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168125&_a=edit))_
- Status 500 ao inserir registo para uma entidade custom _([168111](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168111&_a=edit))_
- No update de BD a imagem de update fica desformatada _([168072](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168072&_a=edit))_
- WildCards só assume o dia às 01:00:00 _([167977](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167977&_a=edit))_
- Atributo custom tipo enumerable, não renderiza os dados na grelha _([167786](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167786&_a=edit))_
- Erro ao exportar listas para csv quando nome contém carateres especiais _([167741](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167741&_a=edit))_
- Import Files - ficheiro inválido ao efetuar download do template. _([167623](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167623&_a=edit))_
- Impressão em lote não imprime os documentos que ainda não tenha sido impressos _([167555](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167555&_a=edit))_
- Falha de CSS em components _([167110](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167110&_a=edit))_
- Não é possivel editar o default value path _([167108](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167108&_a=edit))_
- Falha no componente de pesquisa _([167107](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167107&_a=edit))_
- ExceptionMessage deixou de funcionar _([165064](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=165064&_a=edit))_
- No painel de contexto das notificações push, quando é 1 minuto, deve aparecer no singular _([164496](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=164496&_a=edit))_
- Não renderiza imagens após upload _([163366](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=163366&_a=edit))_
- Na lista de Unidades, o drilldown da dimensão está errado _([162697](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162697&_a=edit))_
- Background não ocupa a área do input num campo lookup em erro _([161943](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161943&_a=edit))_
- Mapas de exploração em modo dark não mostra os valores perceptíveis (colunas) _([160623](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=160623&_a=edit))_
- Não é possível definir o valor da variavel kendo-grid-accent _([160077](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=160077&_a=edit))_
- Lista não carrega o valor do atributo personalizado tipo money _([149987](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=149987&_a=edit))_
- Lookup - no componente de utilizador nas tasks é apresentada uma linha em branco _([167149](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167149&_a=edit))_
- Clicando nos links do dashboard, faz reload à app _([166931](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=166931&_a=edit))_
- Campos selecionados de picking não são limpos ao filtrar novos dados _([166678](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=166678&_a=edit))_
- Os webcomponents não estão a reagir direito em visualização _([166532](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=166532&_a=edit))_
- Erro na consola quando não existem quick actions _([164274](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=164274&_a=edit))_
- Quando a chave é apenas um caratere não aparece no ecrã de edição _([149586](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=149586&_a=edit))_
- Botão de Quick actions fica com aspeto de clicável mesmo quando não há quick actions definidas _([146291](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=146291&_a=edit))_

### Obsolete, As Design, Not a Bug, Duplicated ou Assumed as Limitation 

- Landingpage - Link de download não funciona _([168099](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168099&_a=edit))_
- Modal custom attribute não é renderizado _([167844](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167844&_a=edit))_
- Service action - não é possível adicionar _([166527](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=166527&_a=edit))_
- Adicionar um filtro a uma list operation custom source _([165731](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=165731&_a=edit))_
- Lista de documentos não aparece na grelha no modal ao importar SAFT vendas _([165390](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=165390&_a=edit))_
- Icone a alertar o utilizador fica desformatado na criação de contas da contabilidade _([161733](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161733&_a=edit))_
- Erro na utilização de custom web components em grids _([126061](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=126061&_a=edit))_
<br/><br/>

# Procedimentos adicionais necessários

### Informação de versão de produto
Para ativar a opção do user menu que permite consultar a versão do produto:
 - Adicionar o ficheiro about.json na ClientApp:
 <img src="./images/aboutFile.jpg" width="100">
  
  Exemplo de ficheiro [**aqui**](./about.json).
 - No 'environment.json' habilitar a funcionalidade:
```xml
{
  ...
  "showAboutOption": true,
  ...
}
```

### Dependências na atualização de BDs:

- Alterar o web.config, reformulando a secção 'databaseUpgradeConfiguration' de acordo com a nova estrutura representada no exemplo:
```xml
<databaseUpgradeConfiguration>
    <elements>
      <add name="default" databaseUpgradeCommandTimeout="600"  clientId="(Este cliente deve ter permissões sobre as subscrições dos vários produtos dependentes)" clientSecret="XXX" webApiScopes="(todas as scopes necessárias para interagir com os produtos dependentes)">
        <dependencies>        
          
          <add name="CORE" version="1.00.0000.0001">
            <fileStorageConfiguration name="default" type="Primavera.Core.Storage.Azure.Files.AzureFileStorageService, Primavera.CoreLib.Storage.Azure, Version=4.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256">
              <settings>
                <add key="StorageConnectionString" value="XXX (Blob com a localização das scripts)" />
                <add key="ServerConnectionTimeout" value="00:00:15" />
                <add key="RequireEncryption" value="false" />
                <add key="MaximumExecutionTime" value="00:02:00" />
                <add key="RetryPolicy" value="Linear" />
                <add key="RetryPolicyMaximumAttempts" value="4" />
                <add key="RetryPolicyBackoffTime" value="00:00:03" />
              </settings>
            </fileStorageConfiguration>
            <markets>
              <add key="market_pt" value="pt" />
              <add key="market_es" value="es" />
              <add key="market_en" value="en" />
            </markets>
          </add>
          
          <add name="ELEVATION" version="2.00.0000.0001">
            <fileStorageConfiguration name="default" type="Primavera.Core.Storage.Files.LocalFileStorageService, Primavera.CoreLib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256">
              <settings>
                <add key="StorageConnectionString" value="XXX (Blob com a localização das scripts)" />
                <add key="ServerConnectionTimeout" value="00:00:15" />
                <add key="RequireEncryption" value="false" />
                <add key="MaximumExecutionTime" value="00:02:00" />
                <add key="RetryPolicy" value="Linear" />
                <add key="RetryPolicyMaximumAttempts" value="4" />
                <add key="RetryPolicyBackoffTime" value="00:00:03" />
              </settings>
            </fileStorageConfiguration>
            <markets>
              <add key="market_pt" value="App_Data\upgrade\pt" />
              <add key="market_es" value="App_Data\upgrade\es" />
              <add key="market_en" value="App_Data\upgrade\en" />
            </markets>
          </add>
          
        </dependencies>
      </add>
    </elements>
  </databaseUpgradeConfiguration>
```
  - Declarar as dependencias pela ordem que devem ser executadas.
  - O último 'add' é sempre referente ao próprio produto e a propriedade name deve ser configurada com o 'productAlias'.
    - Quando não há dependências é a única entrada que deve ser declarada.
- Remover a propriedade 'databaseVersionValidation'.

NOTA: Para cada dependencia declarada, existe também uma entrada na tabela Operations.DBVersions representando o versionamento atual de uma determinada subscrição (AppInstance)

### Aplicação da correção do Bug #156275
É necessário forçar a geração de um novo ID para as listas em erro. Para que isto aconteça:
  - Abrir o Presentation Model;
  - Alterar a propriedade Allow User Customization da List View respetiva para um valor diferente do original e depois para o original novamente;
  - Gravar o modelo;
  - Fazer checkin do módulo. 
Quando a alteração chegar ao produto já será possível adicionar/remover permissão para a operação anteriormente em erro. 
Não esquecer que deve ser dada novamente permissão na role principal/root para ela aparecer nas restantes roles.

### Conversão módulos angular para a versão 11

Na eventualidade de existirem módulos angular custom nos produtos numa versão anterior À 8, devem ser 
executados os seguintes passos:

1. Instalar a versão “current” do NodeJs e garantir que é a versão de trabalho na linha de 
comandos (executar node –version e garantir que a versão é a 16 ou superior.)

Estrutura “exemplo” para um módulo após a migração:
<br/>
<img src="./images/estruturaNG11.jpg" width="100">

2. Executar npm install
4. Remover read-only de todos os ficheiros na pasta do modulo
5. No package.json remover (se existir) "@angular/http": "^7.2.15"6. 
6. Avaliar os passos/pontos de migração existentes no guia de migração do [**angular**] (https://update.angular.io/?l=2&v=8.0-11.0) em conjunto com as seguintes instruções:
	  - ng update
	  - ng update @angular/core@8 @angular/cli@8
	  - ng update @angular/core@9 @angular/cli@9
	  - Pesquisar por ModuleWithProviders e colocar ModuleWithProviders<Nome do módulo>
	  - Colocar dependências primavera a apontar para as novas builds(v11) 
	  - ng update @angular/core@10 @angular/cli@10
	  - ng update @angular/core @angular/cli
	  - Tendo por base o trabalho de migração já realizado nos módulos da FW e tendo por base um desses mesmos módulos deve-se replicar as configurações para os seguintes ficheiros
	    - Atualizar o ficheiro angular.json
	    - Criar ./src/tsconfig.lib.ts
	    - Criar ./src/tsconfig.lib.prod.ts
	    - Renomear ./src/index.ts para ./src/public-api.ts
	    - Criar ficheiro ./src/ng-package.json
	    - Colocar no packages.json como devDep "ng-packagr": "^11.0.0",
	    - Copiar de um dos módulos da FW os scripts de execução npm. 
6. Remover a pasta node_modules e o ficheiro “package.lock.json”
7. Verificar as dependências no ficheiro packages.json e avaliar a existência de dependências “deprecated” (moment.js, lodash, gulp, outras..) e realizar a atualização dependências para as versões mais recentes. Isto irá implicar correções ao código.
8. Remover dead files (ficheiros que deixaram de fazer sentido após a migração)
9. Executar npm i (sem o switch “—force”)
10. Executar npm build
  - Neste passo é normal surgirem erros que devem ser corrigidos um a um até não existir qualquer erro.

Nota: Deve ter-se em conta que estes passos são algo genéricos e dependendo das especificidades do módulo em questão podem ser necessários passos adicionais ou alternativos

### Registo de Application Services e Providers
	
- Eliminar anotações obsoletas (ApplicationService e ApplicationServiceImplemention) dos contratos e respetivas implementações dos Application Services custom;	
- Eliminar anotações obsoletas (ApplicationServiceProvider e ApplicationServiceProviderImplemention) dos contratos e respetivas implementações dos Application Service Providers custom;
- Convergir todos os custom Application Services e Application Service Providers para o projeto Domain dos módulos em questão;
- Criar classe parcial da classe correspondente ao Module Bootstrapper do módulo (ex: SalesModuleBootstrapper), de modo a registar os serviços custom através do ServiceRegistry (override método Register);
- Em caso de utilização de filtros na implementação de um Application Service (ApplicationService(Filters=…)) deverá ser efetuado um refactor para que o filtro seja aplicado aquando da resolução do serviço(s); Esta funcionalidade deixou de ser suportada.

### Performance da pesquisa nas listas

- Efetuar o Drop das TVF’s de sistema utilizadas nas listas das entidades (ex: Sales.OrdersQuery) e recriá-las recorrendo aos scripts SQL gerados
- Caso existam TVF’s de utilizador, a estratégia de migração deverá ser definida pela equipa de produto.

### Refactoring do boot da aplicação servidor

- Eliminar os ficheiros “Global.tt”, “Global.asax”, “Global.asax.tt” e “Global.asax.cs”, caso existam no projeto Host do produto.

### Publicação de ClientApp em Static Web Site independente

- Não existe nenhum procedimento adicional que tenha que ser feito pela equipa, contudo, esta separação, implica alinhamento com SWE e CMS, estando dependente da disponibilidade destas equipas.

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_0_1.config)
- [**CoreLib**](./packages/packages_corelib_12_0_1.config)
- [**Lithium**](./packages/packages_lithium_12_0_1.config)
- [**ThirdParty**](./packages/packages_thirdparty_12_0_1.config) _- outros packages que devem ser atualizados_
<br/><br/>
