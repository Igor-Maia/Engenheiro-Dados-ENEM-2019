# MBA em Engenharia de Dados
## Bootcamp - Engenheiro de dados
### Módulo 4 - PLD Pipelines de Dados
### Professor Neylson Crepalde 
***
## Trabalho Prático do Módulo
### Objetivos
Exercitar os seguintes conceitos trabalhados no Módulo:
- Extração de Dados;
- Desenvolvimento de crawlers;
- Transformações e análise de dados
### Enunciado
Você é uma pessoa da área de Engenheira de Dados em uma empresa de consultoria
educacional. Os consultores da empresa vão auxiliar um grupo educacional de ensino
médio a desenvolver seu planejamento pedagógico e suas metodologias de ensino.  
Nesse sentido, eles fizeram a você uma requisição de preparar dados do ENEM para análise.  
Você deve, portanto, extrair os dados do ENEM, selecionar apenas os alunos de Minas
Gerais e apresentar algumas análises que vão ajudar o trabalho dos consultores.
### Atividades
Você deverá desempenhar as seguintes atividades:
1. Extrair, de maneira programática, os dados do ENEM 2019.
2. Filtrar apenas os alunos do estado de Minas Gerais.
3. Salvar um arquivo CSV com os dados já limpos em seu computador.
4. Escrever os dados numa tabela relacional em uma base de dados de sua escolha
(MySQL, PostgreSQL, SQL Server etc.).
### Execução
- O banco de dados PostgreSql foi criado na "GCP" (Google Cloud)
- Construido o "Jupyter" Notebook que executad as seguintes tarefas:
  - Efetua o download do arquivo compactdo dos dados do resultado do enem2019
  - Descompacta o conteúdo em um diretório pré-determinado
  - Efetua a carga em blocos, 50000 registros por vez;
  - Efetua a inserção no banco Posgres somente dos registros que contem 'CO_UF_RESIDENCIA == 31'
  - Efetua as consultas SQL solicitadas no trabalho prático;
### Problemas enfrentados
- Efetuar a carga do dataframe enem2019 em uma vm com 10gb de memória RAM, apresenta falta de memória no kernel do Jupyter-Notebook  
- Foi feita uma tentativa de carga chunked filtrando apenas os registros com CO_UF_RESIDENCIA == 31 com sucesso, porém ao enviar para o PostGreSQL usando to_sql, acontece falta de memória;

### Solução funcional
- A carga do CSV foi feita em chunks de 50000 registros, nestes chunks é feito o filtro CO_UF_RESIDENCIA == 31 e somente os registros filtrados do chunk são persistidos no PostGres.

### Referências
Vídeo Aulas - IGTI - BootCamp Engenheiro de dados, módulo 4, Pipelines de dados (Prof. Dr. Neylson Crepalde)
https://pythontic.com/pandas/serialization/postgresql  
https://medium.com/@apoor/quickly-load-csvs-into-postgresql-using-python-and-pandas-9101c274a92f  
https://towardsdatascience.com/loading-large-datasets-in-pandas-11bdddd36f7b  
https://chartio.com/resources/tutorials/how-to-execute-raw-sql-in-sqlalchemy/
