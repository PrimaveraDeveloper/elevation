| **Server version** | 13.0.0.X                                                                           |  
| ---:               | :---                                                                               |
| **Cliente tag**    | release_13.0.0                                                                     |
| **SDK**            | [**13.00.00.0030**](\\storage\BUILDS\TFS\framework\release-13.0\sdk\13.0.0.0030)   |

<br/>

# Resumo das funcionalidades mais relevantes

- Migração tecnológica
  - Host em .NET6
  - Módulos em .NetStandard 2.1
- SDK
  - Suporte para Visual Studio 2022
  - Melhorias de Performance
    - Tempo de instalação
    - Tempo de 'save' dos modelos
    - Tempo de execução de validações
    - Tempo de transformação
    - Tempo de load das soluções
- Middleware de registo de tempos nos requests, com suporte para mini-profiler
  - Possibilidade de registar os tempos dentro de um request e perceber onde estão as maiores perdas
- Suporte ao idioma Romeno (RO)
- Performance
  - Boot das aplicações melhorado
  - Api mais rápida em comparação com as versões anteriores

# Procedimentos adicionais necessários

Dada a complexidade desta atualização, as equipas Elevation vão acompanhar a migração de todos os produtos.

- **NOTA 1:** As equipas de produto devem incluir esta migração nos respetivos Roadmaps, e alinhar a migração com as equipas Elevation.
- **NOTA 2:** Também é necessário alinhar a intervenção com a SWE, para que possa fazer as alterações necesárias no processo de build.
