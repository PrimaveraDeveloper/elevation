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
  - SDK: Melhorias na transformação de tt's que manipulam resources
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

### Client App

**As alterações à aplicação de cliente devem ser acompanhadas por um elemento da equipa de cliente**

#### A migração de uma client app para a primeira versão do SDK exige: 

- criação do ficheiro primavera-sdk.json 
- atualização do script postinstall no package.json 
- "postinstall": "ng g @primavera/schematics:generated-code && ngcc –create ivy-entry-points --properties es2015 browser module main" 
- adicionar nas devDependencies @primavera/schematics [npm i @primavera/schematics@release_12.4.0 --save-dev] 
- remoção do package das devDependencies client-app-core 

#### As alterações realizadas ao nível da estrutura da solução de css's e temas irá implicar alterações nas css's custom existentes nas aplicações ou módulos de produto.

- Nos componentes custom colocar a referência para scss do próprio componente, exemplo; 

```js
@Component({ 
  selector: 'pri-circle-count', 
  templateUrl: 'circle-count.component.html', 
  styleUrls: ['circle-count.component.scss'], 
  encapsulation: ViewEncapsulation.None 
}) 
``` 

- No ficheiro product.scss é necessario acrescentar as variaveis de cor do produto e do header (ver com equipa de ux) 

- No angular.json é necessário acrescentar o caminho para os css 

```json
"styles": [ 
              { 
                "input": "src/generated-code/styles/loader.scss", 
                "inject": true, 
                "bundleName": "loader" 
              }, 
              "@angular/material/prebuilt-themes/deeppurple-amber.css", 
              "@primavera/themes/index.scss", 
              "@primavera/components/styles/toasts.scss", 
              { 
                "input": "src/generated-code/styles/theme.light.scss", 
                "inject": false, 
                "bundleName": "light.theme" 
              }, 
              { 
                "input": "src/generated-code/styles/theme.dark.scss", 
                "inject": false, 
                "bundleName": "dark.theme" 
              } 
            ], 
```

### Bug Fixing

- Alterar o custom code relacionado com o PrintAsync _(ver exemplo no changeset [2280407](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW/_versionControl/changeset/2280407))_
- Adicionar referência para o modelo de entidades nos tt's 'Business.Managers.Base.tt' e 'Services.Managers.Base.tt' _(ver exemplo no changeset [2280443](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/INT-FW/_versionControl/changeset/2280443))_
- Construir um script de upgrade para atualizar o valor da coluna 'Description' da tabela SchemaAttributes, a partir das diferenças geradas nos ficheiros de sql 'XXXX.Entities.Schema.sqlserver.sql', para todos os módulos de produto. Os módulos de FW já estão tratados no script de upgrade em anexo

### Packages

- Adicionar referência para o package 'System.Runtime.Caching' nos projetos 'Data' de todos os módulos

# Packages (nuget)

Lista de dependências PRIMAVERA, para facilitar o uso do feed único:

- [**Elevation**](./packages/packages_fw_12_4_0.config)
- [**ThirdParty**](./packages/packages_thirdparty_12_4_0.config) _(outros packages que devem ser atualizados)_
<br/><br/>

## HOTFIX 12.4.1 _(4 Abr 2022)_

### Resumo das funcionalidades mais relevantes

- Performance - Melhorias nas validações do SDK

### Resumo dos problemas resolvidos

