Requisitos para rodar o projeto:
- Python 3.7+
- Conta na RapidAPI
- Banco PostgreSQL

Para ter acesso a API, acesse o site https://rapidapi.com/auth/sign-up?referral=/api-sports/api/api-football.
Você ja irá cair direto na pagina da API com sua TOKEN no campo X-RapidAPI-Key

-> Lembre de copiar o arquivo keyvault_template e alterar os campos com o campo "???"
Você precisará da API-KEY e das credencias de acesso ao seu banco e nada mais.



Para popular o banco pela primeira vez, execute todo o SQL do arquivo schema.txt no seu banco e então inicie a execução dos notebooks:

    - primeira_carga_dos_paise.ipynb
        - Popula todos os paises que tem ligas na API

    - primeira_carga_por_pais.ipynb
        - Carrega ligas deste pais. Colocar nome do pais, em ingles na variavel presente logo no inicio do notebook!

    - season_updater
        - Adiciona os anos disponives. Rodar 1x por ano. 

    - team_updater
        - Adiciona os times deste pais. Necessário passar pais e liga!

    - fixture_updater
        - Adiciona para esta liga e season, as partidas disputadas e as estatiscas das mesmas, tambem a sumarização das estatisticas dos jogadores nesta liga. Necessário passar Liga e Season!

    - fixture_player_update
        - Atualiza as estatisticas dos jogadores individualmente por liga e por rodada