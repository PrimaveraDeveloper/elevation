| **Server version** | 12.3.0.X                                                                           |  
| ---:               | :---                                                                               |
| **Cliente tag**    | release_12.3.0                                                                     |
| **SDK**            | [**12.03.00.0012**](\\storage\BUILDS\TFS\framework\release-12.3\sdk\12.3.0.0012)   |
| **Upgrade DB**     | [**scripts sql**](./database/db_upgrade.zip)                                       |
<br/>

# Resumo das funcionalidades mais relevantes

- Atualização tecnológica: Angular 12
- Melhorias no componente de picking em 'mode basic'.
  - Multi-select com edição de múltiplos campos
  - Select All
  - Ediçao em lote
  - Possibilidade de executar 'side-effects'
- Performance:
  - Otimização da execução das funções de 'normalize'
  - Possibilidade de definir um contexto de execução para as validações _(evitando repetir validações quando não é necessário)_
- Extensibilidade
  - Custom attributes com padrão company dependent _(possibilidade de criar atributos com filtro da empresa)_
  - Custom entities com padrão Company Dependent
  - Possibilidade de criação de registos company dependente
  - Possibilidade de criar associações para entidades de sistema company dependente
  - View definitions de extensibilidade passam a estar armazenadas na base de dados
  - Melhorias na modal de criação de campos de utilizador
  - Suporte para campos de utilizador em detalhes do tipo 'Form'
- Reporting
  - Listas
    - Adicionada informação de contexto (data de impressão, informação da empresa, termo de pesquisa)
    - Alteração na organização dos dados dos mapas (zona de parâmetros, tamanho das linhas e titulo)
    - Melhorias na representação de campos boleanos
    - Possibilidade de se utilizar logo da company nas impressões das listas
    - Alterações de agrupamento, ordem das colunas e ordem dos dados impressas no pdf, sem necessidade de ir ao configurador das listas
  - Reports Standard
    - Suporte para número de cópias para reports standard
    - Valores boleanos passam a ser representados com sim/não
    - Possibilidade de adicionar informação de licenciamento no footer
    - Otimização do espaço das linhas nas grelhas
    - Possibilidade de modelar campos sem espaço entre label e valor (“email: xpto@primaverabss.com”, em vez de “Email xpto@primaverabss.com”)
  - Conformidade com CIUS.PT 
    - Possibilidade de associar código 'unecerec20' às unidades
  - Fallback nos templates de importação por idioma _('template.pt-PT' > 'template.pt')_
  - Suporte para o idioma Catalão
<br/><br/>

# Resumo dos problemas resolvidos