- Não surgem as propriedades de uma coluna de uma List View do Presentation Model _([189027](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189027&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.1.0015**

## HOTFIX 12.4.2 _(12 Abr 2022)_

### Resumo das funcionalidades mais relevantes

- Integração com a plataforma de _user engagement_ [heap.io](https://heap.io/)
- Simplificação dos métodos de print (reutilizando o 'PrintById')
- Reformulação das pagina de erro, de acordo com o Primavera Design System
- Menus automaticamente expandidos quando existe apenas um item
- Melhorias na gestão de cache client-side

### Resumo dos problemas resolvidos

- Grid - ENTER não passa para linha seguinte _([187473](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187473&_a=edit))_
- Lookup - quando pesquisamos artigos por números não é carregada FK _([189762](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189762&_a=edit))_
- Ao fazer "Tab" entre campos com lookup seleciona primeiro registo da dropdown _([188596](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188596&_a=edit))_
- Filtro da data final desaparece nas entradas de diário _([187132](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=187132&_a=edit))_
- Não surgem as propriedades de uma coluna de uma List View do Presentation _([189027](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189027&_a=edit))_
- Lable não é traduzível _([182772](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=182772&_a=edit))_
- Erro ao fazer drilldown enquanto a informação está a ser carregada _([186795](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186795&_a=edit))_
- Alterando o contexto de empresa o seletor de empresa/subscrição não reflete o mesmo _([188016](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188016&_a=edit))_
- Icon de alerta - icon continua visível sem mensagem não permitindo gravar a entidade _([184639](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=184639&_a=edit))_

### Procedimentos adicionais necessários 

- Para ativar a integração com o heap.io, adicionar na configuração de _environment_:
```json
"userEngagement": {
    "heap": {
      "applicationId": "?????"
    }
}
```
- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.2.0016**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.4.0" para "**release_12.4.2**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_4_2.config)

## HOTFIX 12.4.3 _(13 Abr 2022)_

### Resumo dos problemas resolvidos

- Quick actions - com hover não é muito perceptível o texto _([188953](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=188953&_a=edit))_
- Campo data no expander desalinhado _([189066](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189066&_a=edit))_
- Create inline num campo master provoca erro "toLowerCase" nos detalhes _([189932](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189932&_a=edit))_
- Notificações - view desformatada _([190124](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190124&_a=edit))_
- Mensagem é despoletada na view sem informação [object Blob] _([186578](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186578&_a=edit))_

### Procedimentos adicionais necessários 

- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.4.2" para "**release_12.4.3**"

## HOTFIX 12.4.4 _(21 Abr 2022)_

### Resumo das funcionalidades mais relevantes

- Atualização da lista de 'icons' disponível _(pollen)_

### Resumo dos problemas resolvidos

- Erro ao abrir views que usem o componente pri-formly-detail-form-section _([190355](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190355&_a=edit))_
- Erro ao eliminar registos dentro do componente pri-formly-detail-form-section _([190421](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190421&_a=edit))_
- Componente pri-formly-detail-form-section sobrepõem-se quando adicionamos mais que um _([190508](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190508&_a=edit))_

### Procedimentos adicionais necessários 

- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.4.3" para "**release_12.4.4**"

## HOTFIX 12.4.5 _(21 Abr 2022)_

### Resumo dos problemas resolvidos

- Stopfield do tipo data dá erro ao sair com o TAB ou ENTER em PT e ES _([190599](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=190599&_a=edit))_
- Picagem de artigos com o leitor de código de barras não faz pesquisa e não seleciona artigo _([189553](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189553&_a=edit))_

### Procedimentos adicionais necessários 

- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.4.4" para "**release_12.4.5**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_4_5.config)

## HOTFIX 12.4.6 _(4 Mai 2022)_

### Resumo dos problemas resolvidos

- Código gerado atribuiu o mesmo nome ao parâmetro e a variável _([191680](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=191680&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.6.0028**

## HOTFIX 12.4.7 _(11 Mai 2022)_

### Resumo das funcionalidades mais relevantes

- Picking Basic: alterações persistidas em memória no browser
- Possibilidade de fechar os steppers (em popup)
  
### Resumo dos problemas resolvidos

- Abertura de ponto de menu após pesquisa não carrega dados _([191355](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=191355&_a=edit))_
- Rota por defeito Onboarding não está a ser obtida _([189589](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=189589&_a=edit))_
- Setting do Theme - user não tem theme definido quando acede pela 1ª vez à aplicação _([191147](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=191147&_a=edit))_
- Links das mensagens dos insights fazem reload da app antes de navegarem para a respetiva operação _([191163](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=191163&_a=edit))_
- A opção Profile não está a abrir a página correta do identity _([191204](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=191204&_a=edit))_
- Valores negativos são incrementados em 1 (campos totalizadores) _([192282](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192282&_a=edit))_
- Coachmarks - disponíveis em views que não deveria _([186846](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=186846&_a=edit))_
- Registos de uma custom list apenas aparecem movendo o scroll _([173734](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=173734&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.7.0030**
- Alterar a tag dos módulos de FW, na ClientApp, de "release_12.4.5" para "**release_12.4.7**"
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_4_7.config)

## HOTFIX 12.4.8 _(13 Mai 2022)_
 
### Resumo dos problemas resolvidos

- AsNoTracking() erradamente incluído, com QueryCaching disabled _([192538](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192538&_a=edit))_

### Procedimentos adicionais necessários 

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.8.0032**
- Promover os seguintes packages para o feed de produto:
  - [**Elevation**](./packages/packages_fw_12_4_8.config)

## HOTFIX 12.4.9 _(18 Mai 2022)_
 
### Resumo dos problemas resolvidos

- Se um entidade implementar um interface IMoney e não existir um campo do tipo money nos atributos, não sao geradas as colunas 'BaseCurrencyId' e 'ReportingCurrencyId' _([192982](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=192982&_a=edit))_

### Procedimentos adicionais necessários

- Atualizar o SDK: "\\storage\BUILDS\TFS\framework\release-12.4\sdk\\**12.4.9.0034**
