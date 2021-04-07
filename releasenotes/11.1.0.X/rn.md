| **Server version** | 11.1.0.X                                                                   |  
| ---:               | :---                                                                       |
| **Cliente tag**    | mainline_11.1.0                                                            |
| **SDK**            | [**11.01.00.0524**](\\\storage\BUILDS\TFS\fw4\mainline\SDK\11.01.00.0524)  |
| **Upgrade DB**     | [**scripts sql**](./db_upgrade.zip)                                        |
<br/>

# Resumo das funcionalidades mais relevantes

- Possibilidade de comunicar com o Service Management antigo ou com os novos serviços da família Juice;
- Melhorias de performance no boot da aplicação;
- Melhorias na gestão de cache;
- Possibilidade de ocultar a aba de insights no dashboard;
- Novos eventos CreatingUserEvent e NewUserCreatedEvent;
- Melhorias no envio das notificações de email;
<br/><br/>

# Resumo dos problemas resolvidos

- Import - download de template não funciona (154874)
- Parâmetros não são substituídos no corpo do email enviado e o link para o download não é apresentado (147610)
- [FIREFOX] Fatura - cursor do rato errado na popup de confirmação de anulação (152239)
- Mensagens de alerta - Caracteres especiais não são mostrados corretamente (126030)
- [EDGE] Problema com as Css na edição / criação (151992)
- Erro 500 ao abrir lista de users convidados na view de users (152574)
- Envio de email para X endereços, envia X emails para cada um dos endereços (155587)
- Na banda "taxes" do report, o conteúdo de um atributo adicional não fica junto da label (154020)
- Não é possivel ver o nome do atributo no tema dark (153938)
- Opção manage custom attribute não aparece na roldana (154335)
- Ao clicar numa MvcAction é redirecionado para a página inicial (155517)
- Drill down na lista com Chave e Descrição de outra Entidade (145663)
- Não é enviado email para o utilizador ao enviar um documento (155576)
- Erro ao transformar Presentation com Report em que num detalhe tenha uma referência a um campo de uma ValueList (151225)
- Atributo configurado como disable ainda aparece na impressão (155372)
- Status 500 ao criar um custom attribute (146162)
- Label cortada após adicionar custom attribute aos dados do document (153686)
- Validation rules não fica disponível, quando altera o tipo decimal para url (133199)
- Aceder à lista de empresas faz refresh à aplicação (154451)
- Funcionalidades lista e criar do modal de um atributo fk não funcionam. (155708)
- Status 405 ao fazer pesquisa em um atributo tipo view (155638)
- Atributo tipo enumerable não lista opções (155639)
- Shortcuts - alguns atalhos não estão a funcionar (155577)
- Ao gravar registo através do atalho [ctrl + alt + s] não é feita navegação para a view de edit (147847)
- Modal/Popup - aceder à lista através das opções de contexto inline (155805)
- Modal/Popup - aceder a um registo através das opções de contexto inline (155581)
- Linhas na grelha não são carregadas e não aparecem ao editar (scroll infinito) (155724)
- Stepper - Focus vai sempre para o primeiro campo (155828)
- Imagem do utilizador - quando o url da imagem é inválido não são mostradas as iniciais do utilizador (156064)
- Tipos de sequências diferentes para criação de ativos (139438)
- Falha na validação de um atributo tipo url (156739)
- Erro ao refazer rebuild da view definition (156539)
- Viewdefinition inválida apos inser CA e dps ordenar (156556)
- Tree do printing settings não mostra o primeiro nivel. (156350)
- Painel de taxas nos reports fica desformatado (156403)
- Status 500 ao associar atributo à lista (155997)
- Reports standard, rows de detalhes ficam sempre em último lugar (156138)
- Nos reports standard, campos com casas decimais (money, etc) não são devidamente formatadas (156139)
- Reports standard, o título do report é sempre impresso na posição y = 530 (156143)
- Erro ao imprimir report do tipo standard (156146)
- Atributo não aparece no resultado da pesquisa ao tentar vincula-lo à second row (155781)
- Coluna que guarda a definição do atributo deve ter o atribute options e rules com tipos (130224)
- Dashboard - Quando a seleção entre tabs é muito rápida a navegação entre eles entra em loop (157117)
- Notificação de email - endereço de email adicionado no bcc é enviado como para (157118)
- Impossibilidade de visualizar Dimensões nas grelhas no campo "Grupo de Dimensões" (156710)
- Thumbnail images cortadas (156636)
- Licenciamento - No Rose AS Client não permite convidar utilizadores devido à key ser mair que 20 caracteres (157520)
<br/><br/>

# Problemas conhecidos

Os problemas estão reportados [**aqui**](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW?activeDashboardId=2e64cacd-a914-49a1-b029-f846d0d6b9bc).
<br/><br/>

# Procedimentos adicionais necessários