- Status 400 ao editar custom attribute no contexto padrao company dependente _([180196](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180196&_a=edit))_
- Não guardou alteração checkbox striped rows _([180044](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180044&_a=edit))_
- Falha no comportamento das lista no contexto de custom entity e custom atribute _([180206](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180206&_a=edit))_
- Status 400 ao editar custom entity aplicando o checkbox is company dependent _([180200](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180200&_a=edit))_
- Alterações em registos de uma picking não são refletidos após alterar o paginador _([178515](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=178515&_a=edit))_
- CTRL + ALT+ N não funciona em modo de visualização _([178215](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=178215&_a=edit))_
- Calendário - nomes com maiúscula e acento não são mostrados corretamente na linha do calendário _([168794](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168794&_a=edit))_
- Datas - Formatação AM/PM _([173897](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173897&_a=edit))_
- Erro 500 ao colocar endereço de email com carateres inválidos no popup _([158442](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158442&_a=edit))_
- Erro ao fazer download de documentos a partir da landing page _([173044](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173044&_a=edit))_
- Erros em pedidos OData para entidades com relação many-to-many _([146923](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=146923&_a=edit))_
- Thumbnail image - quando o ecrã não está maximizado campo com thumbnail image encosta ao campo adjacente _([145810](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=145810&_a=edit))_
- Imagens não carregam no dashboard de contexto _([173634](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173634&_a=edit))_
- Botões de ação estão disponíveis em entidades company dependent quando não há empresa criada _([126422](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=126422&_a=edit))_
- Context pages - informação relacionada mantem-se no dashboard de contexto depois de apagar linha de document _([174206](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174206&_a=edit))_
- Create company - View não fica em modo create depois de criar company num documento company dependent _([142931](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=142931&_a=edit))_
- Cursor fica posicionado no editor Html e não no início das views _([172684](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172684&_a=edit))_
- Em PT-PT no painel lateral quando é apresentado o icon de erro passa a duas linhas _([170355](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=170355&_a=edit))_
- Erro 500 ao escrever em views em modo de visualização _([172686](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172686&_a=edit))_
- File Import- Erros no ecrã _([128584](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=128584&_a=edit))_
- Geração da script de Menu não preenche o Index _([175356](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=175356&_a=edit))_
- History dropdown apresenta informação desformatada _([174323](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174323&_a=edit))_
- Icon de erro sobrepõe-se ao texto do input (cenários de contactos e tasks) _([168308](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168308&_a=edit))_
- Informação da grelha não é disponibilizada no dashboard de context _([174255](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174255&_a=edit))_
- Painel de controlo não apresenta os Context Pages de forma ordenada _([153117](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=153117&_a=edit))_
- Quando temos mais de 250 notificações _([178464](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=178464&_a=edit))_
- Search - Com as setas o scroll da lista de operações não desce _([157113](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=157113&_a=edit))_
- Toasts com novo design _([170353](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=170353&_a=edit))_
- Ao fazer save and new, nos templates de email, não limpa o corpo da notificação _([174174](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174174&_a=edit))_
- Descrição de um atributo personalizado tipo view não é renderizado _([172996](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172996&_a=edit))_
- Falha na pesquisa dos registos de uma custom entity _([172128](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172128&_a=edit))_
- Status 403 ao inserir registo em uma custom entity via api _([171980](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=171980&_a=edit))_
- Update Default Value Assignment aplicando Assignment Path causa falha ao criar invoice _([174168](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174168&_a=edit))_
- QRCode - espaços em branco devido ao posicionamento do QRcode nos documentos impressos _([172603](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172603&_a=edit))_
- Não é possivel imprimir em landscape _([155753](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=155753&_a=edit))_
- Print de listas - datas na impressão não respeitam a cultura _([165843](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=165843&_a=edit))_
- Data Range ao obter o draft dos filtros não respeita o custom _([178834](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=178834&_a=edit))_
- Falha no put para alterar o defaultValueStrategy de um atributo _([172099](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172099&_a=edit))_
- Registo selecionado não corresponde a descrição apresentada _([173612](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173612&_a=edit))_
- Tipo de campo de utilizador não aparece traduzido _([155762](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=155762&_a=edit))_
- Erro ao imprimir report do tipo Standard _([168173](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168173&_a=edit))_
- Aparece a opção 2ª via em reports do tipo standard _([161095](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161095&_a=edit))_
- Menu não respeita o campo display order _([169307](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=169307&_a=edit))_
- Remarks desaparecem com edit _([175740](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=175740&_a=edit))_
- [Mobile] Tooltips não são apresentadas na totalidade em alguns casos _([119751](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=119751&_a=edit))_
- As notificações aparecem duplicadas quando agrupadas por data _([174003](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174003&_a=edit))_
- CheckBox com preenchimento incorreto no processamento em lote _([172647](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172647&_a=edit))_
- Email - O template usado para o documento tem anexo é diferente do usado para o Link _([166787](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=166787&_a=edit))_
- Erro de documentação _([172097](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172097&_a=edit))_
- Erro não é mostrado na aplicação quando numa operação de contexto para download ocorre uma DomainException _([167066](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167066&_a=edit))_
- Listas Impressão - Caso exista filtro rápido este não é apresentado na Impressão _([177153](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177153&_a=edit))_
- Modelos - é possível eliminar uma imagem sem editar o modelo _([167559](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167559&_a=edit))_
- O Botão secondaryActions fica disable depois de carregar num botao de Anexos _([177958](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177958&_a=edit))_
- Tooltip - Componente de filtro mostra informação extra fora de sitio (DimensionSelectorFilter) _([169785](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=169785&_a=edit))_
- Utilizador com duas contas não consegue entrar na segunda conta, após logout na 1ª subscrição _([168792](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=168792&_a=edit))_
- 404 criar customer através de um attribute custom tipo view _([172998](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172998&_a=edit))_
- Não gera draft para custom entity _([172352](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=172352&_a=edit))_
- API de Reporting - Esconder Atributo _([170116](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=170116&_a=edit))_
- Seletor de subscrições/empresas não deve ter animação nem seta com apenas uma subscrição e empresa _([177935](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177935&_a=edit))_

