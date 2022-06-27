| **Server version** | 12.5.0.X                                                                           |  
| ---:               | :---                                                                               |
| **Cliente tag**    | release_12.5.0                                                                     |
| **SDK**            | [**12.05.00.0093**](\\storage\BUILDS\TFS\framework\release-12.5\sdk\12.5.0.0093)   |
| **Upgrade DB**     | [**scripts sql**](./database/db_upgrade.zip)                                       |
<br/>

# Resumo das funcionalidades mais relevantes

- Assinatura digital
  - Possibilidade de assinar digitalmente documentos
- Atualização automática de base de dados
  - Reformulação do mecanismo de atualização de base de dados

# Resumo dos problemas resolvidos

- Múltiplos convites para subscrições diferentes e o mesmo user, gera IDs diferentes _([192469](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192469))_

# Procedimentos adicionais necessários

### Ordem dos bootstrap

Garantir que o `ReportingBootstrapper` é o último a ser inicializado. Para isso, basta abrir o modelo de produto como XML e colocar o Reporting como último módulo na lista de módulos.
```xml
  <modules>
    <module Id="e2c3485c-d795-48df-b470-7d6c2999d009" name="CorePatterns" documentationArea="Platform" documentationDescription="The Platform API exposes management services for all common entities, such as currencies, countries, regions, companies or cultures." />
    <module Id="..." name="Module1" />
    <module Id="..." name="Module2" />
    <module Id="..." name="..." />
    <module Id="..." name="ModuleN" />
    <module Id="..." name="Reporting" />
  </modules>
```

### Assinatura digital

1. No modelo de entidades, reimplantar interface `IReportableDocument` (serão adicionadas as novas propriedades da interface: `IsReprint`, `IsSigned`, `PrintedReportName`)
2. No modelo de serviços, adicionar as novas propriedades aos resources correspondentes às entidades alteradas no passo 1 (se aplicável).
3. Adicionar entrada de menu para entidade ElectronicCertificates 
4. No web.config (e app configuration), na secção `digitalCertificateConfiguration` deve ser removida a propriedade certificateName. 
5. Para produtos que usem o Apps, o client definido na `digitalCertificateConfiguration` deve ter “FullAccess” na Access Control List do Apps (para funcionamento da lógica de webhooks). 
6. Subscrições que necessitem de comunicar com o ambiente de testes do provider externo (Digital Sign) devem ter a subscription claim “claim_setting_certificatesprovidertestenvironment”. 
7. Alterar, no IDS, a configuração do cliente usado para comunicar com micro-serviço 'Certificates', adicionando os seguintes scopes: 'lithium-certificates-eseals' e 'lithium-certificates-wh'

**NOTA:** Necessário rever fluxo de impressão (custom code de 'print' e 'send') à luz da nova lógica de gestão de certificados, para garantir a correta utilização das assinaturas digitais.

### Atualização automática de base de dados

1. Necessário atualizar a seccção `databaseUpgradeConfiguration` no web.config com o seguinte:
```xml
<databaseUpgradeConfiguration>
  <elements>
    <add container="dbscriptsupgrade" versionCompatibility="Major" databaseVersion="1.0.0.1" name="default" databaseUpgradeCommandTimeout="600" clientId="INSERT_VALUE_HERE" clientSecret="INSERT_VALUE_HERE" webApiScopes="application">
      <fileStorageConfiguration name="default" type="Primavera.Core.Storage.Azure.Files.AzureFileStorageService, Primavera.CoreLib.Storage.Azure, Version=4.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256">
        <settings>
          <add key="StorageConnectionString" value="INSERT_VALUE_HERE" />
          <add key="ServerConnectionTimeout" value="00:00:15" />
          <add key="RequireEncryption" value="false" />
          <add key="MaximumExecutionTime" value="00:02:00" />
          <add key="RetryPolicy" value="Linear" />
          <add key="RetryPolicyMaximumAttempts" value="4" />
          <add key="RetryPolicyBackoffTime" value="00:00:03" />
        </settings>
      </fileStorageConfiguration>
      <directories>
        <add name="businessfoundation">
            <markets>
              <add key="pt" value="businessfoundation/pt" />
              <add key="es" value="businessfoundation/es" />
              <add key="en" value="businessfoundation/en" />
            </markets>
          </add>
          <add name="rosepeople">
            <markets>
              <add key="pt" value="rosepeople/pt" />
              <add key="es" value="rosepeople/es" />
              <add key="en" value="rosepeople/en" />
            </markets>
          </add>
      </directories>
    </add>
  </elements>
</databaseUpgradeConfiguration>
```
Nota: Deverão ser utilizados os diretórios/markets que façam sentido para cada um dos produtos.

### Recomendações para o script de upgrade de BD

- Na construção do script de upgrade de base de dados deve ser adotada a seguinte estratégia para definir os valores das novas propriedades:
  - Se IsPrinted = true, IsReprinted = true    
  - Se IsPrinted = false, IsReprinted = false    
  - IsSigned = false
  - PrintedReportName = NULL ou ''

### Packages

- Substituir package Primavera.Lithium.Certificates por Primavera.Lithium.Certificates.Client.Rest.SingleAssembly (4.0.12) 
- Substituir package Primavera.IdentityServer por Primavera.IdentityServer.Client.Rest.SingleAssembly (6.0.12) 

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_5_0.config)
- [**Lithium**](./packages/packages_lithium_12_5_0.config) _(outros packages que devem ser atualizados)_
<br/><br/>

## HOTFIX 12.5.1 _(18 Mai 2022)_

### Resumo dos problemas resolvidos

