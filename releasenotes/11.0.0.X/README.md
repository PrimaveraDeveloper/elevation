| **Server version** | 11.0.0.X                                                                   |  
| ---:               | :---                                                                       |
| **Cliente tag**    | mainline_11.0.0                                                            |
| **SDK**            | \\\storage\BUILDS\TFS\fw4\mainline\SDK\11.00.00.0511                       |
| **Upgrade DB**     | [**scripts sql**](./db_upgrade.zip)                                        |
<br/>

# Resumo das funcionalidades mais relevantes

- Separação entre Cliente e Servidor;
- Possibilidade de imprimir em lote;
- Novas funcionalidades do EventBus:
    * Suporta agora múltiplas instâncias service bus;
    * Adicionado mecanismo capaz de mitigar problemas na serialização de determinados tipos de entidades;
    * É agora possível filtrar quais os eventos que são enviados para uma dada instância service bus;
    * A API foi expandida com novos métodos que concedem maior flexibilidade no uso do serviço;
- Reminders:
    * É possível criar lembretes associados à criação de uma determinada entidade, definindo o calendário;
    * Estes reminders são mostrados na Shell sob a forma de Push Notifications;
- Revisão da barra superior do produto:
    * Possibilidade de definir label e title e uma descrição para o produto.
    * Reposicionamento do search;

<img src="./images/shellBanner.jpg" width="800">

<br/><br/>

# Resumo dos problemas resolvidos
- Não é possível adicionar o Vendedor à lista de clients (130795)
- [PND SYNCR] Product News Service OnInit (Client) (150578)
- Comportamento errado no botão convert into/ Correct through (152071)
- [PND SYNC] Drafts - erro ao apagar uma extensão com grelha num expander (146706)
- Picking [Select All] - erro ao alterar a quantidade de uma linha selecionada (146756)
- Toast vazio quando se faz reset na criação de picking (146721)
- Só ao 2º click é possível escrever numa coluna lookup na linha de uma grelha (146451)
- Certificado de documentos não está a funcionar (152017)
- Listas company dependent por vezes não apresentam registos quando estes existem (151333)
- Listas agrupadas não estão a buscar as captions correctas (146323)
- Stepper View - Web componentes não são carregados na rota (143161)
- Erro ao tentar editar layout de view no modelo presentation na versão 10.01.00.0500 e 10.01.00.0504 do SDK (151028)
- Definições de impressão - correção de traduções (149338)
- Serviço Diagnostics Probe não eliminava o document criado na document DB (150483)
- [Taskbox] - TaskConfig lida por configuração apenas corre na primeira instancia. (149546)
- [Taskbox] - Ao fazer reiniciar a taskbox, este não recupera as tasks configuradas (149549)
- [TBX] - Ao fazer get no controlador clustering/instances é devovlido um OK (sem dados) (149551)
- [Taskbox] - Uma multi-instance task deve também poder ser schedule (149609)
- [Taskbox] - Uma task que é child não deve ser recuperada. (149613)
- [TBX] - Propriedade IsMultiInstance por defeito deve estar a false (149615)
- [MOBILE] - Menu não fecha depois de aceder aos users no menu profile (134501)
- Erro na impressão de documentos (133571)
- [Duplicated] View fica cortada em ecrãs mais pequenos (152080)
- [Duplicated] Erro sem mensagem após clicar em copy to new de documento e gravar com a opção save&new (152080)
- QR Code - adicionando o campo à secção dos totais aparece uma linha por baixo no report (152144)
- Lista de subscrições diferente das subscrições apresentadas no seletor da aplicação - problema no ClientID (152548)

<br/><br/>

# Problemas conhecidos

Os problemas estão reportados [**aqui**](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW?activeDashboardId=2e64cacd-a914-49a1-b029-f846d0d6b9bc).
<br/><br/>

# Procedimentos adicionais necessários

### Novos dependências a adicionar ou atualizar:
```xml
<package id="Microsoft.Extensions.*" version="3.1.9" targetFramework="net472" />
<package id="Primavera.CoreLib.*" version="5.0.2.32" targetFramework="net472" />
<package id="Primavera.Hydrogen.*" version="2.0.3.299" targetFramework="net472" />
<package id="Microsoft.Azure.Amqp" version="2.4.7" targetFramework="net472" />
<package id="Microsoft.Azure.ServiceBus" version="5.0.0" targetFramework="net472" />
```