# Procedimentos adicionais necessários

### Migração para Angular 12

Atualizar os modulos cliente de produto para a versão ~12.2.0 do Angular
_NOTA: Não é expecttável que haja alterações significativas._

### Adicionar informação de licenciamento no footer dos reports
No web.config adicionar a setting 'ProductProvider' com o valor pretendido
```xml
<add key="ProductProvider" value="PRIMAVERA BSS" />
```

### Número de cópias em reports standard

Na modelação, aceder ao report e ativar a funcionalidade alterando a propriedade 'SupportCopies' para 'true'

### Dependências

Instalar, nos projetos 'Domain' os seguintes packages:
 - Primavera.Lithium.SearchEngine.Client.Rest _(version="1.0.1)_
 
### Atualização do web.config

Alterar a declaração secção "serviceManagementConfiguration" para ficar da seguinte forma:
```xml
<section name="serviceManagementConfiguration" type="Primavera.Core.Patterns.Api.ServiceManagementConfigurationSection, Primavera.Core.Patterns.Api, Version=3.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256" />
```

# Problemas Conhecidos

  - Picking Basic - Erro no reset _([180290](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180290&_a=edit))_
  - Picking Basic - Ao fazer filtro pelo customer com uma linha selecionada dá erro _([180276](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180276&_a=edit))_
  - Subscrições não atualiza o número de companies quando aponta para o APP's _([180293](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180293&_a=edit))_

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_3_0.config)
- [**CoreLib**](./packages/packages_corelib_12_3_0.config)
- [**Lithium**](./packages/packages_lithium_12_3_0.config)
- [**ThirdParty**](./packages/packages_thirdparty_12_3_0.config) _(outros packages que devem ser atualizados)_
<br/><br/>

## HOTFIX 12.3.1 _(7 Jan 2022)_

### Resumo dos problemas resolvidos

