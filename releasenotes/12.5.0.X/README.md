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

### Assinatura digital

1. No modelo de entidades, reimplantar interface `IReportableDocument` (serão adicionadas as novas propriedades da interface: `IsReprint`, `IsSigned`, `PrintedReportName`)
2. Adicionar entrada de menu para entidade ElectronicCertificates 
3. No web.config (e app configuration), na secção `digitalCertificateConfiguration` deve ser removida a propriedade certificateName. 
4. Para produtos que usem o Apps, o client definido na `digitalCertificateConfiguration` deve ter “FullAccess” na Access Control List do Apps (para funcionamento da lógica de webhooks). 
5. Subscrições que necessitem de comunicar com o ambiente de testes do provider externo (Digital Sign) devem ter a subscription claim “claim_setting_certificatesprovidertestenvironment”. 

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
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.1" para "**release_12.5.1**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_1.config)

## HOTFIX 12.5.2 _(25 Mai 2022)_

### Resumo dos problemas resolvidos

- Imprimir entidade com subtotal nas grelhas está a aparecer com uma tradução errada (som.) e o border devia ser top _([193299](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=193299))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.5\sdk\\**12.5.2.0114**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.5.2" para "**release_12.5.2**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_5_2.config)