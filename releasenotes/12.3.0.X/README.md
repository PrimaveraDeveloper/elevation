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
 
### PROBLEMAS CONHECIDOS

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
