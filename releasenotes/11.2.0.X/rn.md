| **Server version** | 11.2.0.X                                                                   |  
| ---:               | :---                                                                       |
| **Cliente tag**    | mainline_11.2.0                                                            |
| **SDK**            | [**11.02.00.0531**](\\\storage\BUILDS\TFS\fw4\mainline\SDK\11.02.00.0531)  |
| **Upgrade DB**     | [**scripts sql**](./db_upgrade.zip)                                        |
<br/>

# Resumo das funcionalidades mais relevantes

- Possibilidade de configurar o tamanho e resolução usados no upload de imagens, incluíndo via API;
- Melhorias de performance no boot da aplicação cliente;
    - Carregamento da totalidade do menu num pedido apenas;
	- Menu guardado em cache no browser;
	- Redução de pedidos ao servidor (get e create de drafts, etc...);
	- Formly com deteção de alterações _on push_;
- Possibilidade de redifinir a animação de loading da aplicação;
- UserPilot
	- Possibilidade de definir contadores UserPilot
	- Possibilidade de definir eventos para as ações:
		- Save
		- Save and New
		- Save and Send
		- Save and Print
		- Cancel
		- Reset
		- Import
- Remoção de features obsoletas;  
- Melhorias no componente de lookup;
- Possibilidade de visualizar campos do tipo data no formato ano/mês;
- AppConfiguration: Leitura de settings usando labels hierarquicas, permitindo otimizar a gestão de settings;
<br/><br/>

# Resumo dos problemas resolvidos

- Drill down na lista com Chave e Descrição de outra Entidade _([145663](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=145663&_a=edit))_
- Lista com filtros obrigatórios fica em Loading infinito _([158404](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158404&_a=edit))_
- Ao configurar uma lista, o campo entidade "pai" fica com os dados da entidade principal _([158406](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158406&_a=edit))_
- Remoção de linhas de artigo não atualiza o nº de linhas na grelha de artigos _([156685](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=156685&_a=edit))_
- [FIREFOX] Templates - cursor do rato errado na checkbox de logo da empresa _([155669](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=155669&_a=edit))_
- Erro quando se insere um espaço ou + em campo lookup _([158454](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158454&_a=edit))_
- O component inlineAlertMessage efetua duas chamadas e não resolve atributos do model na rota _([159445](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159445&_a=edit))_
- Field do tipo Button fica disable em modo de visualização _([159406](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159406&_a=edit))_
- Evento NewUserCreatedEvent não é disparado _([160569](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161689&_a=edit))_
- Users convidados adicionados como application no CMS _([161715](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161715&_a=edit))_
- Expander - Ao abrir um expander sem dados default este fica em loading _([162112](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162112&_a=edit))_
- Support Chat - erro ao abrir _([162169](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162169&_a=edit))_
- Lookup - Ao remover um resultado e selecionando um novo, o input é limpo temporariamente e é mostrado o icon de alerta _([162169](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162169&_a=edit))_
- Depois de remover o valor de uma lookup e retirar foco do input, o valor apagado é mostrado novamente antes do input ser limpo _([162181](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162181&_a=edit))_
- Imprimir e predefinir não está a guardar o template selecionado _([162212](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162212&_a=edit))_
- Impressão em lote - o espaço que permite seleção à volta da checkbox deve ser maior _([162549](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=162549&_a=edit))_
- A criação de empresas está a navegar para a entidade (base), quando devia apontar para a extensão _([161010](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161010&_a=edit))_
- Ao adicionar colunas no configurador de listas, são duplicadas as colunas modeladas da entidade pai _([161015](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161015&_a=edit))_
- Na impressão o "0" do Total passa para linha de baixo _([163176](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=163176&_a=edit))_
- [MAIN OK] Background não ocupa a área do input num campo lookup em erro _([161943](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161943&_a=edit))_
- useAplicationService com passos desnecesários _([158747](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158747&_a=edit))_
- Não permite com editar registos que tenham uma grande quantidade de registos nas relações many-to-many _([158493](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=158493&_a=edit))_
- Correção de rotas de poupop _([161347](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161347&_a=edit))_
- Exportação de listas para CSV desconfiguradas _([161011](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161011&_a=edit))_
- Merge remove imagens _([159723](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159723&_a=edit))_
- Não é possível efetuar a navegação usando um link (_[159405](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159723&_a=edit))_

