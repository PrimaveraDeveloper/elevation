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
2. No modelo de entidades, definir os atributos das propriedades, adicionadas no passo anterior, da seguinte forma: 
   - Default Value = false 
   - Cloneable = false  
3. Adicionar entrada de menu para entidade ElectronicCertificates 
4. No web.config (e app configuration), na secção `digitalCertificateConfiguration` deve ser removida a propriedade certificateName. 
5. Para produtos que usem o Apps, o client definido na `digitalCertificateConfiguration` deve ter “FullAccess” na Access Control List do Apps (para funcionamento da lógica de webhooks). 
6. Subscrições que necessitem de comunicar com o ambiente de testes do provider externo (Digital Sign) devem ter a subscription claim “claim_setting_certificatesprovidertestenvironment”. 

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

- Remover package Primavera.Lithium.Certificates 
- Adicionar package Primavera.Lithium.Certificates.Client.Rest.SingleAssembly (4.0.12) 

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_5_0.config)
- [**Lithium**](./packages/packages_lithium_12_5_0.config) _(outros packages que devem ser atualizados)_
<br/><br/>
