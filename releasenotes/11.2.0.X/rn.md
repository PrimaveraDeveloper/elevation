DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT - DRAFT

| **Server version** | 11.2.0.X                                                                   |  
| ---:               | :---                                                                       |
| **Cliente tag**    | mainline_11.2.0                                                            |
| **SDK**            | [**11.01.00.0524**](\\\storage\BUILDS\TFS\fw4\mainline\SDK\11.02.00.XXXX)  |
| **Upgrade DB**     | [**scripts sql**](./XXXX.zip)                                        |
<br/>

# Resumo das funcionalidades mais relevantes

- Possibilidade de configurar o tamanho e resolução usados no upload de imagens, incluíndo via API;
- Melhorias de performance no boot da aplicação;
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
		- Import
- Remoção de features obsoletas   
<br/><br/>

# Resumo dos problemas resolvidos

- - User não fica guardado na bd após primeiro login _([161689](https://tfs.primaverabss.com/tfs/P.TEC.Elevation/Elevation3/_workitems?id=161689&_a=edit))_
- XXX
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

### Desinstalar referências a projectos WEB de módulos de Framework:

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

Por forma a facilitar o uso do feed único, disponibilizamos [**aqui**](./packages.json), a lista de packages Elevation/CL/Lithium a importar.
<br/><br/>