### Novas dependências a adicionar ou atualizar:
```xml
<package id="Microsoft.Extensions.*" version="3.1.10" targetFramework="net472" />
<package id="Primavera.Hydrogen.*" version="2.0.8.358" targetFramework="net472" />
<package id="Microsoft.Azure.Amqp" version="2.4.9" targetFramework="net472" />
<package id="Microsoft.Azure.ServiceBus" version="5.1.0" targetFramework="net472" />
<package id="Microsoft.Data.Edm" version="5.8.4" targetFramework="net472" />
<package id="Microsoft.Data.OData" version="5.8.4" targetFramework="net472" />
<package id="System.Spatial" version="5.8.4" targetFramework="net472" />
<package id="Primavera.Juice.Apps" version="1.0.0.52" targetFramework="net472" />
<package id="Primavera.Juice.Usage" version="1.0.0.4" targetFramework="net472" />
<package id="Primavera.Lithium.ServiceManagement" version="2.0.1.39" targetFramework="net472" />
<package id="Primavera.Lithium.Taskbox" version="2.0.3.39" targetFramework="net472" />
```

### Manter estas versões dos seguintes:
```xml
<package id="Microsoft.Extensions.Options.ConfigurationExtensions" version="3.1.4" targetFramework="net472" />
<package id="Microsoft.Extensions.Http" version="3.1.9" targetFramework="net472" />
```

### Dependências não utilizadas, a remover:
```xml
<package id="Microsoft.Extensions.Caching.Abstractions" version="3.1.4" targetFramework="net472" />
<package id="Microsoft.Extensions.Caching.Memory" version="3.1.4" targetFramework="net472" />
```

NOTA: Com esta release, começa um processo “gradual” de limpeza ao nível das dependências (nugets), outrora utilizados e que já não são necessários. Posto isto, nesta release começa então pela remoção de duas dependências. Estas estavam instaladas nos módulos Core.Patterns, Identity e Reporting, quando quiserem remover no produto, será necessário atualizar o produto para as novas versões e remover estas dependências dos módulos de produto que estejam a ser importados, só podem fazer esta remoção se e só se não estiverem efetivamente a utilizar em módulos do produto. Em caso de remoção no produto, é necessário remover os binding redirects no Web.Config.

### É necessário adicionar no Web.Config a seguinte setting:
```xml
<appSettings>
   …
   <add key="UseApplicationsService" value="true" />
</appSettings>
```

NOTA: Colocando a “true” para usar o novo APPS e “false” para o antigo Service Management.

### Applications service:
  
  - Para ativar o serviço, é necessário adicionar no Web.Config as seguintes configurações:
     ```xml
     <configSections>
        …
        <section name="applicationsServiceConfiguration" type="Primavera.Identity.Api.ApplicationsServiceConfigurationSection, Primavera.Identity.Api, Version=3.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256" />
     </configSections>
     ```
  - E por último, adicionar uma secção que define a configuração do serviço: 
     ```xml
     <applicationsServiceConfiguration>
        <elements>
            <add name="default" endpoint="[ENDPOINT]" clientId="[CLIENTID]" clientSecret="[SECRET]" scope="[SCOPES]" />
        </elements>
     </applicationsServiceConfiguration>
     ```
  - Para permitir correr localmente em debug, carregando o ficheiro habitual das subscrições: 

  1. Criar um ficheiro JSON no caminho `/Host/App_Data`, ver aqui exemplo de ficheiro;
  2. Adicionar o nome do ficheiro à configuração no Web.Config do através da propriedade `file`.
     ```xml
     <applicationsServiceConfiguration>
        <elements>
            <add name="default" endpoint="[ENDPOINT]" clientId="[CLIENTID]" clientSecret="[SECRET]" scope="[SCOPES]" file="[FILENAME]" />
        </elements>
     </applicationsServiceConfiguration>
     ```
     <br/>

# Feeds (nuget)

- http://nuget.primaverabss.com:82/nuget/public-elevation-fw
- http://nuget.primaverabss.com:82/nuget/public-elevation-cl
- http://nuget.primaverabss.com:82/nuget/public-elevation-thirdparty
- http://nuget.primaverabss.com:82/feeds/public-lithium-general
- http://nuget.primaverabss.com:82/nuget/IdentityServer
- http://nuget.primaverabss.com:82/nuget/General
- http://api.nuget.org/v3/index.json
<br/><br/>

# Erratas e Atualizações

## \#1 - 18 Mar 2021

### Por forma a tirar o melhor partido das melhorias de performance introduzidas nos últimos dias:

- Alterar o web.config, na configuração de cache, substituindo DictionaryCacheHandler por MemoryCacheHandler.
- Atualizar versões CoreLib para *.54 
</br>
NOTA: Executar este update com DependencyBehaviour=Lowest, por forma a não subir dependências inadvertidamente.

## \#2 - 1 Abr 2021