- Erro 404 - Não é possível cancelar uma empresa _([192511](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192511))_
- Erro 500 ao alterar estado da configuração de uma empresa desativada (isActive=false) _([192509](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192509))_
- Falha ao enviar documentos via email quando temos um template pré-definido _([192556](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192556))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.1.0104**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.0" para "**release_12.5.1**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_1.config)

## HOTFIX 12.5.2 _(25 Mai 2022)_

### Resumo dos problemas resolvidos

- Imprimir entidade com subtotal nas grelhas está a aparecer com uma tradução errada (som.) e o border devia ser top _([193299](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=193299))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.2.0114**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.1" para "**release_12.5.2**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_2.config)

## HOTFIX 12.5.3 _(31 Mai 2022)_

### Resumo dos problemas resolvidos

- Migração de Subscrição - Erro quando não existe registo "database version" _([194068](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194068))_
- Erro no acesso à storage no método Upgrade Version - está a usar a connection string da fileStorageServiceConfiguration em vez da definidia em databaseUpgradeConfiguration _([194066](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194066))_

### Procedimentos adicionais necessários

- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_3.config)

## HOTFIX 12.5.4 _(1 Jun 2022)_

### Resumo dos problemas resolvidos

- Falta registo de produto na Operations.DBVersions _([194237](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194237))_
- Erro ao correr localmente quando ainda não existe a storage privada _([194214](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194214))_
- Impressão em Lote - Erro 404 quando não é passado o template _([194271](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194271))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.4.0119**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.2" para "**release_12.5.4**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_4.config)

## HOTFIX 12.5.5 _(2 Jun 2022)_

### Resumo das funcionalidades mais relevantes

- Integraçao com a plataforma de user engagement 'inspectlet'

### Resumo dos problemas resolvidos

- Certificates - Falta de traduções na feature de certificados eletrónicos _([194350](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194350))_

### Procedimentos adicionais necessários

- Para ativar a integração com o 'inspectlet', é necessário adicionar no 'environment':
```json
"userEngagement": {
  "inspectlet": {
    "applicationId": "?????"
  }
}
```

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.5.0122**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.4" para "**release_12.5.5**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_5.config)

## HOTFIX 12.5.6 _(7 Jun 2022)_

### Resumo das funcionalidades mais relevantes

- Retro-compatibilidade das integrações: Reposição dos métodos de GET de entidades (não paginados);
  - IMPORTANTE: Estes métodos serão descontinuados na versão 13.0.0
  - Esta alteração deve ser comunicada com antecedência a todos os integradores.

### Resumo dos problemas resolvidos

- Certificates: Na impressão em Lote Erro 404 quando não é passado o template _([194271](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194271))_
- Certificates: API - pedido /print sem parâmetros não respeita o original _([194644](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194644))_
- Certificates: Erro ao carrregar o pdf gerado na impressão _([193340](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=193340))_
- SDK: Sincronização os ListOperationAttributes gera novos Ids para as ListModelColumns _([194636](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194636))_
- Certificate: Toast mostra mensagem de erro ao imprimir documento utlizando certificado com dados _([194264](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194264))_
- Botão de fechar na "pri-modal" com border ou sombra _([190784](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190784))_
- Campos disable no Master com background-color errada _([192451](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192451))_
- Seleção na lista com cor do produto _([189461](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189461))_
- Erro 400 nas view definitions de outras culturas _([194326](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194326))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.6.0128**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.5" para "**release_12.5.6**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_6.config)
  - [**CoreLib**](./packages/packages_corelib_12_5_6.config)

## HOTFIX 12.5.7 _(14 Jun 2022)_

### Resumo das funcionalidades mais relevantes

- Atualização de Base de Dados
  - Registo de Trace (warning) quando a pasta definida como contentor de scripts não existe.

### Resumo dos problemas resolvidos

- Seletor de dimensões deve ter o mesmo comportamento das Lookups _([193555](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=193555))_
- Imagem apresentada no loader de produto está errada _([194778](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194778))_
- Uniformizar a cor dos menus/quick actions para as cores do grupo _([194800](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194800))_
- Popup da criação da empresa não está a abrir com a extensão _([194904](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194904))_
- Impossibilidade de ativar a assinatura digital em documentos que tenham apenas um mapa de impressão _([194970](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194970))_
- As regras\expressão de disable não está a ser aplicada no novo botão "CopyToNew" _([195005](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195005))_
- Erro ao descarregar documento através de link enviado por email após impressão da 2ª via _([194975](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194975))_
- Certificate - Erro ao imprimir segunda via de documento que tenham só um report _([194779](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194779))_
- Certificates - Tradução PT em falta quando não é preenchido autorizador e/ou secret _([194923](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194923))_
- Certificates - Envio de email de documentos com 1 só report não funciona _([195092](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195092))_
- Certificates - Mapa predefinido só é guardado quando a checkbox do selo eletrónico está ativa _([195146](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195146))_
- Imprimir novo - imprime a segunda via se já tiver sido impressa para documentos com um report _([195139](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195139))_
- Caso só exista um report, não é possível defini-lo como default _([195185](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195185))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.7.0130**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.6" para "**release_12.5.7**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_7.config)

## HOTFIX 12.5.8 _(27 Jun 2022)_

### Resumo dos problemas resolvidos

- Erro ao obter link de um report já impresso do tipo EntityReport _([195476](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195476))_
- Importação do efatura ao preencher a coluna da conta alternativa ou mesmo Conta Financeira, a opção "ver tudo" não carrega a lista (picking) _([195134](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195134))_
- "ListOperations > Synchronize All Columns Information" resulta na remoção de colunas correspondentes a chaves naturais _([195281](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195281))_
- Popup da criação da empresa não está a abrir com a extensão _([194904](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=194904))_
- Create inline sem extensão _([195543](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=195543))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.8.0133**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.7" para "**release_12.5.8**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_8.config)