### Obsolete, As Design, Not a Bug, Duplicated ou Assumed as Limitation 
- [Assumed as Limitation] View não carrega atributo criado via api _([155479](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=155479&_a=edit))_
- [NPTR] O nome da coluna de uma lista não é traduzido se o campo não existir na lista _([159861](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159861&_a=edit))_
- [Duplicado] Status 500 ao fazer export da lista de uma entidade custom _([163043](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=163043&_a=edit))_
- [Duplicado] Modal não carrega modelos de report _([163066](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=163066&_a=edit))_
- [Not a Bug] Resultado da pesquisa não traz entidade currency ao criar atributo tipo Money _([163071](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=163071&_a=edit))_
- [Duplicated] Validação inline altera/desformata campo _([159427](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=159427&_a=edit))_
- [NPTR] A aplicação bloqueia após o envio de um Recibo por email _([161738](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161738&_a=edit))_
- [Obsolete] Rotas duplicadas (case sensitive) _([151338](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=151338&_a=edit))_

<br/><br/>

# Problemas conhecidos

Os problemas estão reportados [**aqui**](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW?activeDashboardId=2e64cacd-a914-49a1-b029-f846d0d6b9bc).
<br/><br/>

# Procedimentos adicionais necessários

### Alterações ao Web.Config:

Adicionar a rewrite rule:
```xml
<rule name="root"> 
    <match url="^\/?$" /> 
    <action type="Rewrite" url="ClientApp/dist/index.html" /> 
</rule> 
```

Adicionar a secção:
```xml
<fileUploadConfiguration>
    <elements>
        <add name="default" imageMaxSizeMB="3" imageSizeFormat="vga" />
    </elements>
</fileUploadConfiguration>
```

Alterar o 'type' da secção 'DataBaseUpgradeConfiguration':
```xml
<section name="databaseUpgradeConfiguration" type="Primavera.Core.Domain.Configuration.DatabaseUpgradeConfigurationSection, Primavera.Core, Version=3.0.0.0, Culture=neutral, PublicKeyToken=33086db60a481256" />
```
### Configurações da aplicação cliente

Adicionar entrada para uma rota adicional no ficheiro 'general.json'. 
```xml  
{ 
  "id": "rootFullMenuUri", 
  "baseUrl2": "/shell/menuDatas/getFullRootMenu", 
  "baseUrl": "/app/{{AccountKey}}/{{SubscriptionKey}}/shell/menuDatas/getFullRootMenu", 
  "description": "Root full menu" 
} 
```

Adicionar a seguinte entrada nos ficheiros _environment_, para ter suporte ao telemetry do lado do cliente. 
```xml
telemetry: { 
  enabled: true, 
  instrumentationKey: 'ee040cdb-a1a4-45b5-9143-acec66c68633' 
} 
```

### Customização da animação de loading no boot da aplicação cliente

Deve ser incluído um ficheiro de estilo 'loader.scss”' juntamente com os demais ficheiros de estilo, na ClientApp:

<img src="./images/loader.jpg" width="250">

Este ficheiro pode ser inicialmente criado vazio, e deve ser usado para fazer override ao aspeto do loader. 

### Desinstalar referências a projectos WEB de módulos de Framework

Os módulos de FW já não têm projetos WEB, pelo que podem ser desinstalados.

### Apagar ficheiro Services.Diagram dos módulos e voltar a gerar o mesmo (auto-arrange diagram)

Este procedimento serve para fazer desaparecer o ‘Compartment’ vazio nas ListOperations (bug DSL/Microsoft)

NOTA: Caso não queiram perder o layout atual do diagrama de serviços, podem abrir o ficheiro Services.Diagram com o editor de texto e apagar as linhas ```xml<elementListCompartment Id="id" absoluteBounds="1, 1, 1" name="Parameters" titleTextColor="Black" itemTextColor="Black" />``` nas ListOperations.

### Refactoring do upload de imagens  

O método _HandleImageUploadRequestAsync_ deixa de estar disponível no ApiBaseController e passa a estar disponível num o application service _ImageHandlingService_ com funcionalidades equivalentes. 
As entidades _Image_, _ImageFormatValidator_, _ImageResizer_, _Imageresizerformat_, _ImageResolutionValidator_ e _ImageSizeFormat_ foram movidas para o namespace _Primavera.Core_.
<br/><br/>

### Atualizar _UserPilot_

Deve ser incluído um ficheiro de configuração 'userpilot.json' juntamente com os demais ficheiros de configuração, na ClientApp:

<img src="./images/userpilot.png" width="250">

Um exemplo de configuração pode ser encontrado [**aqui**](./userpilot.json)
<br/><br/>

# Packages (nuget)

Por forma a facilitar o uso do feed único, disponibilizamos [**aqui**](./packages.config), a lista de packages Elevation/CL/Lithium a importar.
<br/><br/>