### Ainda no âmbito das melhorias de performance, foram incluídas algumas funcionalidades adicionais:

 - Possibilidade de desligar a cache redis por configuração (traduz-se em ganhos de performance em localhost)
 ```xml
 <add name="cache-perapplication" handlerType="Primavera.Core.Caching.Redis.RedisCacheHandler, Primavera.CoreLib.Caching.Redis, Version=4.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256" enabled="false">
 ```
 - Melhorias no tracing poduzido (stacktrace nas custom properties)

### Para serem aplicadas é necessário:

- Alterar o web.config, na configuração de cache, substituindo DictionaryCacheHandler por MemoryCacheHandler.
- Atualizar versões Primavera.CoreLib.* para *.65 
- Atualizar o package Microsoft.ApplicationInsights para a versão 2.17.0
```xml
<package id="Microsoft.ApplicationInsights" version="2.17.0" targetFramework="net472" />
```
</br>
NOTA: Executar este update com DependencyBehaviour=Lowest, por forma a não subir dependências inadvertidamente.

## \#3 - 5 Abr 2021

### Foram detetadas algumas inconsistencias nas referências

- Para corrigir, foram publicados packages de todos os módulos servidor de framework, com todas as referências consolidadas.
</br>
NOTA: É conveniente consolidar os packages nos módulos de produto, de acordo com as referências dos módulos da framework. 
      Em caso de necessidade de updates, usar DependencyBehaviour=Lowest, para garantir que não se atualizam dependências inadvertidamente.

### Rotas Cliente

- Desde a separação cliente/servidor que, nas rotas cliente, a _account_ e a _subscription_ aparecem na queryString. Assim, é necessário que todas as rotas cliente construídas no produto sejam alteradas:
   - de https://myproduct.com/myaccount/mysubscription/#/mypartialroute
   - para https://myproduct.com/#/mypartialroute?account=myacount&subscription=mysubscription

### Static Content

- Para que as versões 10.1.0 e 11.1.0 possam coabitar numa infraestrutura, é necessario redirecionar os seguintes ficheiros para as apps da versão 11.1.0, definindo re-write rules nos respetivos ARR _(comunicar ao CMS)_.
   - pace.min.js
   - loader.gif
   - interceptor.js
   - env.js
  
### Problemas resolvidos

- "Perdeu-se" uma propriedade de uma classe de configuração para a outra _(158763)_
- Erro ao aceder à lista das tarefas _(160008)_
- Erro ao descarregar o ficheiro modelo da Contabilidade e Inventário com cultura em PT (Importações de Ficheiros) _(160033)_
- Querie OData não ordena resultado _(159148)_
- Erro ao aceder ao Rose com o role de Contabilista _(159804)_
- Lista de subscrições devolve erro 500 e vem a vazio _(159623)_
- Propriedade hassequence não esta sendo mapeada para view definition _(159417)_
- Nos Dashboards ao mudar de empresa no seletor não atualiza a informação referente à empresa selecionada _(157682)_
- O component inlineAlertMessage não aparece _(159442)_
- Widget CARD - Dívida a Receber: Documentos apresentados no Card não são os mesmos apresentados na lista _(157274)_
- Stepper volta para step anterior após criação de entidade _(155808)_
- [Taskbox] - Quando nao existe nenhuma instancia da tbx, a primeira instancia a iniciar deve recuperar as tasks _(149612)_
- Ao modelar um report com um field do tipo Text não permite definir um texto _(158975)_
- Erro ao imprimir as listas _(159345)_
- Campo disabled fica required, após o abilitar e desabilitar _(158461)_
- Custom delete de uma entidade não funciona _(153408)_
</br>
Bugs Obsolete, As Design, Not a Bug, Duplicated ou Assumed as Limitation 
</br>
- [Not a Bug] Aplicação recarrega após clicarmos na mensagem para validação dos logs (inline alerts) _(157846)_
- [Duplicated] Erro ao descarregar o ficheiro modelo da Contabilidade e Inventário (Importações de Ficheiros) _(160959)_
- [Not a Bug] Erro ao importar ficheiros _(157805)_
- [Not a Bug] No template de email não é possivel definir o corpo da notificação _(149587)_
- [Obsolete] [FW] - Incorreta geração de O01.PayrollPT.Lookups.sqlserver.pt quando entidade base extendida possui um atributo lookup correspondente a um atributo de uma outra entidade associada. _(139509)_
- [Assumed as Limitation] Licenciamento - O subscriber da remoção não envia os perfis _(157336)_
- [NOT a BUG] Retirar opção Chat do Produto _(157128)_
- [As designed] Nas configurações da Empresa, se o campo 'Email' estiver preenchido não são enviados e-mails _(128166)_
- [Duplicated] View fica cortada em ecrãs mais pequenos _(152087)_
- [Not a Bug] Lista de fatura de vendas não é ordenada _(155041)_
- [Obsolete] Lista fica em loading após filtro rápido impedindo uso da opção de Export _(153746)_
- [Obsolete] Página de erro do Rose não está correta _(154417)_

