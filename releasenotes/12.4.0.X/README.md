| **Server version** | 12.4.0.X                                                                           |  
| ---:               | :---                                                                               |
| **Cliente tag**    | release_12.4.0                                                                     |
| **SDK**            | [**12.04.00.0012**](\\storage\BUILDS\TFS\framework\release-12.4\sdk\12.4.0.0012)   |
| **Upgrade DB**     | [**scripts sql**](./database/db_upgrade.zip)                                       |
<br/>

# Resumo das funcionalidades mais relevantes

- Client SDK V1 _(Tooling disponível para execução de tarefas de gestão da client app)_
  - Criação de novas aplicações utilizando a shell como template 
  - Criação de 'Client Libs' para API's que tenham uma especificação OPENAPI definida e acessível
  - Suporte a migrações da client app
- Uniformização com o PRIMAVERA DESIGN SYSTEM (PDS) 
  - Reestruturação da solução de styles 
  - Temas dark e white com as regras definidas no PDS 
  - Cores do produto conformes com o PDS e de fácil customização no produto
  - Fonte de icones única
- Listas
  - Possibilidade de agregar texto e imagem numa única coluna 
- Performance
  - Introdução de Query Caching (EFPlus) no acesso a dados em código gerado
  - Possibilidade de utilização de Query Caching também em código custom _(API disponível no 'EntityContext')_
  - SDK: Melhorias nas validações de modelos
- Single sign out
  - O estado da sessão do utilizador no Identity é partilhado entre Produto e AMS
<br/><br/>

# Resumo dos problemas resolvidos

- Status 500 ao criar/selecionar registo in line _([188179](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188179&_a=edit))_
- Parametro limite nos templates report não grava o valor alterado _([187965](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187965&_a=edit))_
- Sublinhado sobrepoe o texto "Original" alinhado a esquerda do report _([187963](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187963&_a=edit))_
- Balão informativo fica oculto por barra superior _([187761](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187761&_a=edit))_
- Notificações - Não é possível ler o título quando este é mais extenso _([187578](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187578&_a=edit))_
- Status 500 ao fazer create em uma entitidade custom _([187445](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187445&_a=edit))_
- Filtros das listas custom - está a ser colocado o drill down para a entidade _([187362](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187362&_a=edit))_
- API - erro 500 ao criar uma fatura _([186961](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186961&_a=edit))_
- Ao abrir expander com grid a view fica em loading infinito _([186922](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186922&_a=edit))_
- Erro na rota ao aceder ao detalhe de um detalhe _([186482](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186482&_a=edit))_
- Impressão - texto sobreposto no detalhe do documento _([185784](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185784&_a=edit))_
- Impressão - modelo de template desatualizado não reflete alteração no alinhamento do texto _([185780](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185780&_a=edit))_
- RowLevelSecurity - O valor da AccessClaim não é copiado da empresa para a entidade associada _([185497](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185497&_a=edit))_
- RowLevelSecurity - Erro ao gerar SQL para entidades com restrição de acesso e filtro automático por empresa _([185342](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185342&_a=edit))_
- RowLevelSecurity - Erro ao associar grupos a empresas _([185156](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185156&_a=edit))_
- Erro na Currency ao criar delivery _([185049](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185049&_a=edit))_
- Referência da entidade Detail para o Master não gera resource nem traduções na tabela SchemaAttributes _([185039](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=185039&_a=edit))_
- Erro 500 ao agrupar uma lista por uma coluna ordenada previamente _([184682](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184682&_a=edit))_
- Icon de alerta - icon continua visível sem mensagem não permitindo gravar a entidade _([184639](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184639&_a=edit))_
- Cores pouco percetíveis nas Definições de Impressão de documentos _([184285](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184285&_a=edit))_
- Na modelação o default value de uma valuelist deixou de aparecer a opção "None" _([184191](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184191&_a=edit))_
- Quando se faz uma pesquisa no search da barra de topo, a animação de pesquisa não desaparece, mesmo depois de ter efectuado a pesquisa _([184188](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184188&_a=edit))_
- Edição em lote: Campo Data não funciona _([184140](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184140&_a=edit))_
- Entidade com o campo Description com 255 caracteres _([183543](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183543&_a=edit))_
- Checkbox - Icon de erro não está disponível para campos do tipo boolean _([183286](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183286&_a=edit))_
- Adicionar Anexo com o nome do ficheiro com mais de 255 caracteres _([183133](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=183133&_a=edit))_
- Extensão de Entidade GLAccount (chave composta) gera código errado (Services.Managers.Base e Business.Managers.Base) _([182500](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182500&_a=edit))_
- Tooltip no hover nas opções de menu não está a ser apresentado _([176582](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=176582&_a=edit))_
- Sql da lookup mal gerada quando existe na tabela duas FK para a mesma tabela _([174119](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=174119&_a=edit))_
- Registos de uma custom list apenas aparecem movendo o scroll _([173734](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173734&_a=edit))_
- Modelação de uma entidade master detail e uma entidade many to many _([170596](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=170596&_a=edit))_
- [Chrome/Opera] Autocomplete / Autofill do browser, sobrepõe-se às Lookup da aplicação _([169293](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=169293&_a=edit))_
- Ao adicionar colunas de 3º nível no configurador de listas, são duplicadas as colunas modeladas das entidades pai _([161232](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161232&_a=edit))_
- Configurar lista com um FK para a mesma entidade _([148580](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=148580&_a=edit))_
- Configurar lista de uma entidade que tem duas FK para outra entidade _([148226](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=148226&_a=edit))_
- Personal data report dá 404 _([188477](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188477&_a=edit))_

# Procedimentos adicionais necessários

### Bug Fixing

- Alterar o custom code relacionado com o PrintAsync _(ver exemplo no changeset [2280407](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW/_versionControl/changeset/2280407))_
- Adicionar referência para o modelo de entidades nos tt's 'Business.Managers.Base.tt' e 'Services.Managers.Base.tt' _(ver exemplo no changeset [2280443](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW/_versionControl/changeset/2280443))_
- Construir um script de upgrade para atualizar o valor da coluna 'Description' da tabela SchemaAttributes, a partir das diferenças geradas nos ficheiros de sql 'XXXX.Entities.Schema.sqlserver.sql', para todos os módulos de produto. Os módulos de FW já estão tratados no script de upgrade em anexo

### Packages

- Instalar os packages 'Z.EntityFramework.Plus.EF6', 'Z.EntityFramework.Extensions' e 'Z.Expressions.Eval' nos projetos 'Data' de todos os módulos
- Adicionar referência para o package 'System.runtime.caching' nos projetos 'Data' de todos os módulos

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_4_0.config)
<br/><br/>