- Picking Basic - Erro no reset _([180290](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180290&_a=edit))_
- Picking Basic - Reset depois de "bulk edit" com "select all" dá erro _([180888](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180888&_a=edit))_
- Picking Basic - Ao fazer filtro pelo customer com uma linha selecionada dá erro _([180276](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180276&_a=edit))_
- Picking Basic - Dark theme _([180685](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180685&_a=edit))_
- Seletor de subscrições/empresas não trás subscrições quando aponta para o CMS _([180080](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180080&_a=edit))_
- View da empresa com os contactos desformatados _([177068](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177068&_a=edit))_
- No configurador de colunas de uma lista de uma entidade com um atributo list, ao expandir as opções não são mostradas _([167783](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=167783&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.0\sdk\\**12.3.1.16**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.0" para "**release_12.3.1**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_1.config)
  - [**Lithium**](./packages/packages_lithium_12_3_1.config)

## HOTFIX 12.3.2 _(19 Jan 2022)_

### Resumo das funcionalidades mais relevantes

- Tracing relativo a gestão de Menus e Quick actions melhorado
- Possibilidate de ativar o refrescamento de dados nos 'group widgets' do dashboard

### Resumo dos problemas resolvidos

- Campos disable com fundo branco como se estivessem enable _([182035](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182035&_a=edit))_
- Ao fazer redirect num picking para um draft com o mesmo id o cabecalho nao carrega filtros _([182620](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182620&_a=edit))_
- Ao editar um registo de uma entidade Master-detail-detail e adicionar nova linha, coluna editada assume valor anterior _([180814](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180814&_a=edit))_
- Atributos do tipo Combo cujo Data Source é um endpoint modelado, não apresentam na view os dados persistidos em entidades detail _([181587](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=181587&_a=edit))_
- Documentos entram em modo de edição quando a comunicação webservice falha e é selecionado o botão comunicar _([182424](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182424&_a=edit))_
- Após uma mensagem de erro os editores ficam em modo editado _([182503](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182503&_a=edit))_
- Campo do tipo link no cabeçalho de uma view não está a redirecionar _([154615](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=154615&_a=edit))_
- O Importador consegue atualizar o registo importado no produto _([182499](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182499&_a=edit))_
- Impressão em talão - texto das linhas fica sobreposto _([182021](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182021&_a=edit))_
- Reports standard: borders dos títulos de grelhas não aparecem _([182714](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182714&_a=edit))_
- Push notifications - No início do novo ano as notificações do final do ano anterior não são apresentadas nos grupos de data _([181923](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=181923&_a=edit))_
- Campos disable com fundo branco como se estivessem enable _([182035](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182035&_a=edit))_
- Campos decimal com mais de duas casas decimais em modo de edição _([182044](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182044&_a=edit))_
- Search - utilizador encaminhado para o seletor de subscrições depois de efetuar uma pesquisa _([164289](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=164289&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.2.18**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.1" para "**release_12.3.2**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_2.config)

## HOTFIX 12.3.3 _(25 Jan 2022)_

### Resumo dos problemas resolvidos

- Erro ao criar companies localmente (localhost usando ficheiro subscriptions.json com SM) _([182760](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182760&_a=edit))_
- Aceder às opções rápidas dá toast com erro de draft _([177483](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177483&_a=edit))_

### Procedimentos adicionais necessários 

- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.2" para "**release_12.3.3**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_3.config)

## HOTFIX 12.3.4 _(31 Jan 2022)_

### Resumo das funcionalidades mais relevantes

- Suporte para o idioma 'italiano'.

### Resumo dos problemas resolvidos

- User Pilot - links fazem refresh na APP _([182790](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182790&_a=edit))_
- Tooltip de alerta posicionada por baixo do componente da aba lateral _([177005](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=177005&_a=edit))_
- Visibilityclaims não são consideradas nas opções de contexto _([183545](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183545&_a=edit))_
- API - mensagens de erro pouco claras em detalhes de entidade _([180848](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180848&_a=edit))_
- Possibilidade de criar um artigo de Vendas com um código de imposto permitido apenas para Compras, via API _([183667](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183667&_a=edit))_
- Totais em extratos não perceptíveis em modo dark _([176062](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=176062&_a=edit))_
- Não permite criar atributo tipo view na entidade line aplicando para entidade quotation _([182457](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182457&_a=edit))_
- Upper na criação (insert) de uma role _([182031](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182031&_a=edit))_
- SDK - Geração das scripts SQL não está a fazer escape de caracteres especiais _([180898](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=180898&_a=edit))_
- API - Pedidos OData com queries erradas devolvem 500 em vez de 400 _([183454](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183454&_a=edit))_
- O Importador não consegue atualizar o registo importado no produto _([182499](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182499&_a=edit))_
- Erro 500 em listas agrupadas, ao ordenar colunas que fazem parte do agrupamento _([176202](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=176202&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.4.0023**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.3" para "**release_12.3.4**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_4.config)
  
## HOTFIX 12.3.5 _(18 Fev 2022)_

### Resumo das funcionalidades mais relevantes

- Performance - TVFs de Lookup simplificadas;
- Picking - Envio de Ids nos atributos do tipo View;

### Resumo dos problemas resolvidos

- Tradução errada de items (EN) _([184103](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184103&_a=edit))_
- Caractere das tooltips descentrado quando o campo tem checkbox associada _([182660](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182660&_a=edit))_
- Na picking dos pagamentos após escolher 1 registo, aparece a opção "Edição em lote" _([182815](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182815&_a=edit))_
- Quando se faz uma pesquisa no search da barra de topo, a animação de pesquisa não desaparece, mesmo depois de ter efectuado a pesquisa _([184188](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184188&_a=edit))_
- Drill down na coluna Modelo não funciona _([184092](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184092&_a=edit))_
- Não apresenta descrição na coluna Modelo _([184091](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184091&_a=edit))_
- Valor do "Total de Impostos" e "Total" não atualiza _([184099](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184099&_a=edit))_
- Não há fallback para a setting "theme" quando o valor encontrado não é válido ("dark") _([186792](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186792&_a=edit))_
 
### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.5.0026**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.4" para "**release_12.3.5**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_5.config)
- Scripts de upgrade: [**scripts sql**](./database/db_upgrade_12.3.5.X.zip)       
**NOTA:** Se pretenderem otimizar as TVFs de lookup nas BDs dos clientes existentes, é necessário juntar aos scripts de upgrade, os sql _"004.'module'.lookups.sqlserver.sql"_ gerados de cada um dos módulos de produto.

### Problemas Conhecidos

- Versionamento da aplicação cliente falha com mais de 3 digitos _([187268](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187268&_a=edit))_

## HOTFIX 12.3.6 _(28 Fev 2022)_

### Resumo dos problemas resolvidos

- Quando se invoca um endpoint /print ou /printoriginal /reprint com um guid que não existe, a API devolve 200 com PDF branco em vez de devolver 404 _([185772](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185772&_a=edit))_
- Validação de Email não é feita corretamente _([186233](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186233&_a=edit))_

### Procedimentos adicionais necessários 

- Para que a validação do email ocorra em campos do tipo 'email', de forma implícita, é necessário atualizar o 'web.config', acrescentando o setting:
```xml
<appSettings>
...
<add key="dataAnnotations:dataTypeAttribute:disableRegEx" value="false" />
...
</appSettings>
```
- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.6.0033**
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_6.config)

### Problemas Conhecidos

- Versionamento da aplicação cliente falha com mais de 3 digitos _([187268](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187268&_a=edit))_

## HOTFIX 12.3.7 _(8 Mar 2022)_

### Resumo dos problemas resolvidos

- Edição de template de impressão - alterações no cabeçalho não são gravadas _([186608](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186608&_a=edit))_
- A empresa do contexto é alterada automaticamente _([186947](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186947&_a=edit))_
- Erro de Draft ao editar Extensão _([186914](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186914&_a=edit))_
- Versionamento da aplicação cliente falha com mais de 3 digitos _([187268](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187268&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.7.0037**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.5" para "**release_12.3.7**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_7.config)
- Adicionar o SP DocumentDB nas bases de dados dos vários ambientes [**V4-IsSimpleDraft**](./database/V4-IsSimpleDraft.js)
**IMPORTANTE:** Este SP **tem que ser** adicionado nas DocumentDBs antes da publicação do HOTFIX.

## HOTFIX 12.3.8 _(17 Mar 2022)_

### Resumo dos problemas resolvidos

- Performance - Melhorias nas validações do SDK

### Resumo dos problemas resolvidos

- Picking - Erro ao selecionar o campo data no EFatura (Edição em lote) _([187097](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187097&_a=edit))_
- Picking - Carregar e limpar campo no Efatura não remove a descrição do campo anteriormente carregado _([187086](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187086&_a=edit))_
- Picking - O cliente consegue clicar em aplicar mais rápido do que a resposta do side-effect _([187583](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187583&_a=edit))_
- Erro ao aceder a uma lista com filtro após upgrade/renovação com draft prévio dessa lista _([187810](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187810&_a=edit))_
- Erro 503 ao entrar na configuração de template de impressão quando não existe imagem e a checkbox Usar logo da empresa está ativa _([186605](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186605&_a=edit))_
- Status 500 ao criar/selecionar registo in line _([188179](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188179&_a=edit))_
- Parametro limite nos templates report não grava o valor alterado _([187965](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187965&_a=edit))_

### Procedimentos adicionais necessários 

- Adicionar referência para o modelo de apresentação no tt's 'Service.Managers.Base.tt'
- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.8.0040**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.7" para "**release_12.3.8**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_8.config)
- Atualizar o SP DocumentDB nas bases de dados dos vários ambientes [**V4-IsSimpleDraft**](./database/V4-IsSimpleDraft.js)

## HOTFIX 12.3.9 _(12 Abr 2022)_

### Resumo das funcionalidades mais relevantes

- Integração com a plataforma de _user engagement_ [heap.io](https://heap.io/)

### Resumo dos problemas resolvidos

- Grid - ENTER não passa para linha seguinte _([187473](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187473&_a=edit))_
- Lookup - quando pesquisamos artigos por números não é carregada FK _([189762](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189762&_a=edit))_
- Ao fazer "Tab" entre campos com lookup seleciona primeiro registo da dropdown _([188596](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188596&_a=edit))_
- Filtro da data final desaparece nas entradas de diário _([187132](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187132&_a=edit))_

### Procedimentos adicionais necessários 

- Para ativar a integração com o heap.io, adicionar na configuração de _environment_:
```json
"userEngagement": {
    ...
    "heap": {
      "accountId": "?????"
    }
    ...
```
- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.3\sdk\\**12.3.9.0041**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.3.7" para "**release_12.3.9**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_3_9.config)
