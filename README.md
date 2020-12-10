# Pipeline de Dados  para Consultar API Rest com NiFi
Pipeline de Dados com NIFI para consultar API Rest, publicar dados no Kafka, consumir esses dados e salvar no S3

## Problema
Conseguir recuperar endereços completos através de uma lista de CEP's gravados em uma base de dados.

## Solução
Recuperar a listagem de CEP's da base de dados, consutar cada um dos CEP's na API Via CEP (https://viacep.com.br/) que retorna o endereço completo e assim salvar esses dados em uma base centralizada.

### Escolhas Tecnológicas
- PostgresSQL: banco de dados onde a listagem de CEP's estão armazenados, sendo necessário consultá-la.
- NiFi: ferramenta de ETL para realizar e gerenciar a pipeline de dados, permitindo um fluxo constante de dados.
- Kafka: ferramenta de Stream escolhida para desacoplar o fluxo de Extração e Processamento dos dados, aumentando a escalabilidade e confiabilidade do fluxo.
- S3: lugar escolhido para armazenar os dados no formato JSON após ter recuperado os endereços completos.

### Visão geral dos grupos no NiFi
![alt text](https://github.com/cicerojmm/pipelineConsultaDadosApiComNIFI/blob/master/imagens/grupos-nifi.png?raw=true)


### Fluxo do Grupo de Extração dos Dados
![alt text](https://github.com/cicerojmm/pipelineConsultaDadosApiComNIFI/blob/master/imagens/fluxo-extracap-nifi.png?raw=true)

### Fluxo do Grupo de Processamento dos Dados
![alt text](https://github.com/cicerojmm/pipelineConsultaDadosApiComNIFI/blob/master/images/fluxo-processamento-nifi.png?raw=true)
