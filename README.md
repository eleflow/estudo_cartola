# Estudo Ciência de Dados - Cartola
---
Estudo para criação de análises preditivas com o objetivo de oferecer subsídios aos cartoleiros para que os mesmos possam decidir a escalação de cada rodada baseado na previsão no nível de jogadoes e nível de jogos.

---
# Objetivos do projeto

#### Engenharia de dados
* Realizar a coleta de dados
* Implementar os devidos tratamentos
* Armazenar os dados em um banco de dados (SQL or NoSQL)

#### Ciência de dados
* Fazer o modelo preditivo para prever o número de pontos dos jogadores
* Fazer o modelo preditivo para prever o resultado do jogo ou até mesmo o número de gols

#### Análise de dados
* Criar visualizações e ajudem a escalar os melhores jogadores a cada rodada


---
## Padrões de projeto
* Todos tem autonomia e liberdade para estudar e fazer o que tiverem vontade de fazer
* Podemos partir para uma abordagem em que cada um faz uma solução ou para fazer um esforço coordenado
* Se formos para um esforço conjunto, precisamos combinar:
* Linguagem / Padrão de codificação
    * Arquitetura
    * Controle de versão
    * Ferramenta de controle de projeto (trello) 

---
## Ambiente de desenvolvimento
Ambiente de desenvolvimento conta à princípio com 2 containers em docker, sendo eles:
* Jupyter
    Para o desenvolvimento de notebooks
* PostgreSQL
    Para banco de dados relacional

Para iniciar o ambiente, basta iniciar os container com o comando:
```sh
docker-compose up -d
```