### EventBus:
  
  - Novas funcionalidades indicadas acima implicam uma revisão da secção de configuração no Web.Config: (documentação [**aqui**](https://devops.primaverabss.com/elevation-docs/framework/framework.events/))
     ```xml
     <eventBusConfiguration>
        <elements>
            <add name="default">
                <inMemoryEventBus parallelExecution="true" />
                <azureEventBus>
                    <add name="elevation" 
                         connectionString="[CONNECTIONSTRING]" 
                         maxConcurrentCalls="10" 
                         autoComplete="false" 
                         monitoringPath="elevation" 
                         eventTypeFilters="ImportFileEvent, TaskboxEvent" />
                </azureEventBus>
            </add>
        </elements>
     </eventBusConfiguration>
     ```

### Reminders:
  
  - Para criar lembretes, ver documentação [**aqui**](https://devops.primaverabss.com/elevation-docs/framework/framework.events/)
    * Para ativar os reminders sobre uma entidade, implementar a interface `IRemindable`;
    * Alterar a seção da configuração no Web.Config, documentação [**aqui**](https://github.com/PrimaveraDeveloper/lithium/tree/master/ref/taskbox-1.0):
     ```xml
    <tbxConfiguration>
        <elements>
            <add name="default" 
                 tbxUri="[URI]" 
                 clientCredentialsId="[CLIENTID]"
                 clientCredentialsSecret="[SECRET]" 
                 clientCredentialsScope="[SCOPES] " />
        </elements>
    </tbxConfiguration>
    ```
    <br/>

### Support chat:
  
  - Acrescentar a seguinte setting:
    * Path: ClientApp\src\custom-code\assets\configurations\shell\general.json
    * Setting: "zendeskAccountUrl": "****"

### Branding:
  
  - Para definir label e title do produto, adicionar os seguintes solution parameters à subscrição:
    * 'brand.label'
    * 'brand.title'
    * Foi atualizado a área do logotipo do produto, poderá ser necessário um novo SVG, contactar a equipa do UX para as alterações necessárias;

### Separação Cliente/Servidor:

  - Esta versão permite que o cliente e o servidor vivam em ambientes diferentes  passos necessários para esta alteração podem consultar aqui:
    1.	Garantir que os seguintes módulos framework estão instalados (e respetivas dependências) no projeto Deployment:
        * Primavera.Core.Domain.Entities 
        * Primavera.Core.Patterns.Domain.Entities 
        * Primavera.Identity.Domain.Entities 
        * Primavera.Reporting.Domain.Entities 
        * Primavera.Operations.Domain.Entities 
        * Primavera.QueryBuilder.Domain.Entities 
        * Primavera.Shell.Domain.Entities
    2.	Garantir que {solution-name}.{module-name}.Domain.Entites (e respetivas dependências) de todos os módulos de produto (prototype) estão instaladas no projeto Deployment.
        * Traduções não serem apresentadas corretamente poderá indicar a má ou inexistente instalação dos módulos acima descritos.
    3.	Alterar no ficheiro \${your-product-name}\Deployment\Settings\Provisioning\Provisioning.json:
        * Alterar "DestinationFolder": "ClientApp\\src\\assets\\_viewDefinitions" por "DestinationFolder":".\\ClientConfigurations\\view-definitions";
    4.	Garantir que as seguintes rewrite rules estão presentes no Web.Config, e definidas pela mesma ordem, ver ficheiro em anexo rules.xml:
    5.	Fazer os seguintes pedidos à SWE:
        * Criar uma nova build @{product-feed-name}/configurations:
            1. O nome do package npm deverá começar com “@” e terminar com “/configurations”;
            2. Depois da build ser criada e o package npm ser publicado, adicioná-lo às dependências do cliente package.json;
        * Alterar build ClientApp (Este passo depende que o passo 6 seja concluido):
            1. Informar SWE da nova localização no source-control do novo ClientApp;
    6.	Criar novo clientApp:
        * Fazer download do template do novo clientApp através deste link. (Nota: pedir permissões de acesso @Ernesto Casanova);
        * Colocar o conteúdo do zip na localização que fizer mais sentido para vocês. No entanto aconselhamos colocar ao lado da solução;
        * Ler documento README.md onde explica a nova arquitetura, como instalar e correr o novo ClientApp. Também contém algumas dicas de desenvolvimento;
        * Migrar custom configurations presentes no antigo clientApp ({solution}\Host\ClientApp) para o novo ClientApp;
        * Comparar package.json com a versão antiga do clientApp e alterar versões de packages “custom” e packages “@primavera/package-name” para ficarem de acordo com a vossa versão;
        * Eliminar a pasta do antigo clientApp do source control.
    7.	Pedir ao CMS para fazer as alterações necessárias das Redirect URIs, Post Logout Redirect URIs e CORS origins do identity para estar de acordo com a nova arquitetura.
<br/><br/>

# Feeds (nuget)

- http://nuget.primaverabss.com:82/nuget/public-elevation-fw
- http://nuget.primaverabss.com:82/nuget/public-elevation-cl
- http://nuget.primaverabss.com:82/nuget/public-elevation-thirdparty
- http://nuget.primaverabss.com:82/feeds/public-lithium-general
- http://nuget.primaverabss.com:82/nuget/IdentityServer
- http://nuget.primaverabss.com:82/nuget/General
- http://api.nuget.org/v3/index.json
