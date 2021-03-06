\connect cartola

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: match; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.historical_matches (
    match bigint,
    turn bigint,
    year bigint,
    date text,
    hour text,
    local text,
    home_id bigint,
    home text,
    home_goal bigint,
    home_players_goals text,
    visitor_players_goals text,
    visitor_goal bigint,
    visitor text,
    visitor_id bigint,
    referee text,
    referee_category text
);


ALTER TABLE public.historical_matches OWNER TO postgres;

--
-- Data for Name: historical_matches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.historical_matches (match, turn, year, date, hour, local, home_id, home, home_goal, home_players_goals, visitor_players_goals, visitor_goal, visitor, visitor_id, referee, referee_category) FROM stdin;
1	1	2012	Domingo 20 de Maio de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[]	[]	1	Grêmio - RS	284	Celio Amorim	ESP
2	1	2012	Domingo 20 de Maio de 2012	18:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Santos - SP	277	Evandro Rogerio Roman	ESP
3	1	2012	Sábado 19 de Maio de 2012	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[]	[]	1	Portuguesa - SP	278	Raphael Claus	CBF-1
4	1	2012	Sábado 19 de Maio de 2012	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[]	[]	1	Náutico - PE	343	Arilson Bispo da Anunciacao	ESP
5	1	2012	Domingo 20 de Maio de 2012	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	1	Fluminense - RJ	266	Fabricio Neves Correa	CBF-1
6	1	2012	Domingo 20 de Maio de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	0	Coritiba - PR	294	Pablo dos Santos Alves	ASP-FIFA
7	1	2012	Domingo 20 de Maio de 2012	16:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	4	[]	[]	2	São Paulo - SP	276	Sandro Meira Ricci	FIFA
8	1	2012	Domingo 20 de Maio de 2012	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	1	Atlético - MG	282	Francisco Carlos do Nascimento	FIFA
9	1	2012	Domingo 20 de Maio de 2012	18:30	João Havelange - Uberlandia - MG	283	Cruzeiro - MG	0	[]	[]	0	Atlético - GO	373	Pericles Bassols Pegado Cortez	FIFA
10	1	2012	Sábado 19 de Maio de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	1	Flamengo - RJ	262	Paulo Cesar de Oliveira	FIFA
11	2	2012	Sábado 26 de Maio de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	1	Ponte Preta - SP	303	Manoel Nunes Lopo Garrido	CBF-1
12	2	2012	Sábado 26 de Maio de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[]	[]	3	Internacional - RS	285	Andre Luiz de Freitas Castro	ESP
13	2	2012	Sábado 26 de Maio de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	1	Vasco da Gama - RJ	267	Heber Roberto Lopes	FIFA
14	2	2012	Sábado 26 de Maio de 2012	21:00	Aflitos - Recife - PE	343	Náutico - PE	0	[]	[]	0	Cruzeiro - MG	283	Luiz Flavio de Oliveira	ASP-FIFA
15	2	2012	Domingo 27 de Maio de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	0	Bahia - BA	265	Wagner Reway	ASP-FIFA
16	2	2012	Domingo 27 de Maio de 2012	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	0	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
17	2	2012	Domingo 27 de Maio de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	3	Botafogo - RJ	296	Wilson Luiz Seneme	FIFA
18	2	2012	Domingo 27 de Maio de 2012	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Sport - PE	292	Márcio Chagas da Silva	ASP-FIFA
19	2	2012	Domingo 27 de Maio de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	0	Palmeiras - SP	275	Marcelo de Lima Henrique	FIFA
20	2	2012	Domingo 27 de Maio de 2012	18:30	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[]	[]	2	Figueirense - SC	316	Nielson Nogueira Dias	ESP
21	3	2012	Quarta 06 de Junho de 2012	19:30	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	1	Grêmio - RS	284	Pablo dos Santos Alves	ASP-FIFA
22	3	2012	Quarta 06 de Junho de 2012	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
23	3	2012	Quarta 06 de Junho de 2012	20:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	4	[]	[]	2	Náutico - PE	343	Wilson Luiz Seneme	FIFA
24	3	2012	Quarta 06 de Junho de 2012	20:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	1	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
25	3	2012	Quarta 06 de Junho de 2012	20:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	0	Portuguesa - SP	278	Jean Pierre Goncalves Lima	CBF-1
26	3	2012	Quarta 06 de Junho de 2012	21:50	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[]	[]	0	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
27	3	2012	Quarta 06 de Junho de 2012	21:50	Vila Belmiro - Santos - SP	277	Santos - SP	1	[]	[]	1	Fluminense - RJ	266	Jailson Macedo Freitas	ESP
28	3	2012	Quarta 06 de Junho de 2012	21:50	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[]	[]	2	Flamengo - RJ	262	Wagner Reway	ASP-FIFA
29	3	2012	Quinta 07 de Junho de 2012	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Figueirense - SC	316	Andre Luiz de Freitas Castro	ESP
30	3	2012	Quinta 07 de Junho de 2012	21:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[]	[]	3	Cruzeiro - MG	283	Fabricio Neves Correa	CBF-1
31	4	2012	Domingo 10 de Junho de 2012	16:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[]	[]	0	Atlético - GO	373	Claudio Francisco Lima E Silva	ESP
32	4	2012	Sábado 09 de Junho de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[]	[]	1	Coritiba - PR	294	Rodrigo Braghetto	CBF-1
33	4	2012	Sábado 09 de Junho de 2012	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	[]	1	Atlético - MG	282	Márcio Chagas da Silva	ASP-FIFA
34	4	2012	Domingo 10 de Junho de 2012	17:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	0	Corinthians - SP	264	Evandro Rogerio Roman	ESP
35	4	2012	Domingo 10 de Junho de 2012	17:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
36	4	2012	Domingo 10 de Junho de 2012	17:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	2	Vasco da Gama - RJ	267	Anderson Daronco	CBF-1
37	4	2012	Domingo 10 de Junho de 2012	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	0	Santos - SP	277	Flavio Rodrigues Guerra	CBF-1
38	4	2012	Domingo 10 de Junho de 2012	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Ponte Preta - SP	303	Claudio Mercante Júnior	ESP
39	4	2012	Domingo 10 de Junho de 2012	18:30	Dilzon Melo - Varginha - MG	283	Cruzeiro - MG	1	[]	[]	0	Sport - PE	292	Raphael Claus	CBF-1
40	4	2012	Domingo 10 de Junho de 2012	18:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	2	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
41	5	2012	Sábado 16 de Junho de 2012	21:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[]	[]	1	Portuguesa - SP	278	Dewson Fernando Freitas da Silva	ASP-FIFA
42	5	2012	Domingo 17 de Junho de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	0	Atlético - MG	282	Elmo Alves Resende Cunha	ESP
43	5	2012	Sábado 16 de Junho de 2012	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[]	[]	2	Botafogo - RJ	296	Paulo Cesar de Oliveira	FIFA
44	5	2012	Sábado 16 de Junho de 2012	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	0	Figueirense - SC	316	Pablo dos Santos Alves	ASP-FIFA
45	5	2012	Domingo 17 de Junho de 2012	16:00	Arena Barueri - Barueri - SP	275	Palmeiras - SP	1	[]	[]	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
46	5	2012	Domingo 17 de Junho de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	0	Corinthians - SP	264	Wilson Luiz Seneme	FIFA
47	5	2012	Domingo 17 de Junho de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	2	[]	[]	1	Sport - PE	292	Guilherme Ceretta de Lima	ASP-FIFA
48	5	2012	Domingo 17 de Junho de 2012	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[]	[]	0	Atlético - GO	373	Nielson Nogueira Dias	ESP
49	5	2012	Domingo 17 de Junho de 2012	16:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[]	[]	0	Santos - SP	277	Francisco Carlos do Nascimento	FIFA
50	5	2012	Domingo 17 de Junho de 2012	18:30	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	0	Grêmio - RS	284	Manoel Nunes Lopo Garrido	CBF-1
51	6	2012	Sábado 23 de Junho de 2012	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	5	[]	[]	1	Náutico - PE	343	Raphael Claus	CBF-1
52	6	2012	Sábado 23 de Junho de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	3	Cruzeiro - MG	283	Andre Luiz de Freitas Castro	ESP
53	6	2012	Sábado 23 de Junho de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[]	[]	0	São Paulo - SP	276	Antonio Rogerio Batista do Prado	CBF-1
54	6	2012	Domingo 24 de Junho de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	2	Internacional - RS	285	Marcelo de Lima Henrique	FIFA
55	6	2012	Domingo 24 de Junho de 2012	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[]	[]	1	Palmeiras - SP	275	Luiz Flavio de Oliveira	ASP-FIFA
56	6	2012	Domingo 24 de Junho de 2012	16:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	0	Flamengo - RJ	262	Wilson Luiz Seneme	FIFA
57	6	2012	Domingo 24 de Junho de 2012	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	1	Bahia - BA	265	Heber Roberto Lopes	FIFA
58	6	2012	Domingo 24 de Junho de 2012	18:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[]	[]	2	Ponte Preta - SP	303	Evandro Rogerio Roman	ESP
59	6	2012	Domingo 24 de Junho de 2012	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	2	Coritiba - PR	294	Pericles Bassols Pegado Cortez	FIFA
60	6	2012	Domingo 24 de Junho de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	4	Fluminense - RJ	266	Paulo Cesar de Oliveira	FIFA
61	7	2012	Quarta 11 de Julho de 2012	19:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	3	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
62	7	2012	Sábado 30 de Junho de 2012	16:20	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	2	[]	[]	3	São Paulo - SP	276	Marcelo de Lima Henrique	FIFA
63	7	2012	Sábado 30 de Junho de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[]	[]	2	Ponte Preta - SP	303	Fabricio Neves Correa	CBF-1
64	7	2012	Sábado 30 de Junho de 2012	16:20	Aflitos - Recife - PE	343	Náutico - PE	0	[]	[]	2	Fluminense - RJ	266	Evandro Rogerio Roman	ESP
65	7	2012	Domingo 01 de Julho de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	3	Sport - PE	292	Wilson Luiz Seneme	FIFA
66	7	2012	Domingo 01 de Julho de 2012	16:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	0	Santos - SP	277	Raphael Claus	CBF-1
67	7	2012	Domingo 01 de Julho de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	1	Internacional - RS	285	Sandro Meira Ricci	FIFA
68	7	2012	Domingo 01 de Julho de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	1	Atlético - MG	282	Paulo Cesar de Oliveira	FIFA
69	7	2012	Domingo 01 de Julho de 2012	18:30	Arena Barueri - Barueri - SP	275	Palmeiras - SP	3	[]	[]	1	Figueirense - SC	316	Francisco Carlos do Nascimento	FIFA
70	7	2012	Domingo 01 de Julho de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[]	[]	2	Atlético - GO	373	Heber Roberto Lopes	FIFA
71	8	2012	Sábado 07 de Julho de 2012	18:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[]	[]	0	Bahia - BA	265	Raphael Claus	CBF-1
72	8	2012	Sábado 07 de Julho de 2012	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	1	Cruzeiro - MG	283	Marcelo de Lima Henrique	FIFA
73	8	2012	Domingo 08 de Julho de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	0	Palmeiras - SP	275	Marcelo Aparecido R de Souza	CBF-1
74	8	2012	Sábado 07 de Julho de 2012	21:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	1	Náutico - PE	343	Ricardo Marques Ribeiro	FIFA
75	8	2012	Domingo 08 de Julho de 2012	16:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[]	[]	0	Flamengo - RJ	262	Wagner do Nascimento Magalhaes	CBF-1
76	8	2012	Domingo 08 de Julho de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[]	[]	1	Coritiba - PR	294	Francisco Carlos do Nascimento	FIFA
77	8	2012	Domingo 08 de Julho de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	1	Corinthians - SP	264	Pericles Bassols Pegado Cortez	FIFA
78	8	2012	Domingo 08 de Julho de 2012	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[]	[]	2	Grêmio - RS	284	Nielson Nogueira Dias	ESP
79	8	2012	Domingo 08 de Julho de 2012	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[]	[]	0	Portuguesa - SP	278	Andre Luiz de Freitas Castro	ESP
80	8	2012	Domingo 08 de Julho de 2012	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	1	Vasco da Gama - RJ	267	Paulo Cesar de Oliveira	FIFA
81	9	2012	Sábado 14 de Julho de 2012	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[]	[]	4	Atlético - MG	282	Luiz Flavio de Oliveira	ASP-FIFA
82	9	2012	Sábado 14 de Julho de 2012	18:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[]	[]	1	Náutico - PE	343	Wagner Reway	ASP-FIFA
83	9	2012	Sábado 14 de Julho de 2012	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	4	[]	[]	1	Coritiba - PR	294	Elmo Alves Resende Cunha	ESP
84	9	2012	Domingo 15 de Julho de 2012	16:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[]	[]	1	Fluminense - RJ	266	Wilson Luiz Seneme	FIFA
85	9	2012	Domingo 15 de Julho de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Santos - SP	277	Wagner do Nascimento Magalhaes	CBF-1
86	9	2012	Domingo 15 de Julho de 2012	16:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	3	Grêmio - RS	284	Marcelo Aparecido R de Souza	CBF-1
87	9	2012	Domingo 15 de Julho de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	2	Flamengo - RJ	262	Francisco Carlos do Nascimento	FIFA
88	9	2012	Domingo 15 de Julho de 2012	18:30	Arena Barueri - Barueri - SP	275	Palmeiras - SP	1	[]	[]	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
89	9	2012	Domingo 15 de Julho de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	0	Atlético - GO	373	Márcio Chagas da Silva	ASP-FIFA
90	9	2012	Domingo 15 de Julho de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	1	Portuguesa - SP	278	Evandro Rogerio Roman	ESP
91	10	2012	Quarta 18 de Julho de 2012	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Botafogo - RJ	296	Claudio Francisco Lima E Silva	ESP
92	10	2012	Quarta 18 de Julho de 2012	19:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	3	[]	[]	1	Sport - PE	292	Jailson Macedo Freitas	ESP
93	10	2012	Quarta 18 de Julho de 2012	20:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	2	Cruzeiro - MG	283	Elmo Alves Resende Cunha	ESP
94	10	2012	Quarta 18 de Julho de 2012	20:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	0	Ponte Preta - SP	303	Marcelo de Lima Henrique	FIFA
95	10	2012	Quarta 18 de Julho de 2012	21:50	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[]	[]	1	Internacional - RS	285	Marcelo Aparecido R de Souza	CBF-1
96	10	2012	Quarta 18 de Julho de 2012	21:50	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	3	Corinthians - SP	264	Sandro Meira Ricci	FIFA
97	10	2012	Quarta 18 de Julho de 2012	21:50	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
98	10	2012	Quinta 19 de Julho de 2012	21:00	Serra Dourada - Goiania - GO	373	Atlético - GO	3	[]	[]	2	Figueirense - SC	316	Wilson Luiz Seneme	FIFA
99	10	2012	Quinta 19 de Julho de 2012	21:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[]	[]	0	Bahia - BA	265	Fabricio Neves Correa	CBF-1
100	10	2012	Quinta 19 de Julho de 2012	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	1	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
101	11	2012	Sábado 21 de Julho de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	4	Atlético - MG	282	Paulo Cesar de Oliveira	FIFA
102	11	2012	Sábado 21 de Julho de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[]	[]	0	Santos - SP	277	Wagner Reway	ASP-FIFA
103	11	2012	Sábado 21 de Julho de 2012	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Portuguesa - SP	278	Leandro Bizzio Marinho	CBF-1
104	11	2012	Domingo 22 de Julho de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	4	[' Elton 20 (1ºT)', ' Dagoberto 1 (2ºT)', ' Jakson Avelino 13 (2ºT)', ' Fred 31 (2ºT)']	['Renie 27 (1ºT)']	1	Atlético - GO	373	Paulo H Godoy Bezerra	CBF-1
105	11	2012	Domingo 22 de Julho de 2012	16:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	0	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
106	11	2012	Domingo 22 de Julho de 2012	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	2	São Paulo - SP	276	Anderson Daronco	CBF-1
107	11	2012	Domingo 22 de Julho de 2012	16:00	Arena Barueri - Barueri - SP	275	Palmeiras - SP	3	[]	[]	0	Náutico - PE	343	Edivaldo Elias da Silva	CBF-1
108	11	2012	Domingo 22 de Julho de 2012	18:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	1	Grêmio - RS	284	Luiz Flavio de Oliveira	ASP-FIFA
109	11	2012	Domingo 22 de Julho de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	2	Fluminense - RJ	266	Manoel Nunes Lopo Garrido	CBF-1
110	11	2012	Domingo 22 de Julho de 2012	18:30	Pituaçu - Salvador - BA	265	Bahia - BA	2	[]	[]	2	Coritiba - PR	294	Marcelo de Lima Henrique	FIFA
111	12	2012	Quarta 25 de Julho de 2012	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	1	Internacional - RS	285	Elmo Alves Resende Cunha	ESP
112	12	2012	Quarta 25 de Julho de 2012	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	1	Sport - PE	292	Heber Roberto Lopes	FIFA
113	12	2012	Quarta 25 de Julho de 2012	20:30	João Havelange - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	0	Botafogo - RJ	296	Wagner do Nascimento Magalhaes	CBF-1
114	12	2012	Quarta 25 de Julho de 2012	20:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	4	Coritiba - PR	294	Claudio Francisco Lima E Silva	ESP
115	12	2012	Quarta 25 de Julho de 2012	21:50	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[]	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	FIFA
116	12	2012	Quarta 25 de Julho de 2012	21:50	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	0	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
117	12	2012	Quarta 25 de Julho de 2012	21:50	Serra Dourada - Goiania - GO	373	Atlético - GO	4	[' Wesley 16 (1ºT)']	['João Schmidt 3 (2ºT)']	3	São Paulo - SP	276	Emerson de Almeida Ferreira	CBF-1
118	12	2012	Quinta 26 de Julho de 2012	21:00	Arena Barueri - Barueri - SP	275	Palmeiras - SP	0	[]	[]	2	Bahia - BA	265	Antonio F de Carvalho Schneider	CBF-1
119	12	2012	Quinta 26 de Julho de 2012	21:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	0	Portuguesa - SP	278	Ricardo Marques Ribeiro	FIFA
120	12	2012	Quinta 26 de Julho de 2012	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[]	[]	0	Santos - SP	277	Antonio Denival de Morais	CBF-1
121	13	2012	Sábado 28 de Julho de 2012	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	ESP
122	13	2012	Sábado 28 de Julho de 2012	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Vasco da Gama - RJ	267	Wilson Luiz Seneme	FIFA
123	13	2012	Sábado 28 de Julho de 2012	21:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[]	[]	0	Figueirense - SC	316	Márcio Chagas da Silva	ASP-FIFA
124	13	2012	Domingo 29 de Julho de 2012	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Atlético - GO	373	Wagner Reway	ASP-FIFA
125	13	2012	Domingo 29 de Julho de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[]	[]	1	Flamengo - RJ	262	Jailson Macedo Freitas	ESP
126	13	2012	Domingo 29 de Julho de 2012	16:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Atlético - MG	282	Rodrigo Braghetto	CBF-1
127	13	2012	Domingo 29 de Julho de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Corinthians - SP	264	Pablo dos Santos Alves	ASP-FIFA
128	13	2012	Domingo 29 de Julho de 2012	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	2	[]	[]	1	Palmeiras - SP	275	Fabricio Neves Correa	CBF-1
129	13	2012	Domingo 29 de Julho de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	3	[]	[]	1	Náutico - PE	343	Marcelo de Lima Henrique	FIFA
130	13	2012	Domingo 29 de Julho de 2012	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	1	Ponte Preta - SP	303	Paulo Cesar de Oliveira	FIFA
131	14	2012	Quarta 26 de Setembro de 2012	22:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[]	[]	1	Atlético - MG	282	Jailson Macedo Freitas	ESP
132	14	2012	Sábado 04 de Agosto de 2012	18:30	Arena Barueri - Barueri - SP	275	Palmeiras - SP	0	[]	[]	1	Internacional - RS	285	Jailson Macedo Freitas	ESP
133	14	2012	Sábado 04 de Agosto de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	2	Botafogo - RJ	296	Nielson Nogueira Dias	ESP
134	14	2012	Sábado 04 de Agosto de 2012	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[]	[]	0	Figueirense - SC	316	Sandro Meira Ricci	FIFA
135	14	2012	Domingo 05 de Agosto de 2012	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Corinthians - SP	264	Paulo H Godoy Bezerra	CBF-1
136	14	2012	Domingo 05 de Agosto de 2012	16:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	3	[]	[]	1	Bahia - BA	265	Claudio Francisco Lima E Silva	ESP
137	14	2012	Domingo 05 de Agosto de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	2	Fluminense - RJ	266	Wagner Reway	ASP-FIFA
138	14	2012	Domingo 05 de Agosto de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	0	Sport - PE	292	Andre Luiz de Freitas Castro	ESP
139	14	2012	Domingo 05 de Agosto de 2012	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	2	Ponte Preta - SP	303	Edivaldo Elias da Silva	CBF-1
140	14	2012	Domingo 05 de Agosto de 2012	18:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	0	Santos - SP	277	Wilton Pereira Sampaio	FIFA
141	15	2012	Quarta 08 de Agosto de 2012	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	2	Vasco da Gama - RJ	267	Guilherme Ceretta de Lima	ASP-FIFA
142	15	2012	Quarta 08 de Agosto de 2012	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Náutico - PE	343	Ricardo Marques Ribeiro	FIFA
143	15	2012	Quarta 08 de Agosto de 2012	20:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Atlético - GO	373	Anderson Daronco	CBF-1
144	15	2012	Quarta 08 de Agosto de 2012	20:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Portuguesa - SP	278	Celio Amorim	ESP
145	15	2012	Quarta 08 de Agosto de 2012	21:50	Vila Belmiro - Santos - SP	277	Santos - SP	4	[]	[]	2	Cruzeiro - MG	283	Rodrigo Nunes de Sa	CBF-1
146	15	2012	Quinta 09 de Agosto de 2012	21:00	São Januário - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[]	[]	1	São Paulo - SP	276	Heber Roberto Lopes	FIFA
147	15	2012	Quarta 08 de Agosto de 2012	21:50	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	2	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
148	15	2012	Quarta 08 de Agosto de 2012	21:50	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[]	[]	2	Palmeiras - SP	275	Francisco Carlos do Nascimento	FIFA
149	15	2012	Quinta 09 de Agosto de 2012	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	0	Coritiba - PR	294	Pablo dos Santos Alves	ASP-FIFA
150	15	2012	Quinta 09 de Agosto de 2012	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Grêmio - RS	284	Wagner do Nascimento Magalhaes	CBF-1
151	16	2012	Sábado 11 de Agosto de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	1	Figueirense - SC	316	Edivaldo Elias da Silva	CBF-1
152	16	2012	Sábado 11 de Agosto de 2012	18:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	1	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
153	16	2012	Sábado 11 de Agosto de 2012	21:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	2	[]	[]	0	Náutico - PE	343	Jean Pierre Goncalves Lima	CBF-1
154	16	2012	Domingo 12 de Agosto de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	1	Ponte Preta - SP	303	Sandro Meira Ricci	FIFA
155	16	2012	Domingo 12 de Agosto de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	2	Grêmio - RS	284	Elmo Alves Resende Cunha	ESP
156	16	2012	Domingo 12 de Agosto de 2012	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	0	Vasco da Gama - RJ	267	Wilson Luiz Seneme	FIFA
157	16	2012	Domingo 12 de Agosto de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	2	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
158	16	2012	Domingo 12 de Agosto de 2012	18:30	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[]	[]	0	Palmeiras - SP	275	Márcio Chagas da Silva	ASP-FIFA
159	16	2012	Domingo 12 de Agosto de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[]	[]	1	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
160	16	2012	Sábado 11 de Agosto de 2012	18:30	Pacaembu - Sao Paulo - SP	277	Santos - SP	2	[]	[]	2	Atlético - GO	373	Pericles Bassols Pegado Cortez	FIFA
161	17	2012	Quarta 15 de Agosto de 2012	19:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	2	Portuguesa - SP	278	Antonio Denival de Morais	CBF-1
162	17	2012	Quarta 15 de Agosto de 2012	19:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	1	Fluminense - RJ	266	Paulo H Godoy Bezerra	CBF-1
163	17	2012	Quarta 15 de Agosto de 2012	20:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	1	Atlético - MG	282	Marcos Andre Gomes da Penha	CBF-1
164	17	2012	Quarta 15 de Agosto de 2012	20:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	2	Bahia - BA	265	Wagner dos Santos Rosa	CBF-1
165	17	2012	Quarta 15 de Agosto de 2012	21:50	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[]	[]	0	Sport - PE	292	Antonio Rogerio Batista do Prado	CBF-1
166	17	2012	Quarta 15 de Agosto de 2012	21:50	Arena Barueri - Barueri - SP	275	Palmeiras - SP	1	[]	[]	0	Flamengo - RJ	262	Celio Amorim	ESP
167	17	2012	Quarta 15 de Agosto de 2012	21:50	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	0	São Paulo - SP	276	Jose de Caldas Souza	\N
168	17	2012	Quinta 16 de Agosto de 2012	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[]	[]	2	Coritiba - PR	294	Jailson Macedo Freitas	ESP
169	17	2012	Quinta 16 de Agosto de 2012	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	0	Internacional - RS	285	Andre Luiz de Freitas Castro	ESP
170	17	2012	Quinta 16 de Agosto de 2012	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	3	Santos - SP	277	Emerson de Almeida Ferreira	CBF-1
171	18	2012	Sábado 18 de Agosto de 2012	18:30	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	0	Bahia - BA	265	Ricardo Marques Ribeiro	FIFA
172	18	2012	Sábado 18 de Agosto de 2012	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[]	[]	0	Sport - PE	292	Leandro Pedro Vuaden	FIFA
173	18	2012	Sábado 18 de Agosto de 2012	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[]	[]	0	Ponte Preta - SP	303	Rodrigo Guarizo F. do Amaral	CBF-1
174	18	2012	Domingo 19 de Agosto de 2012	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[]	[]	2	Corinthians - SP	264	Flavio Rodrigues Guerra	CBF-1
175	18	2012	Domingo 19 de Agosto de 2012	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[]	[]	2	Botafogo - RJ	296	Anderson Daronco	CBF-1
176	18	2012	Domingo 19 de Agosto de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	4	[]	[]	0	Cruzeiro - MG	283	Francisco Carlos do Nascimento	FIFA
177	18	2012	Domingo 19 de Agosto de 2012	16:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	4	[]	[]	0	Figueirense - SC	316	Wilson Luiz Seneme	FIFA
178	18	2012	Domingo 19 de Agosto de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[]	[]	1	Internacional - RS	285	Nielson Nogueira Dias	ESP
179	18	2012	Domingo 19 de Agosto de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[]	[]	0	Vasco da Gama - RJ	267	Marcelo de Lima Henrique	FIFA
180	18	2012	Domingo 19 de Agosto de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	2	[]	[]	1	Palmeiras - SP	275	Sandro Meira Ricci	FIFA
181	19	2012	Sábado 25 de Agosto de 2012	18:30	João Havelange - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	2	Fluminense - RJ	266	Marcelo de Lima Henrique	FIFA
182	19	2012	Sábado 25 de Agosto de 2012	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[]	[]	2	Santos - SP	277	Guilherme Ceretta de Lima	ASP-FIFA
183	19	2012	Sábado 25 de Agosto de 2012	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[]	[]	1	Portuguesa - SP	278	Luiz Flavio de Oliveira	ASP-FIFA
184	19	2012	Domingo 26 de Agosto de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	1	Grêmio - RS	284	Leandro Pedro Vuaden	FIFA
185	19	2012	Domingo 26 de Agosto de 2012	16:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Flamengo - RJ	262	Pericles Bassols Pegado Cortez	FIFA
186	19	2012	Domingo 26 de Agosto de 2012	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	2	São Paulo - SP	276	Wilson Luiz Seneme	FIFA
187	19	2012	Domingo 26 de Agosto de 2012	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[]	[]	1	Coritiba - PR	294	Marcos Andre Gomes da Penha	CBF-1
188	19	2012	Domingo 26 de Agosto de 2012	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	2	[]	[]	2	Atlético - MG	282	Nielson Nogueira Dias	ESP
189	19	2012	Domingo 26 de Agosto de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Náutico - PE	343	Sandro Meira Ricci	FIFA
190	19	2012	Domingo 26 de Agosto de 2012	18:30	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	1	Atlético - GO	373	Marcelo Aparecido R de Souza	CBF-1
191	20	2012	Quinta 30 de Agosto de 2012	21:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	1	[]	[]	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
192	20	2012	Quarta 29 de Agosto de 2012	22:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[]	[]	1	Corinthians - SP	264	Sandro Meira Ricci	FIFA
193	20	2012	Quarta 29 de Agosto de 2012	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[]	[]	3	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
194	20	2012	Quinta 30 de Agosto de 2012	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[]	[]	0	Botafogo - RJ	296	Jean Pierre Goncalves Lima	CBF-1
195	20	2012	Quarta 29 de Agosto de 2012	22:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	0	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	ASP-FIFA
196	20	2012	Quarta 29 de Agosto de 2012	20:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[]	[]	2	Ponte Preta - SP	303	Wilton Pereira Sampaio	FIFA
197	20	2012	Quarta 29 de Agosto de 2012	20:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	3	[]	[]	0	Palmeiras - SP	275	Wilson Luiz Seneme	FIFA
198	20	2012	Quarta 29 de Agosto de 2012	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	0	Internacional - RS	285	Pericles Bassols Pegado Cortez	FIFA
199	20	2012	Quarta 29 de Agosto de 2012	20:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	2	Figueirense - SC	316	Wagner Reway	ASP-FIFA
200	20	2012	Quarta 29 de Agosto de 2012	22:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	2	Cruzeiro - MG	283	Márcio Chagas da Silva	ASP-FIFA
201	21	2012	Sábado 01 de Setembro de 2012	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	[]	0	Grêmio - RS	284	Sandro Meira Ricci	FIFA
202	21	2012	Domingo 02 de Setembro de 2012	18:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[]	[]	0	Coritiba - PR	294	Leandro Pedro Vuaden	FIFA
203	21	2012	Sábado 01 de Setembro de 2012	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[]	[]	0	Portuguesa - SP	278	Heber Roberto Lopes	FIFA
204	21	2012	Domingo 02 de Setembro de 2012	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	0	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
205	21	2012	Domingo 02 de Setembro de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	4	[]	[]	1	Flamengo - RJ	262	Wilson Luiz Seneme	FIFA
206	21	2012	Domingo 02 de Setembro de 2012	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	3	[]	[]	0	Náutico - PE	343	Elmo Alves Resende Cunha	ESP
207	21	2012	Domingo 02 de Setembro de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[]	[]	1	Atlético - GO	373	Nielson Nogueira Dias	ESP
208	21	2012	Sábado 01 de Setembro de 2012	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[]	[]	2	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
209	21	2012	Domingo 02 de Setembro de 2012	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	1	Santos - SP	277	Francisco Carlos do Nascimento	FIFA
210	21	2012	Domingo 02 de Setembro de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	0	São Paulo - SP	276	Márcio Chagas da Silva	ASP-FIFA
211	22	2012	Quarta 05 de Setembro de 2012	19:30	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	0	[]	[]	1	Ponte Preta - SP	303	Elmo Alves Resende Cunha	ESP
212	22	2012	Quinta 06 de Setembro de 2012	21:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[]	[]	1	Santos - SP	277	Andre Luiz de Freitas Castro	ESP
213	22	2012	Quinta 06 de Setembro de 2012	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	3	[]	[]	1	Sport - PE	292	Marcelo de Lima Henrique	FIFA
214	22	2012	Quarta 05 de Setembro de 2012	22:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	1	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
215	22	2012	Quarta 05 de Setembro de 2012	20:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	1	Atlético - GO	373	Ronan Marques da Rosa	CBF-1
216	22	2012	Quarta 05 de Setembro de 2012	22:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[]	[]	3	Botafogo - RJ	296	Luiz Flavio de Oliveira	ASP-FIFA
217	22	2012	Quarta 05 de Setembro de 2012	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	3	[]	[]	0	Coritiba - PR	294	Fabricio Neves Correa	CBF-1
218	22	2012	Quarta 05 de Setembro de 2012	22:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	0	Corinthians - SP	264	Márcio Chagas da Silva	ASP-FIFA
219	22	2012	Quarta 05 de Setembro de 2012	19:30	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
220	22	2012	Quarta 05 de Setembro de 2012	19:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Atlético - MG	282	Pablo dos Santos Alves	ASP-FIFA
221	23	2012	Domingo 09 de Setembro de 2012	16:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[]	[]	1	Náutico - PE	343	Jailson Macedo Freitas	ESP
222	23	2012	Domingo 09 de Setembro de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	4	Bahia - BA	265	Raphael Claus	CBF-1
223	23	2012	Domingo 09 de Setembro de 2012	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	São Paulo - SP	276	Marcelo Aparecido R de Souza	CBF-1
224	23	2012	Sábado 08 de Setembro de 2012	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	3	[]	[]	1	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
225	23	2012	Domingo 09 de Setembro de 2012	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	1	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
226	23	2012	Domingo 09 de Setembro de 2012	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[]	[]	0	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
227	23	2012	Sábado 08 de Setembro de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[]	[]	2	Figueirense - SC	316	Pericles Bassols Pegado Cortez	FIFA
228	23	2012	Sábado 08 de Setembro de 2012	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[]	[]	0	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
229	23	2012	Domingo 09 de Setembro de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	1	Cruzeiro - MG	283	Andre Luiz de Freitas Castro	ESP
230	23	2012	Domingo 09 de Setembro de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	1	Portuguesa - SP	278	Grazianni Maciel Rocha	CBF-1
231	24	2012	Quinta 13 de Setembro de 2012	21:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[]	[]	1	Internacional - RS	285	Elmo Alves Resende Cunha	ESP
232	24	2012	Quarta 12 de Setembro de 2012	22:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[]	[]	1	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
233	24	2012	Quarta 12 de Setembro de 2012	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	0	Flamengo - RJ	262	Márcio Chagas da Silva	ASP-FIFA
234	24	2012	Quarta 12 de Setembro de 2012	19:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Ponte Preta - SP	303	Rodrigo Braghetto	CBF-1
235	24	2012	Quinta 13 de Setembro de 2012	21:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	0	Náutico - PE	343	Heber Roberto Lopes	FIFA
236	24	2012	Quarta 12 de Setembro de 2012	22:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	0	São Paulo - SP	276	Sandro Meira Ricci	FIFA
237	24	2012	Quarta 12 de Setembro de 2012	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	2	Fluminense - RJ	266	Jailson Macedo Freitas	ESP
238	24	2012	Quarta 12 de Setembro de 2012	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[]	[]	0	Cruzeiro - MG	283	Marcelo de Lima Henrique	FIFA
239	24	2012	Quarta 12 de Setembro de 2012	20:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	1	Bahia - BA	265	Luiz Flavio de Oliveira	ASP-FIFA
240	24	2012	Quarta 12 de Setembro de 2012	20:30	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	2	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
241	25	2012	Domingo 16 de Setembro de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[]	[]	1	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
242	25	2012	Sábado 15 de Setembro de 2012	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[]	[]	2	Atlético - GO	373	Márcio Chagas da Silva	ASP-FIFA
243	25	2012	Domingo 16 de Setembro de 2012	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	[]	2	Corinthians - SP	264	Marcelo Aparecido R de Souza	CBF-1
244	25	2012	Sábado 15 de Setembro de 2012	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[]	[]	1	Portuguesa - SP	278	Paulo Cesar de Oliveira	FIFA
245	25	2012	Domingo 16 de Setembro de 2012	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	2	Sport - PE	292	Heber Roberto Lopes	FIFA
246	25	2012	Domingo 16 de Setembro de 2012	16:00	Dilzon Melo - Varginha - MG	283	Cruzeiro - MG	1	[]	[]	1	Vasco da Gama - RJ	267	Andre Luiz de Freitas Castro	ESP
150	15	2017	Quarta 19 de Julho de 2017	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
247	25	2012	Domingo 16 de Setembro de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Botafogo - RJ	296	Dewson Fernando Freitas da Silva	ASP-FIFA
248	25	2012	Domingo 16 de Setembro de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	2	Santos - SP	277	Ronan Marques da Rosa	CBF-1
249	25	2012	Domingo 16 de Setembro de 2012	16:00	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	0	Atlético - MG	282	Flavio Rodrigues Guerra	CBF-1
250	25	2012	Domingo 16 de Setembro de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	2	[]	[]	1	Figueirense - SC	316	Nielson Nogueira Dias	ESP
251	26	2012	Domingo 23 de Setembro de 2012	16:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[]	[]	2	Corinthians - SP	264	Sandro Meira Ricci	FIFA
252	26	2012	Sábado 22 de Setembro de 2012	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	2	[]	[]	1	Náutico - PE	343	Pablo dos Santos Alves	ASP-FIFA
253	26	2012	Sábado 22 de Setembro de 2012	21:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	1	[]	[]	3	Portuguesa - SP	278	Raphael Claus	CBF-1
254	26	2012	Domingo 23 de Setembro de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	0	Cruzeiro - MG	283	Wagner do Nascimento Magalhaes	CBF-1
255	26	2012	Domingo 23 de Setembro de 2012	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[]	[]	1	Bahia - BA	265	Ronan Marques da Rosa	CBF-1
256	26	2012	Domingo 23 de Setembro de 2012	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Grêmio - RS	284	Heber Roberto Lopes	FIFA
257	26	2012	Domingo 23 de Setembro de 2012	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Vasco da Gama - RJ	267	Francisco Carlos do Nascimento	FIFA
258	26	2012	Sábado 22 de Setembro de 2012	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	3	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
259	26	2012	Domingo 23 de Setembro de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	0	Coritiba - PR	294	Leandro Pedro Vuaden	FIFA
260	26	2012	Domingo 23 de Setembro de 2012	16:00	Serra Dourada - Goiania - GO	373	Atlético - GO	1	[]	[]	2	Flamengo - RJ	262	Paulo Cesar de Oliveira	FIFA
261	27	2012	Domingo 30 de Setembro de 2012	16:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	1	Fluminense - RJ	266	Marcelo de Lima Henrique	FIFA
262	27	2012	Sábado 29 de Setembro de 2012	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[]	[]	1	Figueirense - SC	316	Ricardo Marques Ribeiro	FIFA
263	27	2012	Sábado 29 de Setembro de 2012	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	3	[]	[]	0	Ponte Preta - SP	303	Guilherme Ceretta de Lima	ASP-FIFA
264	27	2012	Domingo 30 de Setembro de 2012	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	3	[]	[]	0	Sport - PE	292	Jean Pierre Goncalves Lima	CBF-1
265	27	2012	Domingo 30 de Setembro de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	1	Santos - SP	277	Nielson Nogueira Dias	ESP
266	27	2012	Sábado 29 de Setembro de 2012	18:30	Dilzon Melo - Varginha - MG	283	Cruzeiro - MG	0	[]	[]	0	Internacional - RS	285	Paulo Cesar de Oliveira	FIFA
267	27	2012	Sábado 29 de Setembro de 2012	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[]	[]	1	Atlético - MG	282	Elmo Alves Resende Cunha	ESP
268	27	2012	Domingo 30 de Setembro de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
269	27	2012	Sábado 29 de Setembro de 2012	18:30	Aflitos - Recife - PE	343	Náutico - PE	2	[]	[]	0	Atlético - GO	373	Leandro Pedro Vuaden	FIFA
270	27	2012	Domingo 30 de Setembro de 2012	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	2	[]	[]	0	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
271	28	2012	Quinta 04 de Outubro de 2012	21:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	0	Bahia - BA	265	Wagner Reway	ASP-FIFA
272	28	2012	Sábado 06 de Outubro de 2012	18:30	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[]	[]	0	Botafogo - RJ	296	Felipe Gomes da Silva	ASP-FIFA
273	28	2012	Sábado 06 de Outubro de 2012	16:20	Vila Belmiro - Santos - SP	277	Santos - SP	1	[]	[]	1	Internacional - RS	285	Pericles Bassols Pegado Cortez	FIFA
274	28	2012	Sábado 06 de Outubro de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[]	[]	0	Palmeiras - SP	275	Paulo Cesar de Oliveira	FIFA
275	28	2012	Sábado 06 de Outubro de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	1	Cruzeiro - MG	283	Jailson Macedo Freitas	ESP
276	28	2012	Sábado 06 de Outubro de 2012	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	6	[]	[]	0	Figueirense - SC	316	Guilherme Ceretta de Lima	ASP-FIFA
277	28	2012	Quinta 04 de Outubro de 2012	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	5	[]	[]	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
278	28	2012	Quinta 04 de Outubro de 2012	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	0	Ponte Preta - SP	303	Márcio Chagas da Silva	ASP-FIFA
279	28	2012	Sábado 06 de Outubro de 2012	16:20	Aflitos - Recife - PE	343	Náutico - PE	2	[]	[]	1	Corinthians - SP	264	Heber Roberto Lopes	FIFA
280	28	2012	Sábado 06 de Outubro de 2012	16:20	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	1	Vasco da Gama - RJ	267	Raphael Claus	CBF-1
281	29	2012	Quarta 10 de Outubro de 2012	19:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	2	Santos - SP	277	Wagner Reway	ASP-FIFA
282	29	2012	Quarta 10 de Outubro de 2012	22:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	2	São Paulo - SP	276	Elmo Alves Resende Cunha	ESP
283	29	2012	Quinta 11 de Outubro de 2012	21:00	Fonte Luminosa - Araraquara - SP	275	Palmeiras - SP	0	[]	[]	1	Coritiba - PR	294	Jailson Macedo Freitas	ESP
284	29	2012	Quarta 10 de Outubro de 2012	22:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	3	[]	[]	2	Flamengo - RJ	262	Fabricio Neves Correa	CBF-1
285	29	2012	Quarta 10 de Outubro de 2012	22:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[]	[]	0	Atlético - MG	282	Andre Luiz de Freitas Castro	ESP
286	29	2012	Quarta 10 de Outubro de 2012	19:30	Dilzon Melo - Varginha - MG	283	Cruzeiro - MG	2	[]	[]	0	Portuguesa - SP	278	Dewson Fernando Freitas da Silva	ASP-FIFA
287	29	2012	Quarta 10 de Outubro de 2012	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[]	[]	1	Náutico - PE	343	Paulo H Godoy Bezerra	CBF-1
288	29	2012	Quarta 10 de Outubro de 2012	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[]	[]	1	Atlético - GO	373	Emerson de Almeida Ferreira	CBF-1
289	29	2012	Quinta 11 de Outubro de 2012	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	3	Grêmio - RS	284	Francisco Carlos do Nascimento	FIFA
290	29	2012	Quarta 10 de Outubro de 2012	19:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	2	Fluminense - RJ	266	Raphael Claus	CBF-1
291	30	2012	Sábado 13 de Outubro de 2012	18:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[]	[]	1	Cruzeiro - MG	283	Anderson Daronco	CBF-1
292	30	2012	Domingo 14 de Outubro de 2012	18:30	São Januário - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[]	[]	1	Ponte Preta - SP	303	Nielson Nogueira Dias	ESP
293	30	2012	Domingo 14 de Outubro de 2012	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	0	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
294	30	2012	Domingo 14 de Outubro de 2012	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[]	[]	0	Figueirense - SC	316	Leandro Pedro Vuaden	FIFA
295	30	2012	Domingo 14 de Outubro de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	1	Botafogo - RJ	296	Guilherme Ceretta de Lima	ASP-FIFA
296	30	2012	Domingo 14 de Outubro de 2012	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[]	[]	1	Sport - PE	292	Flavio Rodrigues Guerra	CBF-1
297	30	2012	Sábado 13 de Outubro de 2012	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[]	[]	1	Corinthians - SP	264	Rodrigo Braghetto	CBF-1
298	30	2012	Domingo 14 de Outubro de 2012	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	1	Bahia - BA	265	Wagner do Nascimento Magalhaes	CBF-1
299	30	2012	Domingo 14 de Outubro de 2012	16:00	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	0	Palmeiras - SP	275	Marcelo de Lima Henrique	FIFA
300	30	2012	Sábado 13 de Outubro de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	3	[]	[]	1	Internacional - RS	285	Luiz Flavio de Oliveira	ASP-FIFA
301	31	2012	Quinta 18 de Outubro de 2012	21:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[]	[]	2	Vasco da Gama - RJ	267	Rodrigo Nunes de Sa	CBF-1
302	31	2012	Quarta 17 de Outubro de 2012	19:30	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[]	[]	2	Grêmio - RS	284	Sandro Meira Ricci	FIFA
303	31	2012	Quarta 17 de Outubro de 2012	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	2	Atlético - MG	282	Heber Roberto Lopes	FIFA
304	31	2012	Quinta 18 de Outubro de 2012	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[]	[]	0	Atlético - GO	373	Márcio Chagas da Silva	ASP-FIFA
305	31	2012	Quarta 17 de Outubro de 2012	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	3	Figueirense - SC	316	Wagner do Nascimento Magalhaes	CBF-1
306	31	2012	Quarta 17 de Outubro de 2012	22:00	Dilzon Melo - Varginha - MG	283	Cruzeiro - MG	2	[]	[]	0	Corinthians - SP	264	Jailson Macedo Freitas	ESP
307	31	2012	Quarta 17 de Outubro de 2012	22:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	0	Flamengo - RJ	262	Andre Luiz de Freitas Castro	ESP
308	31	2012	Quarta 17 de Outubro de 2012	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[]	[]	1	Náutico - PE	343	Ricardo Marques Ribeiro	FIFA
309	31	2012	Quinta 18 de Outubro de 2012	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[]	[]	1	Ponte Preta - SP	303	Wilton Pereira Sampaio	FIFA
310	31	2012	Quarta 17 de Outubro de 2012	19:30	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
311	32	2012	Domingo 21 de Outubro de 2012	16:00	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[]	[]	0	São Paulo - SP	276	Leandro Pedro Vuaden	FIFA
312	32	2012	Quarta 24 de Outubro de 2012	20:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	2	Internacional - RS	285	Heber Roberto Lopes	FIFA
313	32	2012	Sábado 20 de Outubro de 2012	18:30	Fonte Luminosa - Araraquara - SP	275	Palmeiras - SP	2	[]	[]	0	Cruzeiro - MG	283	Marcelo de Lima Henrique	FIFA
314	32	2012	Sábado 20 de Outubro de 2012	18:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Bahia - BA	265	Wilton Pereira Sampaio	FIFA
315	32	2012	Sábado 20 de Outubro de 2012	18:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Coritiba - PR	294	Paulo H Godoy Bezerra	CBF-1
316	32	2012	Domingo 21 de Outubro de 2012	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[]	[]	2	Fluminense - RJ	266	Jailson Macedo Freitas	ESP
317	32	2012	Domingo 21 de Outubro de 2012	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	0	Santos - SP	277	Guilherme Ceretta de Lima	ASP-FIFA
318	32	2012	Quarta 24 de Outubro de 2012	22:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	2	Botafogo - RJ	296	Andre Luiz de Freitas Castro	ESP
319	32	2012	Domingo 21 de Outubro de 2012	16:00	Aflitos - Recife - PE	343	Náutico - PE	0	[]	[]	0	Portuguesa - SP	278	Elmo Alves Resende Cunha	ESP
320	32	2012	Domingo 21 de Outubro de 2012	18:30	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	1	Sport - PE	292	Pericles Bassols Pegado Cortez	FIFA
321	33	2012	Sábado 27 de Outubro de 2012	18:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	4	[]	[]	0	Atlético - GO	373	Luiz Flavio de Oliveira	ASP-FIFA
322	33	2012	Quinta 25 de Outubro de 2012	21:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[]	[]	1	Coritiba - PR	294	Andre Luiz de Freitas Castro	ESP
323	33	2012	Quinta 25 de Outubro de 2012	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Náutico - PE	343	Fabricio Neves Correa	CBF-1
324	33	2012	Sábado 27 de Outubro de 2012	16:20	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	0	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
325	33	2012	Sábado 27 de Outubro de 2012	16:20	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	1	Palmeiras - SP	275	Francisco Carlos do Nascimento	FIFA
326	33	2012	Quarta 31 de Outubro de 2012	21:50	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[]	[]	1	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
327	33	2012	Quinta 25 de Outubro de 2012	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	0	Cruzeiro - MG	283	Elmo Alves Resende Cunha	ESP
328	33	2012	Sábado 27 de Outubro de 2012	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Portuguesa - SP	278	Marcos Andre Gomes da Penha	CBF-1
329	33	2012	Sábado 27 de Outubro de 2012	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	4	São Paulo - SP	276	Jailson Macedo Freitas	ESP
330	33	2012	Sábado 27 de Outubro de 2012	18:30	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	1	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
331	34	2012	Sábado 03 de Novembro de 2012	21:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	1	[]	[]	0	Figueirense - SC	316	Emerson de Almeida Ferreira	CBF-1
332	34	2012	Domingo 04 de Novembro de 2012	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	3	Sport - PE	292	Márcio Chagas da Silva	ASP-FIFA
333	34	2012	Domingo 04 de Novembro de 2012	17:00	Fonte Luminosa - Araraquara - SP	275	Palmeiras - SP	2	[]	[]	2	Botafogo - RJ	296	Elmo Alves Resende Cunha	ESP
334	34	2012	Domingo 04 de Novembro de 2012	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[]	[]	1	Fluminense - RJ	266	Heber Roberto Lopes	FIFA
335	34	2012	Sábado 03 de Novembro de 2012	19:30	Olímpico - Porto Alegre - RS	284	Grêmio - RS	1	[]	[]	0	Ponte Preta - SP	303	Andre Luiz de Freitas Castro	ESP
336	34	2012	Sábado 03 de Novembro de 2012	19:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	4	Santos - SP	277	Grazianni Maciel Rocha	CBF-1
337	34	2012	Domingo 04 de Novembro de 2012	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	1	Bahia - BA	265	Ricardo Marques Ribeiro	FIFA
338	34	2012	Domingo 04 de Novembro de 2012	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	0	Atlético - MG	282	Wagner Reway	ASP-FIFA
339	34	2012	Domingo 04 de Novembro de 2012	19:30	Aflitos - Recife - PE	343	Náutico - PE	3	[]	[]	0	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
340	34	2012	Domingo 04 de Novembro de 2012	17:00	Elmo Serejo Farias - Taguatinga - DF	373	Atlético - GO	0	[]	[]	2	Corinthians - SP	264	Dewson Fernando Freitas da Silva	ASP-FIFA
341	35	2012	Sábado 10 de Novembro de 2012	19:30	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[]	[]	0	Portuguesa - SP	278	Jailson Macedo Freitas	ESP
342	35	2012	Domingo 11 de Novembro de 2012	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	1	Atlético - MG	282	Elmo Alves Resende Cunha	ESP
343	35	2012	Domingo 11 de Novembro de 2012	17:00	Paulo Constantino - Presidente Prudente - SP	275	Palmeiras - SP	2	[]	[]	3	Fluminense - RJ	266	Leandro Pedro Vuaden	FIFA
344	35	2012	Sábado 10 de Novembro de 2012	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	5	[]	[]	1	Coritiba - PR	294	Ronan Marques da Rosa	CBF-1
345	35	2012	Domingo 11 de Novembro de 2012	17:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	2	[]	[]	1	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
346	35	2012	Domingo 11 de Novembro de 2012	19:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	3	[]	[]	1	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
347	35	2012	Domingo 11 de Novembro de 2012	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[]	[]	0	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
348	35	2012	Domingo 11 de Novembro de 2012	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[]	[]	1	Sport - PE	292	Heber Roberto Lopes	FIFA
349	35	2012	Domingo 11 de Novembro de 2012	19:30	Aflitos - Recife - PE	343	Náutico - PE	0	[]	[]	1	Flamengo - RJ	262	Guilherme Ceretta de Lima	ASP-FIFA
350	35	2012	Sábado 10 de Novembro de 2012	19:30	Valmir Bezerra - Gama - DF	373	Atlético - GO	2	[]	[]	1	Santos - SP	277	Emerson de Almeida Ferreira	CBF-1
351	36	2012	Domingo 18 de Novembro de 2012	17:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	1	[]	[]	1	Palmeiras - SP	275	Andre Luiz de Freitas Castro	ESP
352	36	2012	Domingo 18 de Novembro de 2012	17:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	2	Cruzeiro - MG	283	Raphael Claus	CBF-1
353	36	2012	Sábado 17 de Novembro de 2012	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[]	[]	0	Figueirense - SC	316	Claudio Francisco Lima E Silva	ESP
354	36	2012	Domingo 18 de Novembro de 2012	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[]	[]	1	Náutico - PE	343	Wagner Reway	ASP-FIFA
355	36	2012	Domingo 18 de Novembro de 2012	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	2	Corinthians - SP	264	Wagner do Nascimento Magalhaes	CBF-1
356	36	2012	Domingo 18 de Novembro de 2012	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[]	[]	2	Atlético - GO	373	Paulo H Godoy Bezerra	CBF-1
357	36	2012	Domingo 18 de Novembro de 2012	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[]	[]	2	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
358	36	2012	Sábado 17 de Novembro de 2012	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[]	[]	2	Vasco da Gama - RJ	267	Paulo Cesar de Oliveira	FIFA
359	36	2012	Domingo 18 de Novembro de 2012	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[]	[]	0	Botafogo - RJ	296	Ricardo Marques Ribeiro	FIFA
360	36	2012	Domingo 18 de Novembro de 2012	17:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	0	Ponte Preta - SP	303	Heber Roberto Lopes	FIFA
361	37	2012	Domingo 25 de Novembro de 2012	17:00	João Havelange - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[]	[]	3	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
362	37	2012	Sábado 24 de Novembro de 2012	19:30	João Havelange - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[]	[]	1	Flamengo - RJ	262	Wagner do Nascimento Magalhaes	CBF-1
363	37	2012	Domingo 25 de Novembro de 2012	17:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[]	[]	2	Atlético - GO	373	Márcio Chagas da Silva	ASP-FIFA
364	37	2012	Sábado 24 de Novembro de 2012	19:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[]	[]	1	Santos - SP	277	Raphael Claus	CBF-1
365	37	2012	Domingo 25 de Novembro de 2012	17:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	2	Portuguesa - SP	278	Wagner Reway	ASP-FIFA
366	37	2012	Domingo 25 de Novembro de 2012	17:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	2	[]	[]	1	Coritiba - PR	294	Anderson Daronco	CBF-1
367	37	2012	Domingo 25 de Novembro de 2012	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	São Paulo - SP	276	Luiz Flavio de Oliveira	ASP-FIFA
368	37	2012	Domingo 25 de Novembro de 2012	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[]	[]	4	Grêmio - RS	284	Elmo Alves Resende Cunha	ESP
369	37	2012	Domingo 25 de Novembro de 2012	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[]	[]	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	ESP
370	37	2012	Domingo 25 de Novembro de 2012	17:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[]	[]	1	Náutico - PE	343	Pericles Bassols Pegado Cortez	FIFA
371	38	2012	Sábado 01 de Dezembro de 2012	19:30	João Havelange - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[]	[]	2	Botafogo - RJ	296	Felipe Gomes da Silva	ASP-FIFA
372	38	2012	Domingo 02 de Dezembro de 2012	17:00	João Havelange - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[]	[]	2	Vasco da Gama - RJ	267	Grazianni Maciel Rocha	CBF-1
373	38	2012	Sábado 01 de Dezembro de 2012	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[]	[]	1	Palmeiras - SP	275	Guilherme Ceretta de Lima	ASP-FIFA
374	38	2012	Domingo 02 de Dezembro de 2012	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	3	[]	[]	1	Corinthians - SP	264	Rodrigo Braghetto	CBF-1
375	38	2012	Domingo 02 de Dezembro de 2012	17:00	Olímpico - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Internacional - RS	285	Heber Roberto Lopes	FIFA
376	38	2012	Domingo 02 de Dezembro de 2012	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[]	[]	2	Cruzeiro - MG	283	Paulo Cesar de Oliveira	FIFA
377	38	2012	Domingo 02 de Dezembro de 2012	17:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	0	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
378	38	2012	Domingo 02 de Dezembro de 2012	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[]	[]	0	Figueirense - SC	316	Rodrigo Batista Raposo	CBF-1
379	38	2012	Domingo 02 de Dezembro de 2012	17:00	Aflitos - Recife - PE	343	Náutico - PE	1	[]	[]	0	Sport - PE	292	Marcelo de Lima Henrique	FIFA
380	38	2012	Domingo 02 de Dezembro de 2012	17:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	[]	1	Bahia - BA	265	Leandro Pedro Vuaden	FIFA
1	1	2013	Sábado 25 de Maio de 2013	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Carlos 2 (2ºT)']	[]	0	Portuguesa - SP	278	Elmo Alves Resende Cunha	ESP-2
2	1	2013	Domingo 26 de Maio de 2013	18:30	Cláudio Moacyr - Macae - RJ	266	Fluminense - RJ	2	[' Rafael Sobis 15 (1ºT)', ' Samuel 8 (2ºT)']	['Manoel 27 (1ºT)']	1	Atlético Paranaense - PR	293	Ricardo Marques Ribeiro	FIFA
3	1	2013	Sábado 25 de Maio de 2013	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[' Paulinho 28 (2ºT)']	['Rafael Marques 25 (1ºT)']	1	Botafogo - RJ	296	Leandro Pedro Vuaden	FIFA
4	1	2013	Sábado 25 de Maio de 2013	18:30	Fonte Nova - Salvador - BA	287	Vitória - BA	2	[' Max 2 (1ºT)', ' Gabriel 11 (1ºT)']	['Forlan 30 (1ºT) ', 'Fred 18 (2ºT)']	2	Internacional - RS	285	Marcelo de Lima Henrique	FIFA
5	1	2013	Domingo 26 de Maio de 2013	16:00	Alfredo Jaconi - Caxias do Sul - RS	284	Grêmio - RS	2	[' Ze Roberto 15 (1ºT)', ' Elano 25 (2ºT)']	[]	0	Náutico - PE	343	Guilherme Ceretta de Lima	ASP-FIFA
6	1	2013	Domingo 26 de Maio de 2013	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Lucio 8 (1ºT) ', 'Jadson 44 (1ºT)']	2	São Paulo - SP	276	Vinicius Furlan	CBF-1
7	1	2013	Domingo 26 de Maio de 2013	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Matheus Ferraz 45 (1ºT)', ' Lins 1 (2ºT)', ' Joao Vitor 35 (2ºT)']	['Diones 27 (2ºT)']	1	Bahia - BA	265	Márcio Chagas da Silva	ESP-2
8	1	2013	Domingo 26 de Maio de 2013	18:30	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Diego Souza 6 (1ºT)', ' Bruno Rodrigo 31 (1ºT)', ' Nilton 40 (1ºT)', ' Borges 42 (1ºT)', ' Nilton 35 (2ºT)']	[]	0	Goiás - GO	290	Ronan Marques da Rosa	CBF-1
9	1	2013	Domingo 26 de Maio de 2013	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Deivid 8 (2ºT)', ' Arthur Caike 45+1 (2ºT)']	['Diego Tardelli 4 (2ºT)']	1	Atlético - MG	282	Wagner do Nascimento Magalhaes	CBF-1
10	1	2013	Domingo 26 de Maio de 2013	16:00	Mané Garrincha - Brasilia - DF	277	Santos - SP	0	[]	[]	0	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
11	2	2013	Quarta 29 de Maio de 2013	19:30	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	2	[' Fellype Gabriel 14 (1ºT)', ' Rafael Marques 21 (1ºT)']	['Montillo 26 (2ºT)']	1	Santos - SP	277	Jailson Macedo Freitas	ESP-2
12	2	2013	Quarta 29 de Maio de 2013	21:00	Mário Helênio - Juiz de Fora - MG	262	Flamengo - RJ	0	[]	['William 26 (1ºT) ', 'Cicinho 23 (2ºT)']	2	Ponte Preta - SP	303	Jean Pierre Goncalves Lima	CBF-1
13	2	2013	Quarta 29 de Maio de 2013	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	5	[' Luis Fabiano 15 (2ºT)', ' Aloisio 19 (2ºT)', ' Carleto 27 (2ºT)', ' Luis Fabiano 29 (2ºT)', ' Luan Garcia 39 (2ºT)']	['Dakson 37 (2ºT)']	1	Vasco da Gama - RJ	267	Márcio Chagas da Silva	ESP-2
14	2	2013	Quarta 29 de Maio de 2013	21:00	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Coritiba - PR	294	Francisco Carlos do Nascimento	FIFA
15	2	2013	Quinta 30 de Maio de 2013	19:30	Centenário - Caxias do Sul - RS	285	Internacional - RS	2	[' Willians 13 (1ºT)', ' Moledo 16 (1ºT)']	[]	0	Criciuma - SC	288	Raphael Claus	CBF-1
16	2	2013	Quarta 29 de Maio de 2013	22:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Ernando 36 (1ºT)']	['Guilherme 41 (2ºT)']	1	Corinthians - SP	264	Rodrigo Nunes de Sa	CBF-1
17	2	2013	Quarta 29 de Maio de 2013	21:00	Aflitos - Recife - PE	343	Náutico - PE	0	[]	['Max 13 (1ºT) ', 'Edson 45+2 (1ºT) ', 'Max 4 (2ºT)']	3	Vitória - BA	287	Alicio Pena Junior	\N
18	2	2013	Domingo 09 de Junho de 2013	18:30	Arena do Jacaré - Sete Lagoas - MG	282	Atlético - MG	2	[' Ronaldinho Gaucho 14 (2ºT)', ' Ronaldinho Gaucho 45+2 (2ºT)']	[]	0	Grêmio - RS	284	Andre Luiz de Freitas Castro	ESP-2
19	2	2013	Quarta 29 de Maio de 2013	15:00	Érton Queiroz - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Pedro Botelho 6 (1ºT)', ' Manoel 28 (1ºT)']	['Dedé 43 (1ºT) ', 'Luan 1 (2ºT)']	2	Cruzeiro - MG	283	Andre Luiz de Freitas Castro	ESP-2
20	2	2013	Quarta 12 de Junho de 2013	22:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Souza 22 (1ºT)', ' Diogo 38 (2ºT)']	['Rafael Sobis 36 (1ºT)']	1	Fluminense - RJ	266	Emerson de Almeida Ferreira	CBF-1
21	3	2013	Sábado 01 de Junho de 2013	16:20	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	2	[' Lodeiro 6 (1ºT)', ' Lodeiro 11 (2ºT)']	['Anselmo Ramon 25 (1ºT)']	1	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
22	3	2013	Domingo 02 de Junho de 2013	18:30	Cláudio Moacyr - Macae - RJ	266	Fluminense - RJ	3	[' Digão 25 (1ºT)', ' Digão 33 (1ºT)', ' Wellington Nem 35 (2ºT)']	[]	0	Criciuma - SC	288	Guilherme Ceretta de Lima	ASP-FIFA
23	3	2013	Sábado 01 de Junho de 2013	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[' Emerson Sheik 28 (2ºT)']	[]	0	Ponte Preta - SP	303	Rodrigo Guarizo F. do Amaral	CBF-1
24	3	2013	Sábado 01 de Junho de 2013	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Dinei 31 (1ºT)', ' Dinei 14 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Heber Roberto Lopes	FIFA
25	3	2013	Domingo 02 de Junho de 2013	18:30	Centenário - Caxias do Sul - RS	285	Internacional - RS	1	[' Forlan 19 (2ºT)']	['Ryder 10 (1ºT) ', 'Fernandao 16 (2ºT)']	2	Bahia - BA	265	Edivaldo Elias da Silva	CBF-1
26	3	2013	Sábado 01 de Junho de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Hugo 30 (2ºT)']	['Deivid 33 (1ºT)']	1	Coritiba - PR	294	Nielson Nogueira Dias	ESP-2
27	3	2013	Domingo 02 de Junho de 2013	18:30	Aflitos - Recife - PE	343	Náutico - PE	2	[' Rogerio 15 (1ºT)', ' Marcos Vinicius 45+2 (2ºT)']	['Michel 31 (1ºT) ', 'Romao 37 (2ºT)']	2	Portuguesa - SP	278	Dewson Fernando Freitas da Silva	ASP-FIFA
28	3	2013	Domingo 02 de Junho de 2013	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	São Paulo - SP	276	Sandro Meira Ricci	FIFA
29	3	2013	Sábado 01 de Junho de 2013	16:20	Arena Joinville - Joinville - SC	293	Atlético Paranaense - PR	2	[' Ederson 32 (1ºT)', ' Ederson 27 (2ºT)']	['Marcelo Moreno 33 (2ºT) ', 'Renato Abreu 35 (2ºT)']	2	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
30	3	2013	Sábado 01 de Junho de 2013	16:20	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Willian José 33 (2ºT)']	['Vargas 11 (1ºT)']	1	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
31	4	2013	Quarta 05 de Junho de 2013	21:00	Raulino de Oliveira - Volta Redonda - RJ	267	Vasco da Gama - RJ	2	[' Alisson 24 (2ºT)', ' Abuda 45+3 (2ºT)']	[]	0	Atlético - MG	282	Raphael Claus	CBF-1
32	4	2013	Quarta 05 de Junho de 2013	22:00	Orlando Scarpelli - Florianopolis - SC	262	Flamengo - RJ	0	[]	['Rogerio 37 (2ºT)']	1	Náutico - PE	343	Andre Luiz de Freitas Castro	ESP-2
33	4	2013	Quarta 05 de Junho de 2013	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Rodrigo 2 (1ºT)']	1	Goiás - GO	290	Francisco Carlos do Nascimento	FIFA
34	4	2013	Quarta 05 de Junho de 2013	22:00	Lourival Baptista - Aracaju - SE	265	Bahia - BA	2	[' Fernandao 40 (1ºT)', ' Fernandao 23 (2ºT)']	['Vitinho 7 (1ºT)']	1	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
35	4	2013	Quarta 05 de Junho de 2013	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Elano 24 (2ºT)']	[]	0	Vitória - BA	287	Marcos Andre Gomes da Penha	CBF-1
36	4	2013	Quarta 05 de Junho de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Chiquinho 23 (1ºT)', ' William 1 (2ºT)', ' William 40 (2ºT)']	['Paulo Baier 35 (1ºT) ', 'Ederson 11 (2ºT) ', 'Everton 18 (2ºT) ', 'Marcao 45+2 (2ºT)']	4	Atlético Paranaense - PR	293	Gilberto Rodrigues Castro Junior	CBF-1
37	4	2013	Quarta 05 de Junho de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Joao Vitor 16 (1ºT)', ' Giancarlo 12 (2ºT)', ' Matheus Ferraz 23 (2ºT)']	['Neilton 45+2 (2ºT)']	1	Santos - SP	277	Pablo dos Santos Alves	ESP-2
38	4	2013	Quarta 05 de Junho de 2013	22:00	Arena do Jacaré - Sete Lagoas - MG	283	Cruzeiro - MG	1	[' Dagoberto 40 (2ºT)']	[]	0	Corinthians - SP	264	Jailson Macedo Freitas	ESP-2
39	4	2013	Quinta 06 de Junho de 2013	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Robinho 15 (1ºT)', ' Alex 42 (2ºT)']	['Carlinhos 22 (1ºT)']	1	Fluminense - RJ	266	Elmo Alves Resende Cunha	ESP-2
40	4	2013	Quarta 05 de Junho de 2013	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Canete 9 (2ºT)']	['Rafael Moura 24 (1ºT)']	1	Internacional - RS	285	Wagner Reway	ASP-FIFA
41	5	2013	Sábado 08 de Junho de 2013	18:30	Raulino de Oliveira - Volta Redonda - RJ	267	Vasco da Gama - RJ	1	[' Carlos Alberto 21 (1ºT)']	['Fernandao 7 (1ºT)']	1	Bahia - BA	265	Marcelo Aparecido R de Souza	CBF-1
42	5	2013	Domingo 09 de Junho de 2013	18:30	Cláudio Moacyr - Macae - RJ	266	Fluminense - RJ	2	[' Rafael Sobis 36 (2ºT)', ' Denilson 41 (2ºT)']	['Vitor 25 (2ºT)']	1	Goiás - GO	290	Alicio Pena Junior	\N
43	5	2013	Sábado 08 de Junho de 2013	18:30	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Portuguesa - SP	278	Flavio Rodrigues Guerra	CBF-1
44	5	2013	Domingo 09 de Junho de 2013	18:30	Jóia da Princesa - Feira de Santana - BA	287	Vitória - BA	3	[' Luis 27 (1ºT)', ' Max 35 (1ºT)', ' Escudero 42 (2ºT)']	['Ederson 30 (1ºT) ', 'Luiz Alberto da Silva Oliveira 35 (2ºT)']	2	Atlético Paranaense - PR	293	Anderson Daronco	CBF-1
45	5	2013	Quarta 12 de Junho de 2013	22:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' K. Giacomazzi 41 (2ºT)']	['Luis Fabiano 41 (1ºT)']	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
46	5	2013	Sábado 08 de Junho de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Seedorf 31 (1ºT) ', 'Antonio Carlos 36 (1ºT)']	2	Botafogo - RJ	296	Claudio Francisco Lima E Silva	ESP-2
47	5	2013	Sábado 08 de Junho de 2013	16:20	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Hernane 37 (1ºT) ', 'Gabriel 7 (2ºT) ', 'Gabriel 33 (2ºT)']	3	Flamengo - RJ	262	Jailson Macedo Freitas	ESP-2
48	5	2013	Sábado 08 de Junho de 2013	16:20	Arena do Jacaré - Sete Lagoas - MG	283	Cruzeiro - MG	2	[' Elber 31 (1ºT)', ' Everton Ribeiro 17 (2ºT)']	['Otavio 23 (1ºT) ', 'Gabriel 28 (2ºT)']	2	Internacional - RS	285	Guilherme Ceretta de Lima	ASP-FIFA
49	5	2013	Domingo 09 de Junho de 2013	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Deivid 1 (1ºT)']	[]	0	Náutico - PE	343	Pablo Ramon Goncalves Pinheiro	CBF-1
50	5	2013	Quarta 12 de Junho de 2013	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Cicero 4 (1ºT)']	[]	0	Atlético - MG	282	Márcio Chagas da Silva	ESP-2
51	6	2013	Domingo 07 de Julho de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	296	Botafogo - RJ	1	[' Seedorf 38 (2ºT)']	[]	0	Fluminense - RJ	266	Wagner do Nascimento Magalhaes	CBF-1
52	6	2013	Sábado 06 de Julho de 2013	18:30	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	2	[' Marcelo Moreno 8 (1ºT)', ' Caceres 2 (2ºT)']	['Chico 7 (2ºT) ', 'Alex 14 (2ºT)']	2	Coritiba - PR	294	Paulo Cesar de Oliveira	FIFA
53	6	2013	Domingo 07 de Julho de 2013	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Giva 12 (2ºT) ', 'Cicero 36 (2ºT)']	2	Santos - SP	277	Raphael Claus	CBF-1
54	6	2013	Domingo 07 de Julho de 2013	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Alexandre Pato 32 (1ºT) ', 'Alexandre Pato 42 (1ºT)']	2	Corinthians - SP	264	Pericles Bassols Pegado Cortez	FIFA
55	6	2013	Domingo 07 de Julho de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	5	[' Nei 16 (1ºT)', ' Forlan 38 (1ºT)', ' Indio 10 (2ºT)', ' Rafael Moura 27 (2ºT)', ' Dalessandro 30 (2ºT)']	['Andre Felipe 45 (1ºT) ', 'Rafael Vaz 19 (2ºT) ', 'Fellipe 39 (2ºT)']	3	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
56	6	2013	Domingo 07 de Julho de 2013	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Walter 7 (2ºT)']	[]	0	Vitória - BA	287	Leandro Pedro Vuaden	FIFA
57	6	2013	Sábado 06 de Julho de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Herlison 27 (2ºT)']	['Diego 11 (1ºT) ', 'William 43 (1ºT) ', 'Rildo 10 (2ºT)']	3	Ponte Preta - SP	303	Heber Roberto Lopes	FIFA
58	6	2013	Domingo 07 de Julho de 2013	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Rosinei 11 (1ºT)', ' Alecsandro 2 (2ºT)', ' Leleu 37 (2ºT)']	['Luan 26 (1ºT) ', 'Wellington Paulista 45+2 (2ºT)']	2	Criciuma - SC	288	Anderson Daronco	CBF-1
59	6	2013	Sábado 06 de Julho de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Pedro Botelho 31 (2ºT)']	['Barcos 37 (2ºT)']	1	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
60	6	2013	Sábado 06 de Julho de 2013	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Valdomiro Duarte de Macedo 4 (1ºT)']	['Bruno Rodrigo 17 (1ºT)']	1	Cruzeiro - MG	283	Paulo H Godoy Bezerra	CBF-1
61	7	2013	Domingo 14 de Julho de 2013	18:30	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	0	[]	['Paulinho 30 (1ºT)']	1	Flamengo - RJ	262	Grazianni Maciel Rocha	CBF-1
62	7	2013	Sábado 13 de Julho de 2013	18:30	Cláudio Moacyr - Macae - RJ	266	Fluminense - RJ	2	[' Carlinhos 34 (1ºT)', ' Fred 7 (2ºT)']	['Dalessandro 19 (1ºT) ', 'Forlan 33 (1ºT) ', 'Forlan 40 (1ºT)']	3	Internacional - RS	285	Heber Roberto Lopes	FIFA
63	7	2013	Domingo 14 de Julho de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Rosinei 36 (1ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
64	7	2013	Domingo 14 de Julho de 2013	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Dinei 20 (1ºT)', ' Max 29 (1ºT)', ' Max 10 (2ºT)']	['Aloisio 9 (1ºT) ', 'Rogerio 35 (1ºT)']	2	São Paulo - SP	276	Francisco Carlos do Nascimento	FIFA
65	7	2013	Domingo 14 de Julho de 2013	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Vargas 13 (1ºT)', ' Vargas 34 (1ºT)']	['Seedorf 20 (1ºT)']	1	Botafogo - RJ	296	Paulo Cesar de Oliveira	FIFA
66	7	2013	Sábado 13 de Julho de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Bahia - BA	265	Pablo Ramon Goncalves Pinheiro	CBF-1
67	7	2013	Domingo 14 de Julho de 2013	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	[]	0	Goiás - GO	290	Wilson Luiz Seneme	FIFA
68	7	2013	Domingo 14 de Julho de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Ricardo Goulart 9 (1ºT)', ' Vinicius Araujo 9 (2ºT)', ' Vinicius Araujo 25 (2ºT)']	[]	0	Náutico - PE	343	Márcio Chagas da Silva	ESP-2
69	7	2013	Domingo 14 de Julho de 2013	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Geraldo 11 (2ºT)']	[]	0	Atlético Paranaense - PR	293	Felipe Gomes da Silva	ASP-FIFA
70	7	2013	Sábado 13 de Julho de 2013	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Neilton 1 (1ºT)', ' Willian José 11 (1ºT)', ' Neilton 29 (2ºT)', ' Giva 45+1 (2ºT)']	['Bruno Moraes 42 (2ºT)']	1	Portuguesa - SP	278	Rodrigo Guarizo F. do Amaral	CBF-1
71	8	2013	Sábado 20 de Julho de 2013	18:30	São Januário - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Elias 4 (2ºT)', ' Renato 32 (2ºT)']	[]	0	Náutico - PE	343	Elmo Alves Resende Cunha	ESP-2
72	8	2013	Domingo 21 de Julho de 2013	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Carlinhos 11 (2ºT)']	['Juninho 16 (1ºT) ', 'Andre Felipe 1 (2ºT) ', 'Carlos 36 (2ºT)']	3	Vasco da Gama - RJ	267	Marcelo de Lima Henrique	FIFA
73	8	2013	Sábado 20 de Julho de 2013	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Luan 6 (2ºT) ', 'Luan 33 (2ºT) ', 'Luan 36 (2ºT)']	3	Cruzeiro - MG	283	Heber Roberto Lopes	FIFA
74	8	2013	Domingo 21 de Julho de 2013	16:00	Fonte Nova - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Bahia - BA	265	Paulo Cesar de Oliveira	FIFA
75	8	2013	Domingo 21 de Julho de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	1	[' Juan 45+1 (2ºT)']	[]	0	Flamengo - RJ	262	Guilherme Ceretta de Lima	ASP-FIFA
76	8	2013	Domingo 21 de Julho de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Renan 44 (1ºT)', ' Renan 21 (2ºT)']	['Bruno Moraes 39 (1ºT)']	1	Portuguesa - SP	278	Pericles Bassols Pegado Cortez	FIFA
77	8	2013	Sábado 20 de Julho de 2013	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	2	[' Wellington Paulista 25 (1ºT)', ' Matheus Ferraz 29 (2ºT)']	['Ze Roberto 37 (1ºT)']	1	Grêmio - RS	284	Felipe Gomes da Silva	ASP-FIFA
78	8	2013	Quinta 03 de Outubro de 2013	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Marcos Rocha 6 (1ºT)', ' Jo 23 (1ºT)', ' Jo 26 (2ºT)', ' Alecsandro 38 (2ºT)']	[]	0	Ponte Preta - SP	303	Pericles Bassols Pegado Cortez	FIFA
79	8	2013	Domingo 21 de Julho de 2013	16:00	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Marcelo Cirino 5 (1ºT)']	['Alexandre Pato 25 (1ºT)']	1	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
80	8	2013	Domingo 21 de Julho de 2013	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Neilton 20 (1ºT)', ' Cicero 19 (2ºT)']	['Alex 40 (1ºT) ', 'Alex 42 (2ºT)']	2	Coritiba - PR	294	Leandro Pedro Vuaden	FIFA
81	9	2013	Sábado 27 de Julho de 2013	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[' Juninho 8 (1ºT)', ' Rafael Vaz 10 (2ºT)', ' Edmilson dos Santos Silva 27 (2ºT)']	['Ivo 16 (2ºT) ', 'Wellington Paulista 26 (2ºT)']	2	Criciuma - SC	288	Márcio Chagas da Silva	ESP-2
82	9	2013	Domingo 28 de Julho de 2013	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Elias 45+4 (2ºT)']	['Rafael Marques 22 (1ºT)']	1	Botafogo - RJ	296	Pericles Bassols Pegado Cortez	FIFA
83	9	2013	Domingo 28 de Julho de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	São Paulo - SP	276	Rodrigo Guarizo F. do Amaral	CBF-1
84	9	2013	Domingo 28 de Julho de 2013	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Marquinhos Gabriel 2 (1ºT)', ' Marquinhos Gabriel 32 (1ºT)']	['Thiago Mendes 33 (1ºT)']	1	Goiás - GO	290	Paulo H Godoy Bezerra	CBF-1
85	9	2013	Domingo 28 de Julho de 2013	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Riveros 5 (2ºT)', ' K. Giacomazzi 39 (2ºT)']	[]	0	Fluminense - RJ	266	Raphael Claus	CBF-1
86	9	2013	Sábado 27 de Julho de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Rildo 4 (2ºT)']	[]	0	Santos - SP	277	Leandro Bizzio Marinho	CBF-1
87	9	2013	Domingo 28 de Julho de 2013	16:00	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	3	[' Derley 27 (2ºT)', ' Maikon 43 (2ºT)', ' Rogerio 45+1 (2ºT)']	[]	0	Internacional - RS	285	Dewson Fernando Freitas da Silva	ASP-FIFA
88	9	2013	Domingo 28 de Julho de 2013	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	4	[' Everton Ribeiro 32 (1ºT)', ' Ricardo Goulart 43 (1ºT)', ' Nilton 8 (2ºT)', ' Ricardo Goulart 12 (2ºT)']	['Alecsandro 18 (1ºT)']	1	Atlético - MG	282	Emerson de Almeida Ferreira	CBF-1
89	9	2013	Domingo 28 de Julho de 2013	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Alex 45+3 (1ºT)']	['Max 8 (1ºT)']	1	Vitória - BA	287	Wilson Luiz Seneme	FIFA
90	9	2013	Sábado 27 de Julho de 2013	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Moises Moura Pinheiro 11 (1ºT)', ' Gilberto 22 (1ºT)']	['Manoel 7 (1ºT) ', 'Guilherme 18 (2ºT) ', 'Léo 45+2 (2ºT)']	3	Atlético Paranaense - PR	293	Fabricio Neves Correa	CBF-1
91	10	2013	Quinta 01 de Agosto de 2013	19:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Vitinho 31 (1ºT)', ' Elias 34 (2ºT)']	[]	0	Vitória - BA	287	Flavio Rodrigues Guerra	CBF-1
92	10	2013	Quarta 31 de Julho de 2013	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Fred 32 (2ºT)']	[]	0	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
93	10	2013	Quarta 31 de Julho de 2013	21:50	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[' Emerson Sheik 34 (1ºT)', ' Paulo Andre 34 (2ºT)']	[]	0	Grêmio - RS	284	Alicio Pena Junior	\N
94	10	2013	Quarta 31 de Julho de 2013	21:50	Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Fernandao 29 (1ºT)', ' Wallyson 45+1 (1ºT)', ' Marquinhos Gabriel 33 (2ºT)']	[]	0	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
95	10	2013	Terça 10 de Setembro de 2013	19:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	1	[' Dalessandro 30 (2ºT)']	['Thiago Ribeiro 27 (1ºT) ', 'Renato Abreu 22 (2ºT)']	2	Santos - SP	277	Marcelo de Lima Henrique	FIFA
96	10	2013	Quinta 01 de Agosto de 2013	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Walter 42 (2ºT)']	['Pedro Ken 16 (1ºT)']	1	Vasco da Gama - RJ	267	Marcos Andre Gomes da Penha	CBF-1
97	10	2013	Terça 03 de Setembro de 2013	21:00	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Aloisio 28 (2ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	FIFA
98	10	2013	Quarta 31 de Julho de 2013	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Bernard 34 (2ºT)']	['Everton 40 (2ºT) ', 'Ederson 42 (2ºT)']	2	Atlético Paranaense - PR	293	Paulo Cesar de Oliveira	FIFA
99	10	2013	Quarta 31 de Julho de 2013	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	5	[' Lincoln 23 (1ºT)', ' Robinho 26 (1ºT)', ' Alex 10 (2ºT)', ' Lincoln 13 (2ºT)', ' Robinho 43 (2ºT)']	['William 3 (1ºT) ', 'Andres 1 (2ºT) ', 'William 4 (2ºT)']	3	Ponte Preta - SP	303	Jailson Macedo Freitas	ESP-2
100	10	2013	Quarta 31 de Julho de 2013	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Bruno 23 (2ºT)']	['Elton 45+2 (2ºT)']	1	Criciuma - SC	288	Grazianni Maciel Rocha	CBF-1
101	11	2013	Domingo 04 de Agosto de 2013	18:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Andre Felipe 44 (1ºT)', ' Andre Felipe 1 (2ºT)']	['Rafael Marques 23 (1ºT) ', 'Seedorf 29 (1ºT) ', 'Rafael Marques 3 (2ºT)']	3	Botafogo - RJ	296	Wagner do Nascimento Magalhaes	CBF-1
102	11	2013	Domingo 04 de Agosto de 2013	16:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	3	[' Nixon 7 (1ºT)', ' Elias 13 (1ºT)', ' Paulinho 26 (2ºT)']	[]	0	Atlético - MG	282	Leandro Pedro Vuaden	FIFA
103	11	2013	Quarta 10 de Julho de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Aloisio 14 (1ºT)']	['Talisca 18 (2ºT) ', 'Leandro 42 (2ºT)']	2	Bahia - BA	265	Alicio Pena Junior	\N
104	11	2013	Domingo 04 de Agosto de 2013	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Danilo Tarracha 26 (2ºT)', ' Fabricio 41 (2ºT)']	['Canete 19 (2ºT)']	1	Portuguesa - SP	278	Márcio Chagas da Silva	ESP-2
105	11	2013	Domingo 04 de Agosto de 2013	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 18 (1ºT)']	['Leandro Damiao 20 (1ºT)']	1	Internacional - RS	285	Fabricio Neves Correa	CBF-1
106	11	2013	Domingo 04 de Agosto de 2013	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' William 40 (2ºT)']	['Gum 4 (2ºT)']	1	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
107	11	2013	Domingo 04 de Agosto de 2013	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Renato Augusto 10 (1ºT) ', 'Guerrero 26 (1ºT)']	2	Corinthians - SP	264	Sandro Meira Ricci	FIFA
108	11	2013	Sábado 03 de Agosto de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Luan 12 (1ºT)']	[]	0	Coritiba - PR	294	Francisco Carlos do Nascimento	FIFA
109	11	2013	Domingo 04 de Agosto de 2013	16:00	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Guilherme 43 (1ºT)', ' Ederson 44 (2ºT)']	[]	0	Goiás - GO	290	Luiz Flavio de Oliveira	ASP-FIFA
110	11	2013	Quarta 25 de Setembro de 2013	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Cicero 40 (2ºT)']	['Maikon 37 (2ºT)']	1	Náutico - PE	343	Francisco Carlos do Nascimento	FIFA
111	12	2013	Quinta 08 de Agosto de 2013	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andre Felipe 11 (2ºT)']	['William 39 (2ºT)']	1	Ponte Preta - SP	303	Emerson de Almeida Ferreira	CBF-1
112	12	2013	Quarta 07 de Agosto de 2013	21:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	1	[' Joao Paulo 21 (2ºT)']	['Lauro 47 (2ºT)']	1	Portuguesa - SP	278	Cleisson Veloso Pereira	CBF-1
113	12	2013	Quarta 24 de Julho de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Leandro Damiao 14 (1ºT)']	1	Internacional - RS	285	Andre Luiz de Freitas Castro	ESP-2
114	12	2013	Quarta 07 de Agosto de 2013	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Max 6 (1ºT)']	['Fred 39 (2ºT)']	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	ESP-2
115	12	2013	Quinta 08 de Agosto de 2013	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Deivid 6 (1ºT)']	1	Coritiba - PR	294	Paulo H Godoy Bezerra	CBF-1
116	12	2013	Quarta 07 de Agosto de 2013	21:50	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Walter 26 (1ºT)', ' Walter 7 (2ºT)']	['Auremir 34 (1ºT)']	1	Náutico - PE	343	Jean Pierre Goncalves Lima	CBF-1
117	12	2013	Quarta 07 de Agosto de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Bruno 24 (2ºT)']	['Vinicius Araujo 23 (1ºT) ', 'Ricardo Goulart 38 (2ºT)']	2	Cruzeiro - MG	283	Marcos Andre Gomes da Penha	CBF-1
118	12	2013	Quarta 07 de Agosto de 2013	21:50	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Ronaldinho Gaucho 28 (1ºT)', ' Luan 45+3 (2ºT)']	['Elias 14 (1ºT) ', 'Lodeiro 14 (2ºT)']	2	Botafogo - RJ	296	Raphael Claus	CBF-1
119	12	2013	Quarta 07 de Agosto de 2013	21:00	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Paulo Baier 35 (2ºT)']	[]	0	Bahia - BA	265	Celio Amorim	ESP-2
120	12	2013	Quarta 07 de Agosto de 2013	21:50	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Willian José 9 (2ºT)']	['Paulo Andre 3 (1ºT)']	1	Corinthians - SP	264	Marcelo Aparecido R de Souza	CBF-1
121	13	2013	Sábado 10 de Agosto de 2013	18:30	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	1	[' Rafael Marques 6 (2ºT)']	['Andre Bahia 23 (2ºT)']	1	Goiás - GO	290	Sandro Meira Ricci	FIFA
122	13	2013	Domingo 11 de Agosto de 2013	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Rafael Sobis 16 (1ºT)', ' Rafael Sobis 45 (3ºT)']	['Elias 26 (1ºT) ', 'Hernane 31 (1ºT) ', 'Hernane 35 (2ºT)']	3	Flamengo - RJ	262	Luiz Flavio de Oliveira	ASP-FIFA
123	13	2013	Domingo 11 de Agosto de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[' Ralf 6 (1ºT)', ' Alexandre Pato 6 (2ºT)']	[]	0	Vitória - BA	287	Elmo Alves Resende Cunha	ESP-2
124	13	2013	Domingo 11 de Agosto de 2013	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Riveros 23 (2ºT) ', 'Maxi Rodriguez 32 (2ºT) ', 'Guilherme Biteco 45 (2ºT)']	3	Grêmio - RS	284	Wagner Reway	ASP-FIFA
125	13	2013	Domingo 11 de Agosto de 2013	18:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	2	[' Juan 14 (1ºT)', ' Otavio 43 (2ºT)']	['João Paulo 1 (1ºT) ', 'Ederson 29 (2ºT)']	2	Atlético Paranaense - PR	293	Pablo dos Santos Alves	ESP-2
126	13	2013	Domingo 11 de Agosto de 2013	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' William 7 (1ºT)', ' Artur 29 (1ºT)', ' Everton Santos 17 (2ºT)']	['Lins 11 (2ºT)']	1	Criciuma - SC	288	Dewson Fernando Freitas da Silva	ASP-FIFA
127	13	2013	Sábado 10 de Agosto de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	[]	0	Atlético - MG	282	Italo Medeiros de Azevedo	CBF-1
128	13	2013	Domingo 11 de Agosto de 2013	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Santos - SP	277	Paulo H Godoy Bezerra	CBF-1
129	13	2013	Domingo 11 de Agosto de 2013	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Pedro Ken 4 (1ºT)']	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
130	13	2013	Domingo 11 de Agosto de 2013	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Diogo 37 (1ºT)', ' Diogo 33 (2ºT)']	['Lucas 1 (2ºT)']	1	São Paulo - SP	276	Rodrigo Nunes de Sa	CBF-1
131	14	2013	Quinta 15 de Agosto de 2013	21:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Vitinho 9 (1ºT)', ' Seedorf 19 (2ºT)', ' Vitinho 30 (2ºT)']	['Scocco 32 (1ºT) ', 'Scocco 33 (1ºT) ', 'Fabricio 45+3 (2ºT)']	3	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
132	14	2013	Quarta 14 de Agosto de 2013	21:50	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Corinthians - SP	264	Andre Luiz de Freitas Castro	ESP-2
133	14	2013	Quinta 15 de Agosto de 2013	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Rodrigo Caio 17 (1ºT)']	['Paulo Baier 38 (1ºT)']	1	Atlético Paranaense - PR	293	Anderson Daronco	CBF-1
134	14	2013	Quarta 14 de Agosto de 2013	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Pedro Oldoni 7 (2ºT)', ' Vander 17 (2ºT)', ' Marquinhos 41 (2ºT)']	['William 23 (1ºT)']	1	Ponte Preta - SP	303	Felipe Gomes da Silva	ASP-FIFA
135	14	2013	Quarta 14 de Agosto de 2013	21:50	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Werley 12 (2ºT)', ' Barcos 15 (2ºT)', ' K. Giacomazzi 27 (2ºT)']	['Nilton 21 (2ºT)']	1	Cruzeiro - MG	283	Paulo Cesar de Oliveira	FIFA
136	14	2013	Quarta 14 de Agosto de 2013	21:50	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Walter 14 (1ºT)']	['Chicão 6 (2ºT)']	1	Flamengo - RJ	262	Jailson Macedo Freitas	ESP-2
137	14	2013	Quarta 14 de Agosto de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Joao Vitor 10 (1ºT)', ' Marlon 31 (1ºT)', ' Leonardo Moura 39 (1ºT)']	[]	0	Náutico - PE	343	Diego Almeida Real	CBF-1
138	14	2013	Quarta 14 de Agosto de 2013	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Leo Silva 18 (1ºT)', ' Alecsandro 10 (2ºT)']	[]	0	Bahia - BA	265	Pericles Bassols Pegado Cortez	FIFA
139	14	2013	Quarta 14 de Agosto de 2013	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Bil 45+4 (2ºT)']	['Gilberto 13 (2ºT)']	1	Portuguesa - SP	278	Arilson Bispo da Anunciacao	ESP-2
140	14	2013	Quarta 14 de Agosto de 2013	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Edu Dracena 31 (2ºT)']	['Rafael Vaz 45+1 (2ºT)']	1	Vasco da Gama - RJ	267	Edivaldo Elias da Silva	CBF-1
141	15	2013	Sábado 17 de Agosto de 2013	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Alex Telles 24 (1ºT)', ' Andre Felipe 41 (2ºT)']	['Barcos 5 (1ºT) ', 'Ramiro 36 (1ºT) ', 'Barcos 6 (2ºT)']	3	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
142	15	2013	Domingo 18 de Agosto de 2013	16:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	0	[]	[]	0	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
143	15	2013	Domingo 18 de Agosto de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[' Guerrero 45 (2ºT)']	[]	0	Coritiba - PR	294	Pericles Bassols Pegado Cortez	FIFA
144	15	2013	Domingo 18 de Agosto de 2013	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Santos - SP	277	Dewson Fernando Freitas da Silva	ASP-FIFA
145	15	2013	Domingo 18 de Agosto de 2013	18:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	0	[]	[]	0	Atlético - MG	282	Luiz Flavio de Oliveira	ASP-FIFA
146	15	2013	Domingo 18 de Agosto de 2013	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Walter 17 (1ºT)']	1	Goiás - GO	290	Heber Roberto Lopes	FIFA
147	15	2013	Sábado 17 de Agosto de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Samuel 25 (2ºT)']	1	Fluminense - RJ	266	Paulo Cesar de Oliveira	FIFA
148	15	2013	Sábado 17 de Agosto de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Leo 11 (1ºT)', ' Mayke 14 (2ºT)', ' Borges 28 (2ºT)', ' Ricardo Goulart 33 (2ºT)', ' Vinicius Araujo 39 (2ºT)']	['Dinei 23 (2ºT)']	1	Vitória - BA	287	Marcelo de Lima Henrique	FIFA
149	15	2013	Domingo 18 de Agosto de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Paulo Baier 17 (2ºT)', ' Ederson 27 (2ºT)']	['Sueliton 44 (1ºT)']	1	Criciuma - SC	288	Sandro Meira Ricci	FIFA
150	15	2013	Domingo 18 de Agosto de 2013	16:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Luis Ricardo Silva Umbelino 25 (2ºT)']	['Bolivar 20 (2ºT) ', 'Rafael Marques 26 (2ºT) ', 'Elias 31 (2ºT)']	3	Botafogo - RJ	296	Alicio Pena Junior	\N
151	16	2013	Domingo 25 de Agosto de 2013	16:00	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	1	[' Andre Felipe 9 (2ºT)']	['Guerrero 3 (1ºT)']	1	Corinthians - SP	264	Heber Roberto Lopes	FIFA
152	16	2013	Sábado 24 de Agosto de 2013	18:30	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	0	[]	['Para 7 (1ºT)']	1	Grêmio - RS	284	Paulo H Godoy Bezerra	CBF-1
153	16	2013	Domingo 25 de Agosto de 2013	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 27 (1ºT)', ' Reinaldo 45 (1ºT)']	['Eduardo 45+2 (2ºT)']	1	Fluminense - RJ	266	Jailson Macedo Freitas	ESP-2
154	16	2013	Domingo 25 de Agosto de 2013	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Helder 12 (2ºT)', ' Fernandao 32 (2ºT)']	[]	0	Náutico - PE	343	Wagner do Nascimento Magalhaes	CBF-1
155	16	2013	Domingo 25 de Agosto de 2013	18:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	3	[' Dalessandro 28 (1ºT)', ' Dudu Cearense 32 (2ºT)', ' Leandro Damiao 41 (2ºT)']	['Renan 36 (1ºT) ', 'W. Matheus 26 (2ºT) ', 'Ramon 31 (2ºT)']	3	Goiás - GO	290	Dewson Fernando Freitas da Silva	ASP-FIFA
156	16	2013	Sábado 24 de Agosto de 2013	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Dedé 22 (1ºT) ', 'Borges 26 (2ºT)']	2	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
157	16	2013	Sábado 24 de Agosto de 2013	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	2	[' Sueliton 34 (1ºT)', ' Fabinho 35 (1ºT)']	['Julio Cesar 15 (2ºT)']	1	Coritiba - PR	294	Rodrigo Guarizo F. do Amaral	CBF-1
158	16	2013	Domingo 25 de Agosto de 2013	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Diego Tardelli 9 (2ºT)', ' Datolo 43 (2ºT)']	['Bruno 35 (1ºT)']	1	Portuguesa - SP	278	Leandro Pedro Vuaden	FIFA
159	16	2013	Domingo 25 de Agosto de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Ederson 2 (2ºT)', ' Ederson 11 (2ºT)']	[]	0	Botafogo - RJ	296	Wagner Reway	ASP-FIFA
160	16	2013	Sábado 24 de Agosto de 2013	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Gabriel Barbosa 8 (1ºT)', ' Cicero 11 (2ºT)']	[]	0	Vitória - BA	287	Pablo dos Santos Alves	ESP-2
161	17	2013	Domingo 01 de Setembro de 2013	16:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	São Paulo - SP	276	Sandro Meira Ricci	FIFA
162	17	2013	Sábado 31 de Agosto de 2013	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Thiago Ribeiro 12 (1ºT) ', 'Cicero 28 (1ºT)']	2	Santos - SP	277	Leandro Pedro Vuaden	FIFA
163	17	2013	Domingo 01 de Setembro de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	4	[' Alexandre Pato 24 (1ºT)', ' Alexandre Pato 34 (1ºT)', ' Romarinho 30 (2ºT)', ' Guerrero 38 (2ºT)']	[]	0	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
164	17	2013	Domingo 01 de Setembro de 2013	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Marcel 16 (1ºT)']	1	Criciuma - SC	288	Francisco de Assis Almeida Filho	ESP-2
165	17	2013	Sábado 31 de Agosto de 2013	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' K. Giacomazzi 14 (2ºT)']	[]	0	Ponte Preta - SP	303	Rodrigo Nunes de Sa	CBF-1
166	17	2013	Sábado 31 de Agosto de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Atlético - MG	282	Edivaldo Elias da Silva	CBF-1
167	17	2013	Sábado 31 de Agosto de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Lopez 42 (1ºT)']	['Léo 4 (1ºT) ', 'Everton 18 (1ºT) ', 'Ederson 34 (2ºT) ', 'Ederson 45 (2ºT)']	4	Atlético Paranaense - PR	293	Andre Luiz de Freitas Castro	ESP-2
168	17	2013	Domingo 01 de Setembro de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Willian 1 (1ºT)', ' Lucas Silva 32 (1ºT)', ' Julio Baptista 39 (1ºT)', ' Lucas Silva 22 (2ºT)', ' Vinicius Araujo 41 (2ºT)']	['Willie 18 (1ºT) ', 'Andre Felipe 40 (1ºT) ', 'Willie 43 (1ºT)']	3	Vasco da Gama - RJ	267	Flavio Rodrigues Guerra	CBF-1
169	17	2013	Domingo 01 de Setembro de 2013	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Internacional - RS	285	Pablo dos Santos Alves	ESP-2
170	17	2013	Sábado 31 de Agosto de 2013	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	4	[' Moises Moura Pinheiro 1 (1ºT)', ' Gilberto 5 (1ºT)', ' Gilberto 7 (1ºT)', ' Bergson 15 (2ºT)']	['Fernandao 9 (2ºT) ', 'Wallyson 28 (2ºT)']	2	Bahia - BA	265	Heber Roberto Lopes	FIFA
199	20	2013	Quarta 11 de Setembro de 2013	19:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Ederson 17 (1ºT)']	['Rafael Sobis 45 (1ºT)']	1	Fluminense - RJ	266	Fabricio Neves Correa	CBF-1
171	18	2013	Quinta 05 de Setembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Rafael Marques 13 (1ºT)', ' Hyuri 40 (1ºT)', ' Hyuri 4 (2ºT)']	['Alex 11 (2ºT)']	1	Coritiba - PR	294	Fabricio Neves Correa	CBF-1
172	18	2013	Quarta 04 de Setembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Hernane 23 (1ºT)', ' Hernane 43 (1ºT)']	['Juan 45+1 (2ºT)']	1	Vitória - BA	287	Luiz Flavio de Oliveira	ASP-FIFA
173	18	2013	Quinta 05 de Setembro de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Aloisio 23 (2ºT)']	['Marcel 23 (1ºT) ', 'Lins 41 (1ºT)']	2	Criciuma - SC	288	Wagner Reway	ASP-FIFA
174	18	2013	Quarta 04 de Setembro de 2013	21:50	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Leandro 23 (2ºT)']	['Borges 25 (1ºT) ', 'Everton Ribeiro 40 (1ºT) ', 'Julio Baptista 45 (2ºT)']	3	Cruzeiro - MG	283	Paulo Cesar de Oliveira	FIFA
175	18	2013	Quarta 04 de Setembro de 2013	21:50	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	1	[' Dalessandro 9 (2ºT)']	[]	0	Corinthians - SP	264	Paulo H Godoy Bezerra	CBF-1
176	18	2013	Terça 03 de Setembro de 2013	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Walter 14 (1ºT)', ' Walter 26 (2ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
177	18	2013	Quinta 05 de Setembro de 2013	21:00	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Willie 2 (2ºT) ', 'Marlone 6 (2ºT) ', 'Marlone 45+1 (2ºT)']	3	Vasco da Gama - RJ	267	Jailson Macedo Freitas	ESP-2
178	18	2013	Quarta 04 de Setembro de 2013	21:50	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Ronaldinho Gaucho 45+2 (1ºT)', ' Ronaldinho Gaucho 37 (2ºT)']	['Wagner 13 (1ºT) ', 'Rhayner 26 (2ºT)']	2	Fluminense - RJ	266	Anderson Daronco	CBF-1
179	18	2013	Quarta 04 de Setembro de 2013	19:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Marcelo Cirino 6 (1ºT)', ' Marquinhos 37 (1ºT)']	['Emerson 42 (2ºT)']	1	Santos - SP	277	Marcelo de Lima Henrique	FIFA
180	18	2013	Quarta 04 de Setembro de 2013	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Gilberto 40 (1ºT)', ' Gilberto 4 (2ºT)']	['Adriano 45+3 (2ºT)']	1	Ponte Preta - SP	303	Leandro Bizzio Marinho	CBF-1
181	19	2013	Domingo 08 de Setembro de 2013	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Atlético Paranaense - PR	293	Leandro Pedro Vuaden	FIFA
182	19	2013	Sábado 07 de Setembro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Diego 20 (2ºT)']	[]	0	Bahia - BA	265	Ricardo Marques Ribeiro	FIFA
183	19	2013	Domingo 08 de Setembro de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Náutico - PE	343	Felipe Gomes da Silva	ASP-FIFA
184	19	2013	Sábado 07 de Setembro de 2013	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Marquinhos 16 (1ºT)']	['Neto Berola 40 (2ºT)']	1	Atlético - MG	282	Raphael Claus	CBF-1
185	19	2013	Sábado 07 de Setembro de 2013	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Barcos 6 (2ºT)', ' Ze Roberto 12 (2ºT)', ' K. Giacomazzi 41 (2ºT)']	['Rhodolfo 25 (2ºT) ', 'Luis Ricardo Silva Umbelino 32 (2ºT)']	2	Portuguesa - SP	278	Jailson Macedo Freitas	ESP-2
186	19	2013	Sábado 07 de Setembro de 2013	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' William 25 (1ºT)']	['Juan 29 (1ºT) ', 'Dalessandro 16 (2ºT) ', 'Scocco 26 (2ºT)']	3	Internacional - RS	285	Edivaldo Elias da Silva	CBF-1
187	19	2013	Domingo 08 de Setembro de 2013	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Lins 3 (1ºT)']	['OCTAVIO 8 (2ºT) ', 'Elias 45+2 (2ºT)']	2	Botafogo - RJ	296	Dewson Fernando Freitas da Silva	ASP-FIFA
188	19	2013	Domingo 08 de Setembro de 2013	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Ricardo Goulart 8 (2ºT)']	[]	0	Flamengo - RJ	262	Anderson Daronco	CBF-1
189	19	2013	Domingo 08 de Setembro de 2013	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Alex 31 (1ºT)', ' Alex 45+1 (1ºT)']	[]	0	São Paulo - SP	276	Alicio Pena Junior	\N
190	19	2013	Sábado 07 de Setembro de 2013	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Thiago Ribeiro 4 (2ºT)']	[]	0	Goiás - GO	290	Wagner Reway	ASP-FIFA
191	20	2013	Quarta 11 de Setembro de 2013	21:50	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Hyuri 44 (2ºT)']	[]	0	Corinthians - SP	264	Heber Roberto Lopes	FIFA
192	20	2013	Quinta 12 de Setembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Leo Moura 19 (1ºT)', ' Hernane 9 (2ºT)']	['Cicero 11 (2ºT)']	1	Santos - SP	277	Sandro Meira Ricci	FIFA
193	20	2013	Quinta 12 de Setembro de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luis Fabiano 2 (2ºT)']	[]	0	Ponte Preta - SP	303	Marcelo Aparecido R de Souza	CBF-1
194	20	2013	Quarta 11 de Setembro de 2013	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Fernandao 26 (2ºT)', ' Obina 40 (2ºT)']	['Feijao 8 (1ºT) ', 'Lins 35 (1ºT)']	2	Criciuma - SC	288	Luiz Flavio de Oliveira	ASP-FIFA
195	20	2013	Quinta 12 de Setembro de 2013	19:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	2	[' Dalessandro 26 (1ºT)', ' Dalessandro 28 (1ºT)']	['Luis 8 (1ºT) ', 'Luis 28 (2ºT)']	2	Vitória - BA	287	Andre Luiz de Freitas Castro	ESP-2
196	20	2013	Quarta 11 de Setembro de 2013	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Renan 27 (1ºT)']	['Willian 38 (1ºT) ', 'Willian 26 (2ºT)']	2	Cruzeiro - MG	283	Pericles Bassols Pegado Cortez	FIFA
197	20	2013	Quarta 11 de Setembro de 2013	21:50	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Barcos 25 (1ºT) ', 'Paulo 36 (2ºT)']	2	Grêmio - RS	284	Francisco de Assis Almeida Filho	ESP-2
198	20	2013	Quinta 12 de Setembro de 2013	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Jo 22 (1ºT)', ' Jo 25 (1ºT)', ' Jo 29 (1ºT)']	[]	0	Coritiba - PR	294	Paulo H Godoy Bezerra	CBF-1
200	20	2013	Quarta 11 de Setembro de 2013	21:50	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Correa 11 (1ºT)', ' Gilberto 30 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Claudio Francisco Lima E Silva	ESP-2
201	21	2013	Domingo 15 de Setembro de 2013	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Rodrigo Caio 30 (1ºT) ', 'Antonio Carlos 25 (2ºT)']	2	São Paulo - SP	276	Heber Roberto Lopes	FIFA
202	21	2013	Sábado 14 de Setembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Rafael Sobis 15 (2ºT)', ' Wagner 27 (2ºT)']	['Diogo 34 (1ºT)']	1	Portuguesa - SP	278	Wilton Pereira Sampaio	FIFA
203	21	2013	Domingo 15 de Setembro de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[' Alexandre Pato 33 (2ºT)']	['Hugo 11 (2ºT) ', 'Amaral 39 (2ºT)']	2	Goiás - GO	290	Leandro Pedro Vuaden	FIFA
204	21	2013	Domingo 15 de Setembro de 2013	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Dinei 20 (1ºT)', ' Dinei 25 (2ºT)']	['HUGO CABRAL 14 (1ºT)']	1	Náutico - PE	343	Jean Pierre Goncalves Lima	CBF-1
205	21	2013	Domingo 15 de Setembro de 2013	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Fernandinho 16 (2ºT)']	1	Atlético - MG	282	Marcelo de Lima Henrique	FIFA
206	21	2013	Domingo 15 de Setembro de 2013	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Artur 22 (2ºT)']	['Andre Santos 41 (2ºT)']	1	Flamengo - RJ	262	Paulo H Godoy Bezerra	CBF-1
207	21	2013	Domingo 15 de Setembro de 2013	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Otavio 4 (2ºT)']	1	Internacional - RS	285	Felipe Gomes da Silva	ASP-FIFA
208	21	2013	Sábado 14 de Setembro de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Nilton 35 (1ºT)']	[]	0	Atlético Paranaense - PR	293	Raphael Claus	CBF-1
209	21	2013	Domingo 15 de Setembro de 2013	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Christian 19 (2ºT)', ' Alex 45+1 (2ºT)']	['Wallyson 20 (1ºT) ', 'Wiliam Barbio 7 (2ºT)']	2	Bahia - BA	265	Rodrigo Nunes de Sa	CBF-1
210	21	2013	Domingo 15 de Setembro de 2013	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Cicero 22 (2ºT)']	['Elias 39 (1ºT) ', 'Elias 11 (2ºT)']	2	Botafogo - RJ	296	Andre Luiz de Freitas Castro	ESP-2
211	22	2013	Quarta 18 de Setembro de 2013	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andre Felipe 8 (1ºT)']	['Alemao 35 (2ºT) ', 'Marquinhos 45 (2ºT)']	2	Vitória - BA	287	Celio Amorim	ESP-2
212	22	2013	Quinta 19 de Setembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Hernane 1 (1ºT)', ' Luiz Antonio 7 (1ºT)']	['Francisco 20 (1ºT) ', 'Guilherme 8 (2ºT) ', 'Marcelo Cirino 32 (2ºT) ', 'Roger 35 (2ºT)']	4	Atlético Paranaense - PR	293	Andre Luiz de Freitas Castro	ESP-2
213	22	2013	Quarta 18 de Setembro de 2013	21:50	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Welliton 26 (1ºT)']	[]	0	Atlético - MG	282	Leandro Pedro Vuaden	FIFA
214	22	2013	Quinta 19 de Setembro de 2013	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Feijao 5 (2ºT)', ' Fernandao 42 (2ºT)']	[]	0	Internacional - RS	285	Wagner Reway	ASP-FIFA
215	22	2013	Quarta 18 de Setembro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Elano 27 (2ºT)']	['Willian José 40 (2ºT)']	1	Santos - SP	277	Pericles Bassols Pegado Cortez	FIFA
216	22	2013	Quarta 18 de Setembro de 2013	21:50	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Fellipe 42 (2ºT)', ' Adailton 45+3 (2ºT)']	[]	0	Corinthians - SP	264	Paulo Cesar de Oliveira	FIFA
217	22	2013	Quarta 18 de Setembro de 2013	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Lins 39 (1ºT)']	['Bruno 43 (1ºT) ', 'Bruno 26 (2ºT)']	2	Fluminense - RJ	266	Jean Pierre Goncalves Lima	CBF-1
218	22	2013	Quarta 18 de Setembro de 2013	21:50	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Nilton 45+1 (1ºT)', ' Julio Baptista 35 (2ºT)', ' Julio Baptista 41 (2ºT)']	[]	0	Botafogo - RJ	296	Luiz Flavio de Oliveira	ASP-FIFA
219	22	2013	Quarta 18 de Setembro de 2013	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Lincoln 6 (1ºT)', ' Robinho 28 (2ºT)']	['Ronei 37 (1ºT) ', 'Eduardo Sasha 25 (2ºT)']	2	Goiás - GO	290	Anderson Daronco	CBF-1
220	22	2013	Quinta 19 de Setembro de 2013	21:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	3	[' Moises 7 (1ºT)', ' Gilberto 34 (1ºT)', ' Bruno 40 (1ºT)']	[]	0	Náutico - PE	343	Ricardo Marques Ribeiro	FIFA
221	23	2013	Domingo 22 de Setembro de 2013	16:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Edilson 30 (1ºT)']	['Fernandao 36 (2ºT) ', 'Obina 40 (2ºT)']	2	Bahia - BA	265	Leandro Pedro Vuaden	FIFA
222	23	2013	Sábado 21 de Setembro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Gum 6 (2ºT)']	['Lincoln 30 (1ºT)']	1	Coritiba - PR	294	Wagner Reway	ASP-FIFA
223	23	2013	Domingo 22 de Setembro de 2013	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Cruzeiro - MG	283	Felipe Gomes da Silva	ASP-FIFA
224	23	2013	Sábado 21 de Setembro de 2013	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Grêmio - RS	284	Sandro Meira Ricci	FIFA
225	23	2013	Domingo 22 de Setembro de 2013	16:00	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	0	[]	['Wanderson 40 (2ºT)']	1	Portuguesa - SP	278	Marcos Andre Gomes da Penha	CBF-1
226	23	2013	Domingo 22 de Setembro de 2013	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Rodrigo 44 (2ºT)']	[]	0	São Paulo - SP	276	Paulo H Godoy Bezerra	CBF-1
227	23	2013	Domingo 22 de Setembro de 2013	16:00	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	[]	0	Flamengo - RJ	262	Wilson Luiz Seneme	FIFA
228	23	2013	Domingo 22 de Setembro de 2013	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Fernandinho 2 (1ºT)', ' Rafael Vaz 18 (1ºT)']	['Dakson 27 (2ºT)']	1	Vasco da Gama - RJ	267	Andre Luiz de Freitas Castro	ESP-2
229	23	2013	Domingo 22 de Setembro de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Paulo Baier 11 (1ºT)']	[]	0	Ponte Preta - SP	303	Elmo Alves Resende Cunha	ESP-2
230	23	2013	Domingo 22 de Setembro de 2013	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Thiago Ribeiro 19 (1ºT)', ' Willian José 41 (1ºT)']	['Tony 33 (2ºT)']	1	Criciuma - SC	288	Arilson Bispo da Anunciacao	ESP-2
231	24	2013	Sábado 28 de Setembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Elias 42 (1ºT)']	1	Ponte Preta - SP	303	Francisco Carlos do Nascimento	FIFA
232	24	2013	Domingo 29 de Setembro de 2013	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Hernane 5 (1ºT)', ' Wallace Reis 17 (1ºT)', ' Hernane 23 (1ºT)', ' Elias 32 (2ºT)']	['Daniel 45+3 (1ºT)']	1	Criciuma - SC	288	Leandro Pedro Vuaden	FIFA
233	24	2013	Domingo 29 de Setembro de 2013	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Vargas 24 (2ºT)']	1	Grêmio - RS	284	Heber Roberto Lopes	FIFA
234	24	2013	Domingo 29 de Setembro de 2013	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Vasco da Gama - RJ	267	Wilson Luiz Seneme	FIFA
235	24	2013	Domingo 29 de Setembro de 2013	18:30	Estádio do Vale - Novo Hamburgo - RS	285	Internacional - RS	1	[' Otavio 5 (1ºT)']	['Nilton 4 (1ºT) ', 'Willian 8 (2ºT)']	2	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
236	24	2013	Sábado 28 de Setembro de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' W. Matheus 36 (1ºT)']	['Jean 6 (2ºT) ', 'Rafael Sobis 39 (2ºT)']	2	Fluminense - RJ	266	Márcio Chagas da Silva	ESP-2
237	24	2013	Sábado 28 de Setembro de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	3	[' Lopez 6 (2ºT)', ' Maikon 31 (2ºT)', ' Maikon 38 (2ºT)']	[]	0	Coritiba - PR	294	Claudio Francisco Lima E Silva	ESP-2
238	24	2013	Domingo 29 de Setembro de 2013	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Luan 17 (1ºT)', ' Marcos Rocha 36 (1ºT)', ' Alecsandro 43 (2ºT)']	['Cicinho 14 (1ºT)']	1	Santos - SP	277	Marcelo de Lima Henrique	FIFA
239	24	2013	Domingo 29 de Setembro de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	3	[' Ederson 11 (2ºT)', ' Ederson 18 (2ºT)', ' Roger 24 (2ºT)']	['Renato Caja 18 (1ºT) ', 'Ayrton 30 (1ºT) ', 'Dinei 43 (1ºT) ', 'William Henrique 38 (2ºT) ', 'Ayrton 41 (2ºT)']	5	Vitória - BA	287	Paulo H Godoy Bezerra	CBF-1
240	24	2013	Domingo 29 de Setembro de 2013	16:00	Morenão - Campo Grande - MS	278	Portuguesa - SP	4	[' Gilberto 7 (1ºT)', ' Gilberto 12 (1ºT)', ' Gilberto 32 (1ºT)', ' Wanderson 34 (2ºT)']	[]	0	Corinthians - SP	264	Raphael Claus	CBF-1
241	25	2013	Quinta 03 de Outubro de 2013	21:00	Cláudio Moacyr - Macae - RJ	267	Vasco da Gama - RJ	3	[' Edmilson dos Santos Silva 9 (1ºT)', ' Andre Felipe 42 (1ºT)', ' Willie 30 (2ºT)']	['Jorge Henrique 18 (1ºT)']	1	Internacional - RS	285	Luiz Flavio de Oliveira	ASP-FIFA
242	25	2013	Quarta 02 de Outubro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Diego 2 (1ºT)']	['Bolivar 13 (1ºT)']	1	Botafogo - RJ	296	Sandro Meira Ricci	FIFA
243	25	2013	Quarta 02 de Outubro de 2013	21:50	Romildão - Mogi Mirim - SP	264	Corinthians - SP	2	[' Guerrero 20 (1ºT)', ' Cleber 40 (1ºT)']	[]	0	Bahia - BA	265	Andre Luiz de Freitas Castro	ESP-2
244	25	2013	Quarta 02 de Outubro de 2013	21:00	Fonte Nova - Salvador - BA	287	Vitória - BA	2	[' Escudero 15 (1ºT)', ' William Henrique 42 (2ºT)']	['Pedro 34 (1ºT)']	1	Goiás - GO	290	Dewson Fernando Freitas da Silva	ASP-FIFA
245	25	2013	Quarta 02 de Outubro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Riveros 43 (1ºT)']	[]	0	Atlético Paranaense - PR	293	Wilson Luiz Seneme	FIFA
246	25	2013	Terça 01 de Outubro de 2013	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' William 45 (1ºT)']	['HUGO CABRAL 35 (2ºT) ', 'Maikon 45+2 (2ºT)']	2	Náutico - PE	343	Antonio Denival de Morais	CBF-1
247	25	2013	Quarta 25 de Setembro de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Lins 43 (1ºT)']	['Luan 41 (1ºT)']	1	Atlético - MG	282	Pablo dos Santos Alves	ESP-2
248	25	2013	Quarta 02 de Outubro de 2013	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	4	[' Everton Ribeiro 5 (1ºT)', ' Borges 15 (1ºT)', ' Willian 27 (1ºT)', ' Borges 29 (1ºT)']	[]	0	Portuguesa - SP	278	Jean Pierre Goncalves Lima	CBF-1
249	25	2013	Quarta 02 de Outubro de 2013	21:50	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Andre Santos 45+1 (1ºT) ', 'Wallace Reis 4 (2ºT)']	2	Flamengo - RJ	262	Paulo Cesar de Oliveira	FIFA
250	25	2013	Quarta 02 de Outubro de 2013	21:50	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Edu Dracena 22 (1ºT)', ' Thiago Ribeiro 14 (2ºT)', ' Leo 44 (2ºT)']	[]	0	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
251	26	2013	Sábado 05 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Alex Telles 37 (1ºT)']	1	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
252	26	2013	Domingo 06 de Outubro de 2013	16:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	1	[' Hernane 33 (1ºT)']	['Willie 8 (2ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
253	26	2013	Sábado 05 de Outubro de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Antonio Carlos 4 (1ºT)', ' Luis Fabiano 20 (2ºT)', ' Antonio Carlos 43 (2ºT)']	['Juan 32 (1ºT) ', 'Dinei 23 (2ºT)']	2	Vitória - BA	287	Anderson Daronco	CBF-1
254	26	2013	Domingo 06 de Outubro de 2013	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Fernandao 34 (1ºT)']	['William 21 (1ºT)']	1	Ponte Preta - SP	303	Pablo dos Santos Alves	ESP-2
255	26	2013	Domingo 06 de Outubro de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	1	[' Leandro Damiao 35 (2ºT)']	[]	0	Fluminense - RJ	266	Wilson Luiz Seneme	FIFA
256	26	2013	Domingo 06 de Outubro de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Walter 29 (1ºT)']	['Lins 2 (1ºT)']	1	Criciuma - SC	288	Claudio Francisco Lima E Silva	ESP-2
257	26	2013	Domingo 06 de Outubro de 2013	16:00	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Maikon 28 (1ºT)']	['Ricardo Goulart 9 (1ºT) ', 'Ricardo Goulart 7 (2ºT) ', 'Everton Ribeiro 13 (2ºT) ', 'Mayke 31 (2ºT)']	4	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	ASP-FIFA
258	26	2013	Domingo 06 de Outubro de 2013	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Corinthians - SP	264	Jailson Macedo Freitas	ESP-2
259	26	2013	Domingo 06 de Outubro de 2013	16:00	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	2	[' Paulo Baier 43 (1ºT)', ' Paulo Baier 45 (1ºT)']	['Julio Cesar 30 (1ºT)']	1	Coritiba - PR	294	Sandro Meira Ricci	FIFA
260	26	2013	Domingo 06 de Outubro de 2013	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	3	[' Luis Ricardo Silva Umbelino 15 (1ºT)', ' Gilberto 14 (2ºT)', ' Gilberto 21 (2ºT)']	[]	0	Santos - SP	277	Pericles Bassols Pegado Cortez	FIFA
261	27	2013	Quarta 09 de Outubro de 2013	21:50	Ressacada - Florianopolis - SC	267	Vasco da Gama - RJ	1	[' Cris 11 (1ºT)']	[]	0	Fluminense - RJ	266	Wagner do Nascimento Magalhaes	CBF-1
262	27	2013	Quinta 10 de Outubro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Leo Moura 28 (1ºT)', ' Hernane 26 (2ºT)']	['Rafael Moura 36 (2ºT)']	1	Internacional - RS	285	Raphael Claus	CBF-1
263	27	2013	Quarta 09 de Outubro de 2013	21:50	Romildão - Mogi Mirim - SP	264	Corinthians - SP	0	[]	[]	0	Atlético Paranaense - PR	293	Leandro Pedro Vuaden	FIFA
264	27	2013	Quarta 09 de Outubro de 2013	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Rafael 16 (1ºT)', ' Fernandao 25 (1ºT)']	[]	0	Vitória - BA	287	Marcelo de Lima Henrique	FIFA
265	27	2013	Quarta 09 de Outubro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Maxi Rodriguez 11 (2ºT)']	['Wellington Paulista 35 (1ºT) ', 'Serginho 44 (2ºT)']	2	Criciuma - SC	288	Elmo Alves Resende Cunha	ESP-2
266	27	2013	Quarta 09 de Outubro de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' William 35 (1ºT)', ' Elias 33 (2ºT)']	[]	0	Atlético - MG	282	Felipe Gomes da Silva	ASP-FIFA
267	27	2013	Quarta 09 de Outubro de 2013	21:50	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Maikon 9 (1ºT)']	['Rafael Marques 25 (1ºT) ', 'Seedorf 39 (1ºT) ', 'Gêge 45 (2ºT)']	3	Botafogo - RJ	296	Marcos Andre Gomes da Penha	CBF-1
268	27	2013	Quarta 09 de Outubro de 2013	21:50	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Douglas 32 (2ºT) ', 'Reinaldo 35 (2ºT)']	2	São Paulo - SP	276	Jailson Macedo Freitas	ESP-2
269	27	2013	Quarta 09 de Outubro de 2013	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Julio Cesar 17 (2ºT)']	[]	0	Santos - SP	277	Alicio Pena Junior	\N
270	27	2013	Quinta 10 de Outubro de 2013	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Heverton 37 (2ºT)']	['Hugo 36 (1ºT) ', 'Walter 6 (2ºT)']	2	Goiás - GO	290	Rodrigo Batista Raposo	CBF-1
271	28	2013	Domingo 13 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Gêge 42 (1ºT)', ' Rafael Marques 18 (2ºT)']	['Hernane 12 (1ºT)']	1	Flamengo - RJ	262	Grazianni Maciel Rocha	CBF-1
272	28	2013	Sábado 12 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Rafael Sobis 45 (2ºT)']	['Bressan 38 (1ºT)']	1	Grêmio - RS	284	Alicio Pena Junior	\N
273	28	2013	Domingo 13 de Outubro de 2013	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Corinthians - SP	264	Wilson Luiz Seneme	FIFA
274	28	2013	Sábado 12 de Outubro de 2013	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Marquinhos 11 (1ºT)', ' Dinei 25 (2ºT)']	['Geraldo 45 (1ºT)']	1	Coritiba - PR	294	Francisco de Assis Almeida Filho	ESP-2
275	28	2013	Domingo 13 de Outubro de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	4	[' Dalessandro 18 (1ºT)', ' Otavio 45+1 (1ºT)', ' Willians 24 (2ºT)', ' Kleber 37 (2ºT)']	['Tiago Real 27 (1ºT)']	1	Náutico - PE	343	Emerson de Almeida Ferreira	CBF-1
276	28	2013	Domingo 13 de Outubro de 2013	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Hugo 4 (1ºT)', ' Walter 31 (1ºT)', ' Eduardo Sasha 38 (1ºT)']	['Wiliam Barbio 23 (2ºT)']	1	Bahia - BA	265	Raphael Claus	CBF-1
277	28	2013	Domingo 13 de Outubro de 2013	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Wellington Paulista 16 (1ºT)', ' Lins 23 (1ºT)', ' Wellington Paulista 8 (2ºT)']	['Marlone 19 (1ºT) ', 'Andre Felipe 4 (2ºT)']	2	Vasco da Gama - RJ	267	Andre Luiz de Freitas Castro	ESP-2
278	28	2013	Domingo 13 de Outubro de 2013	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Fernandinho 41 (2ºT)']	[]	0	Cruzeiro - MG	283	Luiz Flavio de Oliveira	ASP-FIFA
279	28	2013	Domingo 13 de Outubro de 2013	18:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Marcelo Cirino 2 (1ºT)']	[]	0	Portuguesa - SP	278	Dewson Fernando Freitas da Silva	ASP-FIFA
280	28	2013	Sábado 12 de Outubro de 2013	21:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	2	[' Everton 44 (1ºT)', ' Montillo 23 (2ºT)']	['Rafael 45 (2ºT)']	1	Ponte Preta - SP	303	Marcelo Aparecido R de Souza	CBF-1
281	29	2013	Quinta 17 de Outubro de 2013	19:30	Cláudio Moacyr - Macae - RJ	267	Vasco da Gama - RJ	0	[]	['Rodrigo 36 (1ºT) ', 'Hugo 22 (2ºT)']	2	Goiás - GO	290	Wilson Luiz Seneme	FIFA
282	29	2013	Quarta 16 de Outubro de 2013	21:50	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Paulinho 6 (2ºT)', ' Hernane 39 (2ºT)']	['Fernandao 33 (2ºT)']	1	Bahia - BA	265	Wilton Pereira Sampaio	FIFA
283	29	2013	Quarta 16 de Outubro de 2013	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Ademilson 30 (1ºT)', ' PH GANSO 20 (2ºT)', ' Welliton 28 (2ºT)']	[]	0	Náutico - PE	343	Elmo Alves Resende Cunha	ESP-2
284	29	2013	Quinta 17 de Outubro de 2013	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' William Henrique 33 (2ºT)']	[]	0	Botafogo - RJ	296	Alicio Pena Junior	\N
285	29	2013	Quarta 16 de Outubro de 2013	21:50	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 4 (2ºT)']	[]	0	Corinthians - SP	264	Sandro Meira Ricci	FIFA
286	29	2013	Quarta 16 de Outubro de 2013	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Uendel 30 (1ºT)']	[]	0	Coritiba - PR	294	Fabricio Neves Correa	CBF-1
287	29	2013	Quarta 16 de Outubro de 2013	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Matheus Ferraz 25 (2ºT)']	['Gilberto 10 (1ºT) ', 'Bergson 13 (1ºT) ', 'Henrique Dourado 45+1 (2ºT)']	3	Portuguesa - SP	278	Cleisson Veloso Pereira	CBF-1
288	29	2013	Quarta 16 de Outubro de 2013	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Borges 17 (1ºT)']	[]	0	Fluminense - RJ	266	Paulo H Godoy Bezerra	CBF-1
289	29	2013	Quarta 16 de Outubro de 2013	21:50	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Roger 40 (2ºT)']	[]	0	Atlético - MG	282	Celio Amorim	ESP-2
290	29	2013	Quarta 16 de Outubro de 2013	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Internacional - RS	285	Andre Luiz de Freitas Castro	ESP-2
291	30	2013	Domingo 20 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Dankler 5 (1ºT)', ' Lodeiro 6 (1ºT)']	['Jomar 8 (2ºT) ', 'Pedro Ken 23 (2ºT)']	2	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
292	30	2013	Sábado 19 de Outubro de 2013	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Diego 39 (2ºT)']	['Rafael 36 (2ºT)']	1	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
293	30	2013	Sábado 19 de Outubro de 2013	21:00	Novelli Junior - Itu - SP	264	Corinthians - SP	1	[' Alexandre Pato 14 (2ºT)']	[]	0	Criciuma - SC	288	Anderson Daronco	CBF-1
294	30	2013	Domingo 20 de Outubro de 2013	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Aloisio 24 (1ºT)']	1	São Paulo - SP	276	Sandro Meira Ricci	FIFA
295	30	2013	Domingo 20 de Outubro de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	2	[' Willians 8 (1ºT)', ' Dalessandro 15 (2ºT)']	['Jackson 20 (1ºT) ', 'Vargas 6 (2ºT)']	2	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
296	30	2013	Domingo 20 de Outubro de 2013	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Ronei 18 (1ºT)', ' Dudu Cearense 26 (1ºT)', ' Walter 45+2 (2ºT)']	[]	0	Atlético Paranaense - PR	293	Pericles Bassols Pegado Cortez	FIFA
297	30	2013	Sábado 19 de Outubro de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Maikon 5 (2ºT)']	['Thiago Ribeiro 1 (1ºT) ', 'Cicero 21 (1ºT) ', 'Everton 24 (1ºT) ', 'Cicinho 26 (1ºT) ', 'Cicero 44 (2ºT)']	5	Santos - SP	277	Rodrigo Nunes de Sa	CBF-1
298	30	2013	Domingo 20 de Outubro de 2013	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Lucas Candido 12 (2ºT)']	[]	0	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
299	30	2013	Domingo 20 de Outubro de 2013	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Carlinho 41 (1ºT)', ' Keirrison 27 (2ºT)']	['Dagoberto 17 (2ºT)']	1	Cruzeiro - MG	283	Jailson Macedo Freitas	ESP-2
300	30	2013	Domingo 20 de Outubro de 2013	18:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	1	[' Moises 17 (2ºT)']	['Luis 18 (1ºT)']	1	Vitória - BA	287	Edivaldo Elias da Silva	CBF-1
301	31	2013	Sábado 26 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Julio Cesar 6 (2ºT)']	[]	0	Atlético - MG	282	Márcio Chagas da Silva	ESP-2
302	31	2013	Domingo 27 de Outubro de 2013	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Diego 28 (1ºT)', ' Rafael Sobis 12 (2ºT)']	['Marquinhos 23 (1ºT) ', 'Juan 17 (2ºT) ', 'William Henrique 19 (2ºT)']	3	Vitória - BA	287	Fabricio Neves Correa	CBF-1
303	31	2013	Domingo 27 de Outubro de 2013	16:00	Fonte Luminosa - Araraquara - SP	264	Corinthians - SP	1	[' Douglas 27 (1ºT)']	['Gustavo 16 (2ºT)']	1	Santos - SP	277	Leandro Pedro Vuaden	FIFA
304	31	2013	Domingo 27 de Outubro de 2013	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Obina 2 (2ºT)']	['Ederson 12 (2ºT)']	1	Atlético Paranaense - PR	293	Francisco Carlos do Nascimento	FIFA
305	31	2013	Domingo 27 de Outubro de 2013	16:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	2	[' Leandro Damiao 33 (1ºT)', ' Jorge Henrique 3 (2ºT)']	['Aloisio 10 (1ºT) ', 'Aloisio 44 (1ºT) ', 'Aloisio 8 (2ºT)']	3	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
306	31	2013	Domingo 27 de Outubro de 2013	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Adriano 34 (2ºT)', ' Uendel 44 (2ºT)']	['Diego 13 (1ºT)']	1	Vasco da Gama - RJ	267	Sandro Meira Ricci	FIFA
307	31	2013	Domingo 27 de Outubro de 2013	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Welinton 1 (1ºT) ', 'Amaral 41 (1ºT)']	2	Goiás - GO	290	Emerson de Almeida Ferreira	CBF-1
308	31	2013	Sábado 26 de Outubro de 2013	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Everton Ribeiro 12 (1ºT)', ' Dagoberto 19 (1ºT)', ' Borges 13 (2ºT)', ' Borges 31 (2ºT)', ' Dagoberto 39 (2ºT)']	['Joao Vitor 33 (1ºT) ', 'Lins 41 (1ºT) ', 'Ricardinho 44 (1ºT)']	3	Criciuma - SC	288	Wilton Pereira Sampaio	FIFA
309	31	2013	Domingo 27 de Outubro de 2013	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	4	[' Para 1 (1ºT)', ' Alex 4 (1ºT)', ' Robinho 34 (1ºT)', ' Geraldo 13 (2ºT)']	[]	0	Grêmio - RS	284	Andre Luiz de Freitas Castro	ESP-2
310	31	2013	Domingo 27 de Outubro de 2013	16:00	Castelão - Fortaleza - CE	278	Portuguesa - SP	0	[]	[]	0	Flamengo - RJ	262	Anderson Daronco	CBF-1
311	32	2013	Sábado 02 de Novembro de 2013	19:30	Cláudio Moacyr - Macae - RJ	267	Vasco da Gama - RJ	2	[' Edmilson dos Santos Silva 26 (1ºT)', ' Edmilson dos Santos Silva 27 (2ºT)']	['Luccas Claro 36 (2ºT)']	1	Coritiba - PR	294	Márcio Chagas da Silva	ESP-2
312	32	2013	Domingo 03 de Novembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Gum 45 (2ºT)']	[]	0	Fluminense - RJ	266	Leandro Pedro Vuaden	FIFA
313	32	2013	Sábado 02 de Novembro de 2013	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rodrigo Caio 8 (1ºT)', ' Aloisio 32 (2ºT)']	['Luis Ricardo Silva Umbelino 41 (1ºT)']	1	Portuguesa - SP	278	Andre Luiz de Freitas Castro	ESP-2
314	32	2013	Domingo 03 de Novembro de 2013	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Dinei 15 (2ºT)']	['Guilherme 8 (2ºT)']	1	Corinthians - SP	264	Jean Pierre Goncalves Lima	CBF-1
315	32	2013	Domingo 03 de Novembro de 2013	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Bahia - BA	265	Alicio Pena Junior	\N
316	32	2013	Domingo 03 de Novembro de 2013	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Eduardo Sasha 44 (2ºT)']	[]	0	Botafogo - RJ	296	Sandro Meira Ricci	FIFA
317	32	2013	Domingo 03 de Novembro de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Ricardinho 34 (1ºT)']	['Leonardo 9 (2ºT)']	1	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
318	32	2013	Sábado 02 de Novembro de 2013	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	5	[' Fernandinho 10 (1ºT)', ' Jo 23 (1ºT)', ' Guilherme 12 (2ºT)', ' Diego Tardelli 22 (2ºT)', ' Alecsandro 29 (2ºT)']	[]	0	Náutico - PE	343	Wagner Reway	ASP-FIFA
319	32	2013	Domingo 03 de Novembro de 2013	19:30	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	1	[' Guilherme 44 (1ºT)']	[]	0	Internacional - RS	285	Luiz Flavio de Oliveira	ASP-FIFA
320	32	2013	Domingo 03 de Novembro de 2013	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Everton Ribeiro 9 (2ºT)']	1	Cruzeiro - MG	283	Marcelo de Lima Henrique	FIFA
321	33	2013	Domingo 10 de Novembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Edmilson dos Santos Silva 28 (1ºT)', ' Andre Felipe 32 (2ºT)']	['Bruno 22 (1ºT) ', 'Gustavo 26 (1ºT)']	2	Santos - SP	277	Wilton Pereira Sampaio	FIFA
322	33	2013	Sábado 09 de Novembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Hernane 5 (2ºT)']	['Rodrigo 17 (2ºT)']	1	Goiás - GO	290	Jailson Macedo Freitas	ESP-2
323	33	2013	Domingo 10 de Novembro de 2013	19:30	Fonte Luminosa - Araraquara - SP	264	Corinthians - SP	1	[' Alexandre Pato 45+1 (2ºT)']	[]	0	Fluminense - RJ	266	Andre Luiz de Freitas Castro	ESP-2
324	33	2013	Sábado 09 de Novembro de 2013	19:30	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Atlético - MG	282	Márcio Chagas da Silva	ESP-2
325	33	2013	Domingo 10 de Novembro de 2013	17:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	2	[' Jorge Henrique 39 (1ºT)', ' Jackson 5 (2ºT)']	['Matheus 2 (2ºT)']	1	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
326	33	2013	Domingo 10 de Novembro de 2013	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Renato Caja 18 (1ºT) ', 'Ayrton 29 (1ºT) ', 'Dinei 44 (1ºT)']	3	Vitória - BA	287	Leandro Pedro Vuaden	FIFA
327	33	2013	Domingo 10 de Novembro de 2013	19:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Wellington Paulista 25 (2ºT)']	1	Criciuma - SC	288	Francisco Carlos do Nascimento	FIFA
328	33	2013	Domingo 10 de Novembro de 2013	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Borges 34 (1ºT)', ' Willian 33 (2ºT)', ' Ricardo Goulart 41 (2ºT)']	[]	0	Grêmio - RS	284	Wilson Luiz Seneme	FIFA
329	33	2013	Domingo 10 de Novembro de 2013	17:00	Durival Britto - Curitiba - PR	293	Atlético Paranaense - PR	3	[' Marcelo Cirino 12 (1ºT)', ' Luiz Alberto da Silva Oliveira 27 (1ºT)', ' Ederson 12 (2ºT)']	[]	0	São Paulo - SP	276	Paulo H Godoy Bezerra	CBF-1
330	33	2013	Sábado 09 de Novembro de 2013	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	0	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
331	34	2013	Quarta 13 de Novembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Portuguesa - SP	278	Emerson de Almeida Ferreira	CBF-1
332	34	2013	Quinta 14 de Novembro de 2013	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Wagner 16 (1ºT)', ' Samuel 5 (2ºT)']	[]	0	Náutico - PE	343	Marcos Andre Gomes da Penha	CBF-1
333	34	2013	Quarta 13 de Novembro de 2013	21:50	Novelli Junior - Itu - SP	276	São Paulo - SP	2	[' Rogerio 3 (2ºT)', ' Ademilson 18 (2ºT)']	[]	0	Flamengo - RJ	262	Alicio Pena Junior	\N
334	34	2013	Quarta 13 de Novembro de 2013	21:50	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Dinei 5 (2ºT)']	['Willian 36 (1ºT) ', 'Julio Baptista 25 (2ºT) ', 'Ricardo Goulart 35 (2ºT)']	3	Cruzeiro - MG	283	Paulo H Godoy Bezerra	CBF-1
335	34	2013	Quarta 13 de Novembro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Rhodolfo 6 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Francisco Carlos do Nascimento	FIFA
336	34	2013	Quarta 13 de Novembro de 2013	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Eduardo Sasha 24 (1ºT)', ' Ramon 26 (1ºT)']	[]	0	Ponte Preta - SP	303	Claudio Mercante Júnior	ESP-2
337	34	2013	Quarta 13 de Novembro de 2013	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	2	[' Fabio 6 (1ºT)', ' Wellington Paulista 28 (1ºT)']	['Paulo Baier 15 (2ºT)']	1	Atlético Paranaense - PR	293	Francisco de Assis Almeida Filho	ESP-2
338	34	2013	Quinta 14 de Novembro de 2013	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Fernandinho 37 (1ºT)', ' Alecsandro 21 (2ºT)']	['Dalessandro 20 (2ºT)']	1	Internacional - RS	285	Marcelo de Lima Henrique	FIFA
339	34	2013	Quarta 13 de Novembro de 2013	21:50	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Guilherme 19 (2ºT)']	1	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
340	34	2013	Quinta 14 de Novembro de 2013	19:30	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Montillo 36 (1ºT)', ' Cicero 20 (2ºT)', ' Cicero 25 (2ºT)']	[]	0	Bahia - BA	265	Felipe Gomes da Silva	ASP-FIFA
341	35	2013	Sábado 16 de Novembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	4	[' Elias 27 (1ºT)', ' Seedorf 36 (1ºT)', ' Bruno Mendes 33 (2ºT)', ' Bruno Mendes 36 (2ºT)']	[]	0	Atlético Paranaense - PR	293	Wilson Luiz Seneme	FIFA
342	35	2013	Domingo 17 de Novembro de 2013	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Jean 24 (1ºT)', ' Gum 44 (2ºT)']	['Welliton 17 (1ºT)']	1	São Paulo - SP	276	Márcio Chagas da Silva	ESP-2
343	35	2013	Domingo 17 de Novembro de 2013	17:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
344	35	2013	Domingo 17 de Novembro de 2013	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Dinei 20 (1ºT)', ' Max 39 (2ºT)']	[]	0	Santos - SP	277	Sandro Meira Ricci	FIFA
345	35	2013	Domingo 17 de Novembro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Maxi Rodriguez 15 (2ºT)', ' Maxi Rodriguez 42 (2ºT)']	['Joao Paulo 40 (2ºT)']	1	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
346	35	2013	Domingo 17 de Novembro de 2013	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Walter 25 (1ºT)', ' Hugo 27 (2ºT)', ' Ronei 37 (2ºT)']	['Otavio 19 (1ºT)']	1	Internacional - RS	285	Wagner Reway	ASP-FIFA
347	35	2013	Domingo 17 de Novembro de 2013	19:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	0	[]	['Fernandao 37 (2ºT)']	1	Bahia - BA	265	Elmo Alves Resende Cunha	ESP-2
348	35	2013	Domingo 17 de Novembro de 2013	17:00	João Havelange - Uberlandia - MG	283	Cruzeiro - MG	2	[' Souza 30 (2ºT)', ' Vinicius Araujo 38 (2ºT)']	['Leonardo 4 (1ºT) ', 'Leonardo 45+1 (2ºT)']	2	Ponte Preta - SP	303	Claudio Francisco Lima E Silva	ESP-2
349	35	2013	Sábado 16 de Novembro de 2013	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Junior Urso 24 (2ºT)']	['Wellington Paulista 28 (1ºT) ', 'Lins 25 (2ºT)']	2	Criciuma - SC	288	Cleisson Veloso Pereira	CBF-1
350	35	2013	Domingo 17 de Novembro de 2013	19:30	Canindé - Sao Paulo - SP	278	Portuguesa - SP	2	[' Bruno 45 (1ºT)', ' Henrique Dourado 19 (2ºT)']	[]	0	Atlético - MG	282	Jean Pierre Goncalves Lima	CBF-1
351	36	2013	Sábado 23 de Novembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Thalles 2 (1ºT)', ' Edmilson dos Santos Silva 32 (1ºT)']	['Paulão 19 (2ºT)']	1	Cruzeiro - MG	283	Marcos Andre Gomes da Penha	CBF-1
352	36	2013	Domingo 24 de Novembro de 2013	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Paulinho 18 (1ºT)']	[]	0	Corinthians - SP	264	Fabricio Neves Correa	CBF-1
353	36	2013	Domingo 24 de Novembro de 2013	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Aloisio 3 (1ºT)']	['Elias 28 (1ºT)']	1	Botafogo - RJ	296	Paulo H Godoy Bezerra	CBF-1
354	36	2013	Domingo 24 de Novembro de 2013	19:30	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Fernandao 44 (1ºT)']	[]	0	Portuguesa - SP	278	Ricardo Marques Ribeiro	FIFA
355	36	2013	Domingo 24 de Novembro de 2013	19:30	Centenário - Caxias do Sul - RS	285	Internacional - RS	0	[]	[]	0	Coritiba - PR	294	Emerson de Almeida Ferreira	CBF-1
356	36	2013	Domingo 24 de Novembro de 2013	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Adailton 15 (1ºT)']	['Vargas 9 (2ºT)']	1	Grêmio - RS	284	Dewson Fernando Freitas da Silva	ASP-FIFA
357	36	2013	Sábado 23 de Novembro de 2013	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Wellington Paulista 13 (1ºT)']	['Dinei 8 (2ºT)']	1	Vitória - BA	287	Wilson Luiz Seneme	FIFA
358	36	2013	Sábado 23 de Novembro de 2013	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Fernandinho 23 (1ºT)', ' Diego Tardelli 33 (1ºT)', ' Diego Tardelli 21 (2ºT)', ' Diego Tardelli 27 (2ºT)']	['Amaral 43 (1ºT)']	1	Goiás - GO	290	Luiz Flavio de Oliveira	ASP-FIFA
359	36	2013	Domingo 24 de Novembro de 2013	17:00	Arena Joinville - Joinville - SC	293	Atlético Paranaense - PR	6	[' Zezinho 26 (1ºT)', ' Paulo Baier 27 (1ºT)', ' Felipe 7 (2ºT)', ' Ederson 15 (2ºT)', ' Felipe 17 (2ºT)', ' Cleberson 26 (2ºT)']	['Tiago Real 1 (2ºT)']	1	Náutico - PE	343	Arilson Bispo da Anunciacao	ESP-2
360	36	2013	Domingo 24 de Novembro de 2013	17:00	Paulo Constantino - Presidente Prudente - SP	277	Santos - SP	1	[' Thiago Ribeiro 20 (2ºT)']	[]	0	Fluminense - RJ	266	Francisco Carlos do Nascimento	FIFA
361	37	2013	Domingo 01 de Dezembro de 2013	17:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Edmilson dos Santos Silva 5 (1ºT)', ' Bernardo 41 (2ºT)']	[]	0	Náutico - PE	343	Anderson Daronco	CBF-1
362	37	2013	Sábado 30 de Novembro de 2013	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Gum 36 (1ºT)', ' Diego 8 (2ºT)']	['Diego Tardelli 21 (1ºT) ', 'Alecsandro 37 (2ºT)']	2	Atlético - MG	282	Marcos Andre Gomes da Penha	CBF-1
363	37	2013	Sábado 30 de Novembro de 2013	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Internacional - RS	285	Felipe Gomes da Silva	ASP-FIFA
364	37	2013	Domingo 01 de Dezembro de 2013	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	4	[' Dinei 43 (1ºT)', ' Max 2 (2ºT)', ' Dinei 16 (2ºT)', ' Marquinhos 34 (2ºT)']	['Wallace Reis 45 (1ºT) ', 'Hernane 14 (2ºT)']	2	Flamengo - RJ	262	Paulo Cesar de Oliveira	FIFA
365	37	2013	Domingo 01 de Dezembro de 2013	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 16 (1ºT)']	[]	0	Goiás - GO	290	Heber Roberto Lopes	FIFA
366	37	2013	Domingo 01 de Dezembro de 2013	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Henrique Dourado 15 (1ºT) ', 'Wanderson 20 (2ºT)']	2	Portuguesa - SP	278	Márcio Chagas da Silva	ESP-2
367	37	2013	Domingo 01 de Dezembro de 2013	17:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Wellington Paulista 1 (1ºT)']	[]	0	São Paulo - SP	276	Francisco Carlos do Nascimento	FIFA
102	11	2014	Domingo 20 de Julho de 2014	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[' Conca 16 (2ºT)']	[]	0	Santos - SP	277	Leandro Pedro Vuaden	FIFA
368	37	2013	Domingo 01 de Dezembro de 2013	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Vinicius Araujo 40 (2ºT)']	['Marquinhos Gabriel 15 (1ºT) ', 'Talisca 45 (2ºT)']	2	Bahia - BA	265	Andre Luiz de Freitas Castro	ESP-2
369	37	2013	Domingo 01 de Dezembro de 2013	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Deivid 38 (1ºT)', ' Alex 23 (2ºT)']	['Bruno Mendes 39 (2ºT)']	1	Botafogo - RJ	296	Ricardo Marques Ribeiro	FIFA
370	37	2013	Domingo 01 de Dezembro de 2013	19:30	Benedito Teixeira - Sao Jose do Rio Preto - SP	277	Santos - SP	2	[' Cicero 33 (1ºT)', ' Cicero 32 (2ºT)']	['Marcelo Cirino 28 (1ºT)']	1	Atlético Paranaense - PR	293	Wagner Reway	ASP-FIFA
371	38	2013	Domingo 08 de Dezembro de 2013	17:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Lodeiro 9 (1ºT)', ' Elias 23 (2ºT)', ' Seedorf 42 (2ºT)']	[]	0	Criciuma - SC	288	Paulo Cesar de Oliveira	FIFA
372	38	2013	Sábado 07 de Dezembro de 2013	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Hernane 13 (1ºT)']	['Souza 19 (2ºT)']	1	Cruzeiro - MG	283	Paulo H Godoy Bezerra	CBF-1
373	38	2013	Domingo 08 de Dezembro de 2013	17:00	Novelli Junior - Itu - SP	276	São Paulo - SP	0	[]	['Luccas Claro 29 (1ºT)']	1	Coritiba - PR	294	Pablo dos Santos Alves	ESP-2
374	38	2013	Domingo 08 de Dezembro de 2013	17:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Wiliam Barbio 41 (1ºT)']	['Wagner 10 (2ºT) ', 'Samuel 37 (2ºT)']	2	Fluminense - RJ	266	Leandro Pedro Vuaden	FIFA
375	38	2013	Domingo 08 de Dezembro de 2013	17:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	0	[]	[]	0	Ponte Preta - SP	303	Alicio Pena Junior	\N
376	38	2013	Domingo 08 de Dezembro de 2013	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Cicero 5 (1ºT) ', 'Montillo 44 (1ºT) ', 'Montillo 32 (2ºT)']	3	Santos - SP	277	Jean Pierre Goncalves Lima	CBF-1
377	38	2013	Sábado 07 de Dezembro de 2013	19:30	Arena Pernambuco - Sao Lourenco da Mata - PE	343	Náutico - PE	1	[' Derley 6 (2ºT)']	[]	0	Corinthians - SP	264	Elmo Alves Resende Cunha	ESP-2
378	38	2013	Domingo 08 de Dezembro de 2013	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Ronaldinho Gaucho 45 (1ºT)', ' Ronaldinho Gaucho 44 (2ºT)']	['Marquinhos 3 (1ºT) ', 'Max 5 (1ºT)']	2	Vitória - BA	287	Heber Roberto Lopes	FIFA
379	38	2013	Domingo 08 de Dezembro de 2013	17:00	Arena Joinville - Joinville - SC	293	Atlético Paranaense - PR	5	[' Paulo Baier 4 (1ºT)', ' Ederson 44 (1ºT)', ' Marcelo Cirino 18 (2ºT)', ' Ederson 36 (2ºT)', ' Ederson 40 (2ºT)']	['Edmilson dos Santos Silva 40 (1ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
380	38	2013	Domingo 08 de Dezembro de 2013	17:00	Canindé - Sao Paulo - SP	278	Portuguesa - SP	0	[]	[]	0	Grêmio - RS	284	Emerson de Almeida Ferreira	CBF-1
1	1	2014	Domingo 20 de Abril de 2014	18:30	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	0	[]	[]	0	Goiás - GO	290	Anderson Daronco	ASP-FIFA
2	1	2014	Sábado 19 de Abril de 2014	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Rafael Sobis 31 (1ºT)', ' Fred 44 (1ºT)', ' Nirley 14 (2ºT)']	[]	0	Figueirense - SC	316	Ricardo Marques Ribeiro	FIFA
3	1	2014	Domingo 20 de Abril de 2014	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Antonio Carlos 12 (1ºT)', ' Douglas 21 (1ºT)', ' Luis Fabiano 10 (2ºT)']	[]	0	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
4	1	2014	Domingo 20 de Abril de 2014	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Gabriel Barbosa 34 (2ºT)']	['Neto Baiano 24 (2ºT)']	1	Sport - PE	292	Arilson Bispo da Anunciacao	ESP-2
5	1	2014	Domingo 20 de Abril de 2014	16:00	Orlando Scarpelli - Florianopolis - SC	293	Atletico - PR	1	[' Drausio 15 (1ºT)']	[]	0	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
6	1	2014	Domingo 20 de Abril de 2014	16:00	João Havelange - Uberlandia - MG	282	Atlético - MG	0	[]	[]	0	Corinthians - SP	264	Heber Roberto Lopes	FIFA
7	1	2014	Domingo 20 de Abril de 2014	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Talisca 35 (2ºT)']	['Nilton 16 (2ºT) ', 'Marcelo Moreno 44 (2ºT)']	2	Cruzeiro - MG	283	Luiz Flavio de Oliveira	ASP-FIFA
8	1	2014	Sábado 19 de Abril de 2014	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Aranguiz 5 (1ºT)']	[]	0	Vitória - BA	287	Raphael Claus	ASP-FIFA
9	1	2014	Domingo 20 de Abril de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Paulo Baier 13 (1ºT)']	['Weverson 38 (2ºT) ', 'Alan Kardec 43 (2ºT)']	2	Palmeiras - SP	275	Andre Luiz de Freitas Castro	ESP-2
10	1	2014	Sábado 19 de Abril de 2014	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Coritiba - PR	294	Rodrigo Nunes de Sa	CBF-1
11	2	2014	Domingo 27 de Abril de 2014	16:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Emerson Sheik 19 (2ºT)', ' Pablo Daniel 29 (2ºT)']	['Rafael Moura 8 (1ºT) ', 'Rafael Moura 35 (1ºT)']	2	Internacional - RS	285	Jailson Macedo Freitas	ESP-2
12	2	2014	Domingo 27 de Abril de 2014	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Rithely 11 (1ºT)', ' Ananias 38 (1ºT)']	['Ricardo Conceicao 36 (1ºT)']	1	Chapecoense - SC	315	Francisco de Assis Almeida Filho	ESP-2
13	2	2014	Domingo 27 de Abril de 2014	16:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	2	[' Guilherme 9 (1ºT)', ' Gil 34 (2ºT)']	[]	0	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
14	2	2014	Sábado 26 de Abril de 2014	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Rafael Sobis 44 (1ºT)']	1	Fluminense - RJ	266	Dewson Fernando Freitas da Silva	ASP-FIFA
15	2	2014	Sábado 26 de Abril de 2014	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Santos - SP	277	Emerson de Almeida Ferreira	CBF-1
103	11	2014	Sábado 19 de Julho de 2014	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Ricardo Conceicao 12 (2ºT)']	1	Chapecoense - SC	315	Felipe Gomes da Silva	ASP-FIFA
16	2	2014	Domingo 27 de Abril de 2014	16:00	João Havelange - Uberlandia - MG	283	Cruzeiro - MG	1	[' Julio Baptista 5 (2ºT)']	['Antonio Carlos 45+1 (2ºT)']	1	São Paulo - SP	276	Wagner do Nascimento Magalhaes	ASP-FIFA
17	2	2014	Domingo 27 de Abril de 2014	16:00	Pituaçu - Salvador - BA	287	Vitória - BA	2	[' Dinei 12 (1ºT)', ' Welison 36 (1ºT)']	['Mosquito 33 (2ºT) ', 'Marcelo Cirino 37 (2ºT)']	2	Atletico - PR	293	Francisco Carlos do Nascimento	FIFA
18	2	2014	Domingo 27 de Abril de 2014	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Alan Ruiz 11 (1ºT)', ' Lucas 22 (1ºT)']	['Fernandinho 39 (2ºT)']	1	Atlético - MG	282	Wagner Reway	ASP-FIFA
19	2	2014	Domingo 27 de Abril de 2014	18:30	Arena Barueri - Barueri - SP	316	Figueirense - SC	0	[]	['Lincoln 7 (1ºT) ', 'Leandro 30 (2ºT)']	2	Bahia - BA	265	Sandro Meira Ricci	FIFA
20	2	2014	Domingo 27 de Abril de 2014	18:30	Juscelino Kubitschek - Itumbiara - GO	290	Goiás - GO	1	[' Amaral 36 (2ºT)']	[]	0	Criciuma - SC	288	Renan Roberto de Souza	CBF-1
21	3	2014	Domingo 04 de Maio de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Paulinho 13 (1ºT)', ' Marcio Araujo 4 (2ºT)', ' Alecsandro 15 (2ºT)', ' Alecsandro 27 (2ºT)']	['Wesley 10 (1ºT) ', 'Henrique Dourado 30 (1ºT)']	2	Palmeiras - SP	275	Paulo H Godoy Bezerra	ESP-2
22	3	2014	Sábado 03 de Maio de 2014	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Wagner 43 (2ºT)']	['Marquinhos 8 (2ºT) ', 'Marquinhos 38 (2ºT)']	2	Vitória - BA	287	Marcos Andre Gomes da Penha	CBF-1
23	3	2014	Sábado 03 de Maio de 2014	18:30	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Alexandre Pato 22 (1ºT)', ' Ademilson 27 (2ºT)']	['Robinho 30 (1ºT) ', 'Chico 16 (2ºT)']	2	Coritiba - PR	294	Claudio Francisco Lima E Silva	ESP-2
24	3	2014	Sábado 03 de Maio de 2014	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
25	3	2014	Sábado 03 de Maio de 2014	18:30	Mané Garrincha - Brasilia - DF	293	Atletico - PR	2	[' Ederson 23 (1ºT)', ' Marcelo Cirino 40 (1ºT)']	['Nilton 35 (1ºT) ', 'Souza 29 (2ºT) ', 'Marcelo Moreno 38 (2ºT)']	3	Cruzeiro - MG	283	Elmo Alves Resende Cunha	ESP-2
26	3	2014	Domingo 04 de Maio de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['David França 23 (2ºT)']	1	Goiás - GO	290	Marcelo de Lima Henrique	FIFA
27	3	2014	Domingo 04 de Maio de 2014	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Max 14 (2ºT)']	[]	0	Botafogo - RJ	296	Raphael Claus	ASP-FIFA
28	3	2014	Domingo 04 de Maio de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Dalessandro 13 (1ºT)', ' Aranguiz 45+1 (1ºT)']	['Patric 32 (2ºT)']	1	Sport - PE	292	Pablo dos Santos Alves	ESP-2
29	3	2014	Domingo 04 de Maio de 2014	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Silvinho 14 (1ºT)']	[]	0	Figueirense - SC	316	Braulio da Silva Machado	CBF-1
30	3	2014	Domingo 04 de Maio de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Guerrero 32 (2ºT)']	1	Corinthians - SP	264	Wagner Reway	ASP-FIFA
31	4	2014	Sábado 10 de Maio de 2014	21:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	6	[' Emerson Sheik 23 (1ºT)', ' Emerson Sheik 6 (2ºT)', ' Daniel 9 (2ºT)', ' Daniel 11 (2ºT)', ' Daniel 27 (2ºT)', ' Wallyson 35 (2ºT)']	[]	0	Criciuma - SC	288	Claudio Francisco Lima E Silva	ESP-2
32	4	2014	Domingo 11 de Maio de 2014	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Fred 11 (1ºT)', ' Chiquinho 42 (2ºT)']	[]	0	Flamengo - RJ	262	Wagner do Nascimento Magalhaes	ASP-FIFA
33	4	2014	Domingo 11 de Maio de 2014	16:00	Arena Barueri - Barueri - SP	276	São Paulo - SP	1	[' Luis Fabiano 35 (2ºT)']	['Fagner 3 (2ºT)']	1	Corinthians - SP	264	Raphael Claus	ASP-FIFA
34	4	2014	Sábado 10 de Maio de 2014	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Lucio 15 (1ºT)', ' Henrique Dourado 31 (1ºT)']	[]	0	Goiás - GO	290	Felipe Gomes da Silva	ASP-FIFA
35	4	2014	Domingo 11 de Maio de 2014	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Rithely 41 (2ºT)']	1	Sport - PE	292	Jean Pierre Goncalves Lima	ASP-FIFA
36	4	2014	Domingo 11 de Maio de 2014	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Marion 9 (2ºT)', ' Andre Felipe 26 (2ºT)']	['Marcelo Moreno 37 (1ºT)']	1	Cruzeiro - MG	283	Heber Roberto Lopes	FIFA
37	4	2014	Domingo 11 de Maio de 2014	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Para 45 (2ºT)']	['Souza 38 (1ºT)']	1	Vitória - BA	287	Wilton Pereira Sampaio	FIFA
38	4	2014	Sábado 10 de Maio de 2014	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Dalessandro 9 (2ºT)', ' Alan Patrick 22 (2ºT)']	['Marcos Guilherme 6 (2ºT)']	1	Atletico - PR	293	Sandro Meira Ricci	FIFA
39	4	2014	Domingo 11 de Maio de 2014	18:30	Do Café - Londrina - PR	316	Figueirense - SC	0	[]	['Gabriel Barbosa 44 (1ºT) ', 'Arouca 16 (2ºT)']	2	Santos - SP	277	Francisco Carlos do Nascimento	FIFA
40	4	2014	Domingo 11 de Maio de 2014	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tiago Luis 45+1 (2ºT)']	['Barcos 30 (1ºT) ', 'Barcos 19 (2ºT)']	2	Grêmio - RS	284	Dewson Fernando Freitas da Silva	ASP-FIFA
41	5	2014	Domingo 18 de Maio de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['PH GANSO 23 (1ºT) ', 'PH GANSO 45+1 (2ºT)']	2	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
42	5	2014	Quarta 04 de Junho de 2014	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Mike 27 (2ºT)']	[]	0	Bahia - BA	265	Marcelo Aparecido R de Souza	CBF-1
43	5	2014	Domingo 18 de Maio de 2014	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Giovanni Augusto 2 (2ºT)']	1	Figueirense - SC	316	Jailson Macedo Freitas	ESP-2
35	4	2015	Domingo 31 de Maio de 2015	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	São Paulo - SP	276	Leandro Pedro Vuaden	FIFA
44	5	2014	Domingo 18 de Maio de 2014	18:30	Arena Pantanal - Cuiaba - MT	277	Santos - SP	1	[' Cicero 37 (1ºT)']	['Andre Felipe 29 (2ºT) ', 'Andre Felipe 36 (2ºT)']	2	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
45	5	2014	Domingo 18 de Maio de 2014	16:00	Willie Davids - Maringa - PR	293	Atletico - PR	1	[' Cleberson 25 (2ºT)']	['Tiago Luis 43 (2ºT)']	1	Chapecoense - SC	315	Grazianni Maciel Rocha	CBF-1
46	5	2014	Sábado 17 de Maio de 2014	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Ricardo Goulart 10 (1ºT)', ' Ricardo Goulart 45 (1ºT)', ' Borges 23 (2ºT)']	['Alex 20 (1ºT) ', 'Norberto 10 (2ºT)']	2	Coritiba - PR	294	Andre Luiz de Freitas Castro	ESP-2
47	5	2014	Domingo 18 de Maio de 2014	18:30	Pituaçu - Salvador - BA	287	Vitória - BA	0	[]	['Marquinhos Gabriel 4 (2ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
48	5	2014	Domingo 18 de Maio de 2014	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Rodriguinho 36 (1ºT)']	[]	0	Fluminense - RJ	266	Sandro Meira Ricci	FIFA
49	5	2014	Domingo 18 de Maio de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	[]	0	Internacional - RS	285	Raphael Claus	ASP-FIFA
50	5	2014	Quarta 14 de Maio de 2014	22:00	Mário Helênio - Juiz de Fora - MG	290	Goiás - GO	2	[' Ramon 8 (2ºT)', ' Danilo 24 (2ºT)']	[]	0	Botafogo - RJ	296	Ricardo Marques Ribeiro	FIFA
51	6	2014	Quarta 21 de Maio de 2014	19:30	Cláudio Moacyr - Macae - RJ	262	Flamengo - RJ	1	[' Paulinho 10 (1ºT)']	['Talisca 45+1 (2ºT)']	1	Bahia - BA	265	Gilberto Rodrigues Castro Junior	CBF-1
52	6	2014	Quarta 21 de Maio de 2014	22:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	5	[' Walter 41 (1ºT)', ' Lucas 7 (2ºT)', ' Walter 20 (2ºT)', ' Wagner 27 (2ºT)', ' Rafael Sobis 30 (2ºT)']	['Rogerio 26 (1ºT) ', 'Alexandre Pato 44 (1ºT)']	2	São Paulo - SP	276	Paulo H Godoy Bezerra	ESP-2
53	6	2014	Quarta 21 de Maio de 2014	22:00	Canindé - Sao Paulo - SP	264	Corinthians - SP	1	[' Jadson 14 (2ºT)']	['Douglas 40 (2ºT)']	1	Atletico - PR	293	Marcelo de Lima Henrique	FIFA
54	6	2014	Quinta 22 de Maio de 2014	19:30	Fonte Luminosa - Araraquara - SP	275	Palmeiras - SP	1	[' Henrique Dourado 36 (1ºT)']	[]	0	Figueirense - SC	316	Paulo H Schleich Vollkopf	CBF-1
55	6	2014	Quarta 21 de Maio de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Alex 30 (2ºT)']	['Wellington Paulista 21 (1ºT)']	1	Internacional - RS	285	Elmo Alves Resende Cunha	ESP-2
56	6	2014	Quarta 21 de Maio de 2014	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ricardo Goulart 5 (2ºT)', ' Marcelo Moreno 32 (2ºT)']	[]	0	Sport - PE	292	Felipe Gomes da Silva	ASP-FIFA
57	6	2014	Quinta 22 de Maio de 2014	21:00	Jóia da Princesa - Feira de Santana - BA	287	Vitória - BA	2	[' Dinei 19 (2ºT)', ' Willie 45 (2ºT)']	['Datolo 11 (1ºT) ', 'Alemao 16 (1ºT) ', 'Rever 17 (2ºT)']	3	Atlético - MG	282	Vinicius Furlan	CBF-1
58	6	2014	Quarta 21 de Maio de 2014	22:00	Alfredo Jaconi - Caxias do Sul - RS	284	Grêmio - RS	2	[' Rodriguinho 43 (1ºT)', ' Maxi Rodriguez 36 (2ºT)']	['Pablo Daniel 5 (1ºT)']	1	Botafogo - RJ	296	Flavio Rodrigues de Souza	CBF-2
59	6	2014	Quarta 21 de Maio de 2014	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Silvinho 22 (1ºT)']	[]	0	Chapecoense - SC	315	Heber Roberto Lopes	FIFA
60	6	2014	Quinta 22 de Maio de 2014	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Alex Alves 25 (1ºT)', ' Erik 23 (2ºT)']	['Geuvanio 8 (1ºT) ', 'Cicero 38 (1ºT)']	2	Santos - SP	277	Igor Junio Benevenuto	CBF-1
61	7	2014	Domingo 25 de Maio de 2014	18:30	Cláudio Moacyr - Macae - RJ	296	Botafogo - RJ	1	[' Emerson Sheik 42 (1ºT)']	['Dinei 23 (2ºT)']	1	Vitória - BA	287	Dewson Fernando Freitas da Silva	ASP-FIFA
62	7	2014	Domingo 25 de Maio de 2014	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Augusto Cesar 27 (1ºT)']	['Romarinho 20 (1ºT) ', 'Jadson 38 (1ºT) ', 'Jadson 9 (2ºT) ', 'Romarinho 23 (2ºT)']	4	Corinthians - SP	264	Pericles Bassols Pegado Cortez	FIFA
63	7	2014	Sábado 24 de Maio de 2014	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Lucas 15 (2ºT)']	[]	0	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
64	7	2014	Domingo 25 de Maio de 2014	16:00	Morumbi - Sao Paulo - SP	277	Santos - SP	0	[]	[]	0	Flamengo - RJ	262	Jailson Macedo Freitas	ESP-2
65	7	2014	Domingo 25 de Maio de 2014	16:00	Willie Davids - Maringa - PR	293	Atletico - PR	2	[' Marcos Guilherme 11 (2ºT)', ' Luccas Claro 13 (2ºT)']	[]	0	Coritiba - PR	294	Edivaldo Elias da Silva	CBF-1
66	7	2014	Domingo 25 de Maio de 2014	18:30	João Lamego - Ipatinga - MG	282	Atlético - MG	0	[]	[]	0	Criciuma - SC	288	Wagner do Nascimento Magalhaes	ASP-FIFA
67	7	2014	Sábado 24 de Maio de 2014	18:30	Arena Barueri - Barueri - SP	265	Bahia - BA	0	[]	['Robert 3 (1ºT)']	1	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
68	7	2014	Domingo 25 de Maio de 2014	18:30	Centenário - Caxias do Sul - RS	285	Internacional - RS	1	[' Wellington 38 (1ºT)']	['Ricardo Goulart 42 (1ºT) ', 'Willian 25 (2ºT) ', 'Marcelo Moreno 43 (2ºT)']	3	Cruzeiro - MG	283	Paulo H Godoy Bezerra	ESP-2
69	7	2014	Domingo 25 de Maio de 2014	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Jackson 4 (1ºT)']	1	Goiás - GO	290	Nielson Nogueira Dias	ESP-2
70	7	2014	Domingo 25 de Maio de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Tiago Luis 41 (1ºT)', ' Dede 1 (2ºT)']	[]	0	Palmeiras - SP	275	Emerson de Almeida Ferreira	CBF-1
71	8	2014	Quinta 29 de Maio de 2014	19:30	Morumbi - Sao Paulo - SP	262	Flamengo - RJ	1	[' Alecsandro 20 (1ºT)']	['Everaldo 21 (1ºT)']	1	Figueirense - SC	316	Thiago Duarte Peixoto	CBF-1
72	8	2014	Quarta 28 de Maio de 2014	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
73	8	2014	Quarta 28 de Maio de 2014	22:00	Canindé - Sao Paulo - SP	264	Corinthians - SP	1	[' Guerrero 23 (2ºT)']	[]	0	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	ASP-FIFA
74	8	2014	Quarta 28 de Maio de 2014	19:30	Paulo Constantino - Presidente Prudente - SP	275	Palmeiras - SP	0	[]	['Bolatti 16 (2ºT) ', 'Pablo Daniel 45+4 (2ºT)']	2	Botafogo - RJ	296	Heber Roberto Lopes	FIFA
75	8	2014	Quarta 28 de Maio de 2014	22:00	João Havelange - Uberlandia - MG	293	Atletico - PR	2	[' Bady 29 (1ºT)', ' Cleo 45 (2ºT)']	['Rogerio 30 (2ºT) ', 'Luis Fabiano 45+2 (2ºT)']	2	São Paulo - SP	276	Anderson Daronco	ASP-FIFA
76	8	2014	Quarta 28 de Maio de 2014	22:00	João Lamego - Ipatinga - MG	282	Atlético - MG	2	[' Datolo 7 (2ºT)', ' Diego Tardelli 20 (2ºT)']	[]	0	Fluminense - RJ	266	Raphael Claus	ASP-FIFA
77	8	2014	Quinta 29 de Maio de 2014	21:00	Jóia da Princesa - Feira de Santana - BA	265	Bahia - BA	0	[]	['Alan Santos 16 (2ºT) ', 'Lucas Lima 43 (2ºT)']	2	Santos - SP	277	Wagner Reway	ASP-FIFA
78	8	2014	Quarta 28 de Maio de 2014	21:00	Centenário - Caxias do Sul - RS	285	Internacional - RS	2	[' Wellington Paulista 24 (1ºT)', ' Wellington Paulista 33 (2ºT)']	[]	0	Chapecoense - SC	315	Felipe Gomes da Silva	ASP-FIFA
79	8	2014	Quarta 28 de Maio de 2014	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Fabio 12 (2ºT)']	[]	0	Coritiba - PR	294	Marcelo Aparecido R de Souza	CBF-1
80	8	2014	Quarta 28 de Maio de 2014	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Vitória - BA	287	Jean Pierre Goncalves Lima	ASP-FIFA
81	9	2014	Sábado 11 de Outubro de 2014	18:30	Arena da Amazônia - Manaus - AM	296	Botafogo - RJ	1	[' Wallyson 28 (1ºT)']	[]	0	Corinthians - SP	264	Andre Luiz de Freitas Castro	ESP-2
82	9	2014	Domingo 01 de Junho de 2014	18:30	Cláudio Moacyr - Macae - RJ	266	Fluminense - RJ	1	[' Jean 31 (1ºT)']	['Jorge Henrique 22 (1ºT)']	1	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
83	9	2014	Sábado 31 de Maio de 2014	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 10 (1ºT)', ' Pabon 44 (2ºT)']	['Josue 33 (2ºT)']	1	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
84	9	2014	Domingo 01 de Junho de 2014	18:30	1º de Maio - Sao Bernardo do Campo - SP	277	Santos - SP	2	[' Gabriel Barbosa 11 (1ºT)', ' Diego 18 (1ºT)']	[]	0	Criciuma - SC	288	Paulo H Schleich Vollkopf	CBF-1
85	9	2014	Sábado 31 de Maio de 2014	18:30	Durival Britto - Curitiba - PR	294	Coritiba - PR	3	[' Alex 4 (1ºT)', ' Keirrison 14 (1ºT)', ' Dener 44 (1ºT)']	[]	0	Goiás - GO	290	Pablo dos Santos Alves	ESP-2
86	9	2014	Domingo 01 de Junho de 2014	16:00	João Havelange - Uberlandia - MG	283	Cruzeiro - MG	3	[' Ricardo Goulart 15 (1ºT)', ' Everton Ribeiro 17 (1ºT)', ' Borges 45+1 (1ºT)']	[]	0	Flamengo - RJ	262	Luiz Flavio de Oliveira	ASP-FIFA
87	9	2014	Sábado 31 de Maio de 2014	21:00	Jóia da Princesa - Feira de Santana - BA	287	Vitória - BA	0	[]	['Neto Baiano 3 (2ºT)']	1	Sport - PE	292	Paulo H Godoy Bezerra	ESP-2
88	9	2014	Domingo 01 de Junho de 2014	16:00	Alfredo Jaconi - Caxias do Sul - RS	284	Grêmio - RS	0	[]	[]	0	Palmeiras - SP	275	Jailson Macedo Freitas	ESP-2
89	9	2014	Domingo 01 de Junho de 2014	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Everaldo 28 (2ºT)']	['Douglas 45+1 (1ºT) ', 'Douglas 7 (2ºT) ', 'Douglas 45+2 (2ºT)']	3	Atletico - PR	293	Raphael Claus	ASP-FIFA
90	9	2014	Domingo 01 de Junho de 2014	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Abuda 9 (2ºT)', ' Alemao 26 (2ºT)']	['Demerson 40 (2ºT)']	1	Bahia - BA	265	Igor Junio Benevenuto	CBF-1
91	10	2014	Quarta 16 de Julho de 2014	22:00	Cláudio Moacyr - Macae - RJ	262	Flamengo - RJ	1	[' Samir 36 (1ºT)']	['Douglas 20 (1ºT) ', 'Cleberson 15 (2ºT)']	2	Atletico - PR	293	Paulo H Godoy Bezerra	ESP-2
92	10	2014	Quarta 16 de Julho de 2014	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Neto Baiano 43 (1ºT)']	[]	0	Botafogo - RJ	296	Francisco Carlos do Nascimento	FIFA
93	10	2014	Quinta 17 de Julho de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Guerrero 6 (1ºT)', ' Fagner 9 (1ºT)']	['Claudio Winck 45 (2ºT)']	1	Internacional - RS	285	Wagner Reway	ASP-FIFA
94	10	2014	Quinta 17 de Julho de 2014	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Bruno Uvini Bortolanca 23 (1ºT)', ' Alison 23 (2ºT)']	[]	0	Palmeiras - SP	275	Raphael Claus	ASP-FIFA
95	10	2014	Quarta 16 de Julho de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Thiago Heleno 5 (1ºT) ', 'Everaldo 23 (2ºT)']	2	Figueirense - SC	316	Charles Hebert Cavalcante Ferreira	CBF-1
96	10	2014	Quinta 17 de Julho de 2014	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Alemao 16 (2ºT)', ' Ricardo Goulart 26 (2ºT)', ' Everton Ribeiro 30 (2ºT)']	['Ayrton 45+2 (2ºT)']	1	Vitória - BA	287	Pericles Bassols Pegado Cortez	FIFA
97	10	2014	Quarta 16 de Julho de 2014	22:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Rogerio 13 (1ºT) ', 'Alan Kardec 20 (1ºT)']	2	São Paulo - SP	276	Dewson Fernando Freitas da Silva	ASP-FIFA
98	10	2014	Quarta 16 de Julho de 2014	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Goiás - GO	290	Luiz Flavio de Oliveira	ASP-FIFA
99	10	2014	Quarta 16 de Julho de 2014	22:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Paulo Baier 40 (1ºT)', ' Paulo Baier 13 (2ºT)', ' Serginho 22 (2ºT)']	['Conca 38 (2ºT) ', 'Matheus Carvalho 40 (2ºT)']	2	Fluminense - RJ	266	Rodrigo Batista Raposo	CBF-1
100	10	2014	Quarta 06 de Agosto de 2014	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Jailton 41 (1ºT)']	['Leo Silva 45+3 (2ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
101	11	2014	Sábado 19 de Julho de 2014	21:00	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	1	[' Bolatti 11 (1ºT)']	[]	0	Coritiba - PR	294	Nielson Nogueira Dias	ESP-2
104	11	2014	Domingo 20 de Julho de 2014	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Omar Fernando Tobio 8 (2ºT)']	['Ricardo Goulart 7 (1ºT) ', 'Manoel 9 (1ºT)']	2	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
105	11	2014	Domingo 20 de Julho de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	2	[' Marcelo Cirino 7 (2ºT)', ' Douglas 13 (2ºT)']	[]	0	Criciuma - SC	288	Claudio Francisco Lima E Silva	ESP-2
106	11	2014	Sábado 19 de Julho de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Luan 20 (2ºT)']	['Christian 24 (1ºT)']	1	Bahia - BA	265	Vinicius Furlan	CBF-1
107	11	2014	Domingo 20 de Julho de 2014	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Corinthians - SP	264	Heber Roberto Lopes	FIFA
108	11	2014	Domingo 20 de Julho de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	4	[' Rafael Moura 16 (1ºT)', ' Dalessandro 45+1 (1ºT)', ' Fabricio 12 (2ºT)', ' Alex 32 (2ºT)']	[]	0	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
109	11	2014	Sábado 19 de Julho de 2014	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Giuliano 3 (1ºT)']	1	Grêmio - RS	284	Marcelo de Lima Henrique	FIFA
110	11	2014	Domingo 20 de Julho de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Sport - PE	292	Pericles Bassols Pegado Cortez	FIFA
111	12	2014	Domingo 27 de Julho de 2014	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Alecsandro 32 (1ºT)']	[]	0	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
112	12	2014	Domingo 27 de Julho de 2014	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Felipe Azevedo 6 (2ºT)', ' Durval 23 (2ºT)']	['Diego Tardelli 38 (2ºT)']	1	Atlético - MG	282	Thiago Duarte Peixoto	CBF-1
113	12	2014	Domingo 27 de Julho de 2014	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Guerrero 5 (2ºT)', ' Petros 45+1 (2ºT)']	[]	0	Palmeiras - SP	275	Sandro Meira Ricci	FIFA
114	12	2014	Sábado 26 de Julho de 2014	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Rildo 12 (1ºT)', ' Gabriel Barbosa 6 (2ºT)', ' Diego 35 (2ºT)']	[]	0	Chapecoense - SC	315	Pericles Bassols Pegado Cortez	FIFA
115	12	2014	Domingo 27 de Julho de 2014	16:00	Arena da Baixada - Curitiba - PR	293	Atletico - PR	0	[]	['Jean 17 (1ºT) ', 'Conca 34 (1ºT) ', 'Cicero 19 (2ºT)']	3	Fluminense - RJ	266	Luiz Flavio de Oliveira	ASP-FIFA
116	12	2014	Sábado 26 de Julho de 2014	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Lucas Silva 40 (1ºT)', ' Marquinhos 1 (2ºT)', ' Dedé 4 (2ºT)', ' Ricardo Goulart 26 (2ºT)', ' Dagoberto 33 (2ºT)']	[]	0	Figueirense - SC	316	Gilberto Rodrigues Castro Junior	CBF-1
117	12	2014	Sábado 26 de Julho de 2014	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Wellington Silva 20 (2ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	FIFA
118	12	2014	Domingo 27 de Julho de 2014	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Barcos 12 (2ºT)', ' Barcos 19 (2ºT)']	['Ze Eduardo 3 (2ºT) ', 'Ze Eduardo 27 (2ºT) ', 'Alex 45+4 (2ºT)']	3	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
119	12	2014	Sábado 26 de Julho de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Serginho 44 (2ºT)']	['Caio 18 (1ºT) ', 'Caio 21 (2ºT) ', 'Ayrton 38 (2ºT)']	3	Vitória - BA	287	Marcelo de Lima Henrique	FIFA
120	12	2014	Domingo 27 de Julho de 2014	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Amaral 44 (1ºT)', ' Bruno Mineiro 3 (2ºT)']	['Kaká 31 (2ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	FIFA
121	13	2014	Sábado 02 de Agosto de 2014	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Edilson 25 (1ºT)']	['Leo 14 (2ºT)']	1	Cruzeiro - MG	283	Luiz Flavio de Oliveira	ASP-FIFA
122	13	2014	Domingo 03 de Agosto de 2014	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Cicero 10 (1ºT)', ' David França 20 (1ºT)']	[]	0	Goiás - GO	290	Heber Roberto Lopes	FIFA
123	13	2014	Sábado 02 de Agosto de 2014	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Alan Kardec 28 (2ºT)']	['Rodrigo 35 (2ºT)']	1	Criciuma - SC	288	Ricardo Marques Ribeiro	FIFA
124	13	2014	Domingo 03 de Agosto de 2014	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Henrique Dourado 15 (2ºT)']	['Kieza 17 (2ºT)']	1	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
125	13	2014	Domingo 03 de Agosto de 2014	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
126	13	2014	Domingo 03 de Agosto de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Leo Silva 34 (1ºT)', ' Leo Pereira 30 (2ºT)', ' Deivid 42 (2ºT)']	['Marcos Guilherme 10 (2ºT)']	1	Atletico - PR	293	Dewson Fernando Freitas da Silva	ASP-FIFA
127	13	2014	Sábado 02 de Agosto de 2014	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Caio 13 (2ºT)', ' Caio 31 (2ºT)']	['Barcos 11 (1ºT)']	1	Grêmio - RS	284	Sandro Meira Ricci	FIFA
128	13	2014	Domingo 03 de Agosto de 2014	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Rafael Moura 11 (2ºT)']	[]	0	Santos - SP	277	Wilton Pereira Sampaio	FIFA
129	13	2014	Domingo 03 de Agosto de 2014	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Leonardo 41 (1ºT)', ' Clayton 31 (2ºT)', ' Marquinhos 38 (2ºT)']	[]	0	Sport - PE	292	Jailson Macedo Freitas	ESP-2
130	13	2014	Domingo 03 de Agosto de 2014	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Rafael Lima 7 (1ºT)']	[]	0	Flamengo - RJ	262	Raphael Claus	ASP-FIFA
131	14	2014	Domingo 10 de Agosto de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Eduardo da Silva 39 (2ºT)']	[]	0	Sport - PE	292	Emerson de Almeida Ferreira	CBF-1
132	14	2014	Sábado 09 de Agosto de 2014	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Elivelton 24 (1ºT)']	['Germano 36 (2ºT)']	1	Coritiba - PR	294	Flavio Rodrigues Guerra	CBF-1
133	14	2014	Domingo 10 de Agosto de 2014	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Alexandre Pato 16 (1ºT)', ' Alan Kardec 31 (1ºT)', ' Alexandre Pato 38 (1ºT)']	['Kadu 45+1 (1ºT)']	1	Vitória - BA	287	Andre Luiz de Freitas Castro	ESP-2
134	14	2014	Domingo 10 de Agosto de 2014	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Gil 39 (2ºT)']	1	Corinthians - SP	264	Raphael Claus	ASP-FIFA
135	14	2014	Domingo 10 de Agosto de 2014	16:00	Arena da Baixada - Curitiba - PR	293	Atletico - PR	2	[' Cleo 45 (1ºT)', ' Douglas 45+2 (2ºT)']	[]	0	Botafogo - RJ	296	Jean Pierre Goncalves Lima	ASP-FIFA
136	14	2014	Domingo 10 de Agosto de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Diego Tardelli 43 (1ºT)', ' Datolo 42 (2ºT)']	['Henrique Dourado 9 (2ºT)']	1	Palmeiras - SP	275	Wagner do Nascimento Magalhaes	ASP-FIFA
137	14	2014	Sábado 09 de Agosto de 2014	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Leandro 30 (1ºT)']	[]	0	Goiás - GO	290	Paulo H Godoy Bezerra	ESP-2
138	14	2014	Domingo 10 de Agosto de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Aranguiz 16 (2ºT)', ' Claudio Winck 39 (2ºT)']	[]	0	Grêmio - RS	284	Anderson Daronco	ASP-FIFA
139	14	2014	Sábado 09 de Agosto de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	[]	0	Cruzeiro - MG	283	Jailson Macedo Freitas	ESP-2
140	14	2014	Domingo 10 de Agosto de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Marquinhos Silva 42 (2ºT)']	1	Figueirense - SC	316	Igor Junio Benevenuto	CBF-1
141	15	2014	Domingo 17 de Agosto de 2014	18:30	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	2	[' Daniel 19 (2ºT)', ' Pablo Daniel 22 (2ºT)']	[]	0	Fluminense - RJ	266	Marcelo Aparecido R de Souza	CBF-1
142	15	2014	Domingo 17 de Agosto de 2014	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Regis 40 (1ºT)']	['Cleberson 25 (1ºT)']	1	Atletico - PR	293	Vinicius Furlan	CBF-1
143	15	2014	Sábado 16 de Agosto de 2014	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Gil 43 (1ºT)']	['Kieza 36 (1ºT)']	1	Bahia - BA	265	Anderson Daronco	ASP-FIFA
144	15	2014	Domingo 17 de Agosto de 2014	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Henrique Dourado 15 (2ºT)']	['Alexandre Pato 8 (2ºT) ', 'Alan Kardec 44 (2ºT)']	2	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
145	15	2014	Domingo 17 de Agosto de 2014	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Everton 17 (1ºT)']	1	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
146	15	2014	Domingo 17 de Agosto de 2014	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Marcelo Moreno 24 (1ºT)', ' Ricardo Goulart 3 (2ºT)', ' Julio Baptista 42 (2ºT)']	[]	0	Santos - SP	277	Leandro Pedro Vuaden	FIFA
147	15	2014	Domingo 17 de Agosto de 2014	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Chapecoense - SC	315	Jean Pierre Goncalves Lima	ASP-FIFA
148	15	2014	Domingo 17 de Agosto de 2014	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Luan 10 (1ºT)', ' Lucas 3 (2ºT)']	[]	0	Criciuma - SC	288	Wilton Pereira Sampaio	FIFA
149	15	2014	Domingo 17 de Agosto de 2014	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Leo Silva 24 (1ºT)', ' Clayton 45+1 (2ºT)']	['Datolo 7 (1ºT) ', 'Diego Tardelli 28 (2ºT)']	2	Atlético - MG	282	Felipe Gomes da Silva	ASP-FIFA
150	15	2014	Sábado 16 de Agosto de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Pedro 32 (2ºT)']	1	Internacional - RS	285	Emerson de Almeida Ferreira	CBF-1
151	16	2014	Quarta 20 de Agosto de 2014	22:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Leo Moura 20 (2ºT)', ' Eduardo da Silva 26 (2ºT)']	['Maicosuel 9 (1ºT)']	1	Atlético - MG	282	Sandro Meira Ricci	FIFA
152	16	2014	Quarta 20 de Agosto de 2014	19:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Fábio 22 (1ºT)', ' Patric 32 (1ºT)']	['Henrique Dourado 13 (1ºT)']	1	Palmeiras - SP	275	Heber Roberto Lopes	FIFA
153	16	2014	Quinta 21 de Agosto de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	5	[' Guerrero 22 (1ºT)', ' Elias 20 (2ºT)', ' Luciano 32 (2ºT)', ' Luciano 39 (2ºT)', ' Luciano 43 (2ºT)']	['Thiago Mendes 10 (1ºT) ', 'Jackson 15 (2ºT)']	2	Goiás - GO	290	Marcelo de Lima Henrique	FIFA
154	16	2014	Quarta 20 de Agosto de 2014	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Leandro Damiao 45 (1ºT)', ' Thiago Ribeiro 21 (2ºT)']	[]	0	Atletico - PR	293	Igor Junio Benevenuto	CBF-1
155	16	2014	Quarta 20 de Agosto de 2014	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Dudu 17 (1ºT)', ' Keirrison 17 (2ºT)']	[]	0	Vitória - BA	287	Dewson Fernando Freitas da Silva	ASP-FIFA
156	16	2014	Quinta 21 de Agosto de 2014	20:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Dagoberto 40 (2ºT)']	[]	0	Grêmio - RS	284	Flavio Rodrigues Guerra	CBF-1
157	16	2014	Quarta 20 de Agosto de 2014	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Criciuma - SC	288	Pablo dos Santos Alves	ESP-2
158	16	2014	Quarta 20 de Agosto de 2014	22:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['PH GANSO 35 (1ºT)']	1	São Paulo - SP	276	Grazianni Maciel Rocha	CBF-1
159	16	2014	Quarta 20 de Agosto de 2014	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Clayton 2 (1ºT)']	[]	0	Botafogo - RJ	296	Fabricio Neves Correa	CBF-1
160	16	2014	Quarta 20 de Agosto de 2014	22:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Camilo 15 (2ºT)']	[]	0	Fluminense - RJ	266	Francisco Carlos do Nascimento	FIFA
161	17	2014	Sábado 23 de Agosto de 2014	18:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Ramirez 30 (1ºT)']	[]	0	Chapecoense - SC	315	Anderson Daronco	ASP-FIFA
162	17	2014	Domingo 24 de Agosto de 2014	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[' Cicero 34 (1ºT)', ' Fred 42 (1ºT)', ' Conca 4 (2ºT)', ' Fred 34 (2ºT)']	[]	0	Sport - PE	292	Andre Luiz de Freitas Castro	ESP-2
163	17	2014	Domingo 24 de Agosto de 2014	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' PH GANSO 23 (1ºT)', ' Alexandre Pato 42 (2ºT)']	['Gabriel Barbosa 40 (2ºT)']	1	Santos - SP	277	Vinicius Furlan	CBF-1
164	17	2014	Sábado 23 de Agosto de 2014	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Juninho 13 (1ºT)']	[]	0	Coritiba - PR	294	Marcos Andre Gomes da Penha	CBF-1
165	17	2014	Domingo 24 de Agosto de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	0	[]	[]	0	Bahia - BA	265	Sandro Meira Ricci	FIFA
166	17	2014	Sábado 23 de Agosto de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Diego Tardelli 37 (2ºT)']	[]	0	Internacional - RS	285	Luiz Flavio de Oliveira	ASP-FIFA
167	17	2014	Domingo 24 de Agosto de 2014	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Everaldo 29 (2ºT)']	1	Figueirense - SC	316	Marcelo de Lima Henrique	FIFA
168	17	2014	Domingo 24 de Agosto de 2014	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Barcos 1 (2ºT)', ' Barcos 3 (2ºT)']	['Guerrero 16 (2ºT)']	1	Corinthians - SP	264	Heber Roberto Lopes	FIFA
169	17	2014	Domingo 24 de Agosto de 2014	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Lucas 32 (2ºT) ', 'Eduardo da Silva 36 (2ºT)']	2	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
170	17	2014	Domingo 24 de Agosto de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Marcelo Moreno 25 (1ºT)']	1	Cruzeiro - MG	283	Francisco Carlos do Nascimento	FIFA
171	18	2014	Domingo 31 de Agosto de 2014	16:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Daniel 17 (2ºT)']	[]	0	Santos - SP	277	Rodrigo D Alonso Ferreira	CBF-1
172	18	2014	Domingo 31 de Agosto de 2014	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Neto Baiano 5 (2ºT)', ' Danilo Barcelos 7 (2ºT)']	[]	0	Criciuma - SC	288	Luiz Flavio de Oliveira	ASP-FIFA
173	18	2014	Domingo 31 de Agosto de 2014	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Romarinho 28 (2ºT)']	['Fred 42 (1ºT)']	1	Fluminense - RJ	266	Paulo H Godoy Bezerra	ESP-2
174	18	2014	Sábado 30 de Agosto de 2014	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Jorge Henrique 19 (1ºT)']	1	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
175	18	2014	Domingo 31 de Agosto de 2014	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Atlético - MG	282	Marcelo de Lima Henrique	FIFA
176	18	2014	Sábado 30 de Agosto de 2014	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	4	[' Leo 4 (2ºT)', ' Marcelo Moreno 6 (2ºT)', ' Alisson 12 (2ºT)', ' Marcelo Moreno 26 (2ºT)']	['Zezinho 11 (1ºT) ', 'Bruno Rangel 25 (2ºT)']	2	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	ASP-FIFA
177	18	2014	Domingo 31 de Agosto de 2014	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Caio 39 (1ºT)']	['Marcelo 32 (1ºT) ', 'Alecsandro 25 (2ºT)']	2	Flamengo - RJ	262	Anderson Daronco	ASP-FIFA
178	18	2014	Domingo 31 de Agosto de 2014	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 13 (2ºT)']	[]	0	Bahia - BA	265	Pericles Bassols Pegado Cortez	FIFA
179	18	2014	Domingo 31 de Agosto de 2014	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Giovanni Augusto 2 (2ºT)']	['Rogerio 30 (2ºT)']	1	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
180	18	2014	Domingo 31 de Agosto de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Erik 38 (1ºT)', ' Erik 42 (1ºT)', ' Erik 39 (2ºT)']	['Cleo 18 (2ºT)']	1	Atletico - PR	293	Wagner do Nascimento Magalhaes	ASP-FIFA
181	19	2014	Sábado 06 de Setembro de 2014	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Luan 45+1 (2ºT)']	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	ESP-2
182	19	2014	Domingo 07 de Setembro de 2014	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Wagner 16 (1ºT)', ' Cicero 22 (1ºT)', ' Robert 43 (2ºT)']	['Julio Baptista 13 (1ºT) ', 'Julio Baptista 44 (1ºT) ', 'Marcelo Moreno 13 (2ºT)']	3	Cruzeiro - MG	283	Anderson Daronco	ASP-FIFA
183	19	2014	Domingo 07 de Setembro de 2014	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rithely 7 (1ºT)', ' Alexandre Pato 25 (1ºT)']	[]	0	Sport - PE	292	Braulio da Silva Machado	CBF-1
184	19	2014	Sábado 06 de Setembro de 2014	18:30	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' David Braz 1 (2ºT)', ' David Braz 6 (2ºT)', ' Leandro Damiao 28 (2ºT)']	['Dinei 19 (2ºT)']	1	Vitória - BA	287	Felipe Gomes da Silva	ASP-FIFA
185	19	2014	Domingo 07 de Setembro de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	1	[' Guilherme 29 (1ºT)']	['Henrique Dourado 7 (2ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
186	19	2014	Domingo 07 de Setembro de 2014	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Leo Silva 24 (2ºT)']	[]	0	Botafogo - RJ	296	Flavio Rodrigues Guerra	CBF-1
187	19	2014	Domingo 07 de Setembro de 2014	18:30	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Coritiba - PR	294	Francisco Carlos do Nascimento	FIFA
188	19	2014	Domingo 07 de Setembro de 2014	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Dalessandro 17 (1ºT)', ' Paulão 34 (1ºT)']	['Everaldo 5 (2ºT) ', 'Marquinhos 29 (2ºT) ', 'Giovanni Augusto 30 (2ºT)']	3	Figueirense - SC	316	Marcelo Aparecido R de Souza	CBF-1
189	19	2014	Domingo 07 de Setembro de 2014	16:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	[]	0	Corinthians - SP	264	Igor Junio Benevenuto	CBF-1
190	19	2014	Sábado 06 de Setembro de 2014	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Goiás - GO	290	Paulo H Schleich Vollkopf	CBF-1
191	20	2014	Quarta 10 de Setembro de 2014	22:00	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	2	[' Pablo Daniel 19 (1ºT)', ' Andre Bahia 22 (1ºT)']	['Alan Kardec 7 (1ºT) ', 'Souza 36 (1ºT) ', 'Souza 41 (1ºT) ', 'Alexandre Pato 35 (2ºT)']	4	São Paulo - SP	276	Marielson Alves Silva	CBF-1
192	20	2014	Quarta 10 de Setembro de 2014	21:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	3	[' Patric 40 (1ºT)', ' Patric 7 (2ºT)', ' Patric 45+1 (2ºT)']	['Thiago Ribeiro 24 (1ºT)']	1	Santos - SP	277	Grazianni Maciel Rocha	CBF-1
193	20	2014	Quinta 11 de Setembro de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Petros 13 (1ºT)']	[]	0	Atlético - MG	282	Dewson Fernando Freitas da Silva	ASP-FIFA
194	20	2014	Quarta 10 de Setembro de 2014	19:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Cristaldo 36 (2ºT)']	[]	0	Criciuma - SC	288	Cleisson Veloso Pereira	CBF-1
195	20	2014	Quarta 10 de Setembro de 2014	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' Robinho 1 (1ºT)', ' Martinucio 13 (1ºT)', ' Joel 30 (2ºT)']	[]	0	Chapecoense - SC	315	Devarly Lira do Rosario	CBF-1
196	20	2014	Quinta 11 de Setembro de 2014	20:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Everton Ribeiro 8 (2ºT)', ' Ricardo Goulart 26 (2ºT)']	['Rafael 29 (1ºT)']	1	Bahia - BA	265	Marcos Mateus Pereira	CBF-1
197	20	2014	Quarta 10 de Setembro de 2014	22:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Richarlyson 7 (1ºT)', ' Marcio 11 (2ºT)']	[]	0	Internacional - RS	285	Pericles Bassols Pegado Cortez	FIFA
198	20	2014	Quarta 10 de Setembro de 2014	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 45+2 (2ºT)']	[]	0	Atletico - PR	293	Marcelo de Lima Henrique	FIFA
199	20	2014	Quarta 10 de Setembro de 2014	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Everaldo 38 (1ºT)']	['Cicero 39 (2ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	ASP-FIFA
200	20	2014	Quarta 10 de Setembro de 2014	22:00	Arena Pantanal - Cuiaba - MT	290	Goiás - GO	1	[' Samuel 24 (2ºT)']	[]	0	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
201	21	2014	Domingo 14 de Setembro de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Wallace Reis 20 (2ºT)']	[]	0	Corinthians - SP	264	Sandro Meira Ricci	FIFA
202	21	2014	Sábado 13 de Setembro de 2014	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Fred 7 (1ºT)', ' Fred 34 (1ºT)', ' Conca 19 (2ºT)']	[]	0	Palmeiras - SP	275	Elmo Alves Resende Cunha	ESP-2
203	21	2014	Domingo 14 de Setembro de 2014	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rogerio 35 (1ºT)', ' Alan Kardec 26 (2ºT)']	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	FIFA
204	21	2014	Sábado 13 de Setembro de 2014	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Lucas Lima 13 (1ºT)', ' Robinho 38 (1ºT)']	['Dudu 42 (2ºT)']	1	Coritiba - PR	294	Marcelo de Lima Henrique	FIFA
205	21	2014	Domingo 14 de Setembro de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	2	[' Marcelo Cirino 29 (1ºT)', ' Hernani 25 (2ºT)']	[]	0	Vitória - BA	287	Pablo dos Santos Alves	ESP-2
206	21	2014	Domingo 14 de Setembro de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Grêmio - RS	284	Jailson Macedo Freitas	ESP-2
207	21	2014	Domingo 14 de Setembro de 2014	16:00	Jóia da Princesa - Feira de Santana - BA	265	Bahia - BA	3	[' Kieza 18 (1ºT)', ' Kieza 24 (1ºT)', ' Max 39 (2ºT)']	[]	0	Figueirense - SC	316	Gilberto Rodrigues Castro Junior	CBF-1
208	21	2014	Domingo 14 de Setembro de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Alex 40 (1ºT)', ' Eduardo Sasha 13 (2ºT)']	[]	0	Botafogo - RJ	296	Andre Luiz de Freitas Castro	ESP-2
209	21	2014	Domingo 14 de Setembro de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Luis Felipe 17 (2ºT)']	[]	0	Goiás - GO	290	Alinor Silva da Paixao	CBF-1
210	21	2014	Sábado 13 de Setembro de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Douglas Groli 42 (1ºT)', ' Tiago Luis 1 (2ºT)', ' Douglas Groli 41 (2ºT)']	['Felipe Azevedo 37 (2ºT)']	1	Sport - PE	292	Rodrigo Batista Raposo	CBF-1
211	22	2014	Quarta 17 de Setembro de 2014	22:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Emerson Sheik 29 (1ºT)', ' Emerson Sheik 42 (1ºT)']	['Dankler 31 (1ºT) ', 'Max 27 (2ºT) ', 'Branquinho 44 (2ºT)']	3	Bahia - BA	265	Igor Junio Benevenuto	CBF-1
212	22	2014	Quarta 17 de Setembro de 2014	21:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	0	[]	[]	0	Internacional - RS	285	Felipe Gomes da Silva	ASP-FIFA
213	22	2014	Quinta 18 de Setembro de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Malcom 9 (1ºT)']	['Ferrugem 4 (2ºT)']	1	Chapecoense - SC	315	Felipe Duarte Varejao	CBF-2
214	22	2014	Quarta 17 de Setembro de 2014	22:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Diogo 2 (2ºT)', ' Victor 23 (2ºT)']	['Hector 12 (1ºT) ', 'Alecsandro 31 (1ºT)']	2	Flamengo - RJ	262	Anderson Daronco	ASP-FIFA
215	22	2014	Quarta 17 de Setembro de 2014	22:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' Helder 15 (2ºT)', ' Joel 18 (2ºT)', ' Joel 41 (2ºT)']	['Michel Bastos 45+1 (1ºT)']	1	São Paulo - SP	276	Dewson Fernando Freitas da Silva	ASP-FIFA
216	22	2014	Quarta 17 de Setembro de 2014	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Alisson 26 (1ºT)', ' Marcelo Moreno 9 (2ºT)']	[]	0	Atletico - PR	293	Marcelo Aparecido R de Souza	CBF-1
217	22	2014	Quarta 17 de Setembro de 2014	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Dinei 20 (2ºT)', ' William Henrique 26 (2ºT)', ' Vinicius 31 (2ºT)']	['Cicero 18 (1ºT)']	1	Fluminense - RJ	266	Thiago Duarte Peixoto	CBF-1
218	22	2014	Quinta 18 de Setembro de 2014	20:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Santos - SP	277	Ricardo Marques Ribeiro	FIFA
219	22	2014	Quarta 17 de Setembro de 2014	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Thiago Heleno 17 (2ºT)']	['Silvinho 45 (1ºT)']	1	Criciuma - SC	288	Paulo H Godoy Bezerra	ESP-2
220	22	2014	Quinta 18 de Setembro de 2014	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Erik 34 (2ºT)', ' Jackson 45+2 (2ºT)']	['Guilherme 17 (1ºT) ', 'Guilherme 42 (1ºT) ', 'Carlos Alberto Carvalho 44 (1ºT)']	3	Atlético - MG	282	Luiz Flavio de Oliveira	ASP-FIFA
221	23	2014	Domingo 21 de Setembro de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Eduardo da Silva 26 (1ºT)']	['Fred 44 (1ºT)']	1	Fluminense - RJ	266	Dewson Fernando Freitas da Silva	ASP-FIFA
222	23	2014	Domingo 21 de Setembro de 2014	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Felipe Azevedo 29 (2ºT)']	[]	0	Coritiba - PR	294	Leandro Pedro Vuaden	FIFA
223	23	2014	Domingo 21 de Setembro de 2014	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Fabio Santos 35 (1ºT)', ' Fabio Santos 20 (2ºT)', ' Guerrero 28 (2ºT)']	['Souza 5 (1ºT) ', 'Edson 44 (1ºT)']	2	São Paulo - SP	276	Luiz Flavio de Oliveira	ASP-FIFA
224	23	2014	Domingo 21 de Setembro de 2014	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Leandro Damiao 40 (1ºT)', ' Robinho 11 (2ºT)', ' Lucas Lima 43 (2ºT)']	['Giovanni Augusto 45+2 (1ºT)']	1	Figueirense - SC	316	Elmo Alves Resende Cunha	ESP-2
225	23	2014	Sábado 20 de Setembro de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	0	[]	['Rafael Moura 36 (2ºT)']	1	Internacional - RS	285	Flavio Rodrigues de Souza	CBF-2
226	23	2014	Domingo 21 de Setembro de 2014	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ricardo Goulart 45+1 (1ºT)', ' Alisson 6 (2ºT)']	['Carlos Alberto Carvalho 38 (1ºT) ', 'Diego Tardelli 40 (1ºT) ', 'Carlos Alberto Carvalho 45+1 (2ºT)']	3	Atlético - MG	282	Marcelo de Lima Henrique	FIFA
227	23	2014	Domingo 21 de Setembro de 2014	16:00	Fonte Nova - Salvador - BA	287	Vitória - BA	2	[' Kadu 8 (1ºT)', ' Luiz Gustavo 7 (2ºT)']	['Kieza 5 (1ºT)']	1	Bahia - BA	265	Ricardo Marques Ribeiro	FIFA
228	23	2014	Domingo 21 de Setembro de 2014	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Dudu 7 (1ºT)']	[]	0	Chapecoense - SC	315	Andre Luiz de Freitas Castro	ESP-2
229	23	2014	Sábado 20 de Setembro de 2014	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Paulo Baier 23 (2ºT)']	['Pablo Daniel 36 (1ºT)']	1	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
230	23	2014	Domingo 21 de Setembro de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	6	[' Ramon 7 (1ºT)', ' Esquerdinha 12 (1ºT)', ' Erik 27 (1ºT)', ' David França 36 (1ºT)', ' Thiago Mendes 3 (2ºT)', ' Welinton 44 (2ºT)']	[]	0	Palmeiras - SP	275	Igor Junio Benevenuto	CBF-1
231	24	2014	Quinta 25 de Setembro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Bolivar 16 (2ºT)']	[]	0	Goiás - GO	290	Leandro Pedro Vuaden	FIFA
232	24	2014	Quarta 24 de Setembro de 2014	22:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Grêmio - RS	284	Heber Roberto Lopes	FIFA
233	24	2014	Quarta 24 de Setembro de 2014	22:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rogerio 17 (1ºT)', ' Luis Fabiano 45 (2ºT)']	['Everton 35 (1ºT) ', 'Alecsandro 41 (2ºT)']	2	Flamengo - RJ	262	Andre Luiz de Freitas Castro	ESP-2
234	24	2014	Quinta 25 de Setembro de 2014	19:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Lucio 25 (1ºT)', ' Henrique Dourado 17 (2ºT)']	[]	0	Vitória - BA	287	Wilton Pereira Sampaio	FIFA
235	24	2014	Quarta 24 de Setembro de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Martinucio 16 (2ºT)']	['Marcelo Moreno 7 (1ºT) ', 'Everton Ribeiro 38 (1ºT)']	2	Cruzeiro - MG	283	Vinicius Furlan	CBF-1
236	24	2014	Quinta 25 de Setembro de 2014	20:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Diego Tardelli 11 (1ºT)', ' Cicinho 23 (1ºT)', ' Diego Tardelli 8 (2ºT)']	['Thiago Ribeiro 14 (2ºT) ', 'Geuvanio 38 (2ºT)']	2	Santos - SP	277	Rodrigo D Alonso Ferreira	CBF-1
237	24	2014	Quarta 24 de Setembro de 2014	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Railan dos Santos 27 (2ºT)']	[]	0	Sport - PE	292	Flavio Rodrigues Guerra	CBF-1
238	24	2014	Quarta 24 de Setembro de 2014	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Aranguiz 38 (1ºT)', ' Eduardo Sasha 2 (2ºT)', ' Dalessandro 7 (2ºT)']	[]	0	Criciuma - SC	288	Marcelo de Lima Henrique	FIFA
239	24	2014	Quarta 24 de Setembro de 2014	22:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Marcao 39 (2ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
240	24	2014	Quarta 24 de Setembro de 2014	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Bruno Silva 10 (1ºT)', ' Camilo 21 (2ºT)', ' Leandro 44 (2ºT)']	[]	0	Atletico - PR	293	Charles Hebert Cavalcante Ferreira	CBF-1
241	25	2014	Domingo 28 de Setembro de 2014	16:00	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Barcos 4 (2ºT) ', 'Barcos 31 (2ºT)']	2	Grêmio - RS	284	Elmo Alves Resende Cunha	ESP-2
242	25	2014	Sábado 27 de Setembro de 2014	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	0	[]	[]	0	Cruzeiro - MG	283	Marielson Alves Silva	CBF-1
243	25	2014	Sábado 27 de Setembro de 2014	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Alexandre Pato 12 (2ºT)']	['Fred 7 (2ºT) ', 'Wagner 27 (2ºT) ', 'Conca 44 (2ºT)']	3	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
244	25	2014	Domingo 28 de Setembro de 2014	18:30	Pacaembu - Sao Paulo - SP	277	Santos - SP	2	[' David Braz 13 (1ºT)', ' Geuvanio 17 (2ºT)']	[]	0	Goiás - GO	290	Heber Roberto Lopes	FIFA
245	25	2014	Domingo 28 de Setembro de 2014	16:00	Arena da Baixada - Curitiba - PR	293	Atletico - PR	1	[' Cleo 41 (1ºT)']	[]	0	Corinthians - SP	264	Marcelo de Lima Henrique	FIFA
246	25	2014	Domingo 28 de Setembro de 2014	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Diego Tardelli 40 (2ºT)', ' Guilherme 45+2 (2ºT)']	[]	0	Vitória - BA	287	Marcelo Aparecido R de Souza	CBF-1
247	25	2014	Domingo 28 de Setembro de 2014	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Biancucchi 17 (1ºT)', ' Biancucchi 3 (2ºT)']	['Eduardo da Silva 16 (2ºT)']	1	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
248	25	2014	Domingo 28 de Setembro de 2014	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	4	[' Dalessandro 10 (1ºT)', ' Alex 31 (1ºT)', ' Eduardo Sasha 43 (1ºT)', ' Eduardo Sasha 27 (2ºT)']	['Leandro Almeida 14 (1ºT) ', 'Ze Eduardo 18 (2ºT)']	2	Coritiba - PR	294	Luiz Flavio de Oliveira	ASP-FIFA
249	25	2014	Domingo 28 de Setembro de 2014	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Clayton 30 (2ºT)', ' Clayton 32 (2ºT)', ' Marcao 35 (2ºT)']	['Cristaldo 34 (1ºT)']	1	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	ASP-FIFA
250	25	2014	Sábado 27 de Setembro de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Leandro 24 (1ºT)']	['Souza 8 (2ºT)']	1	Criciuma - SC	288	Braulio da Silva Machado	CBF-1
251	26	2014	Sábado 04 de Outubro de 2014	16:20	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Robinho 25 (1ºT)']	1	Santos - SP	277	Marielson Alves Silva	CBF-1
252	26	2014	Sábado 04 de Outubro de 2014	16:20	Mané Garrincha - Brasilia - DF	266	Fluminense - RJ	1	[' Fred 21 (1ºT)']	['Marcos Aurelio 37 (2ºT)']	1	Bahia - BA	265	Anderson Daronco	ASP-FIFA
253	26	2014	Sábado 04 de Outubro de 2014	18:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Anderson 24 (1ºT)', ' Guerrero 27 (2ºT)', ' Luciano 45+2 (2ºT)']	[]	0	Sport - PE	292	Braulio da Silva Machado	CBF-1
254	26	2014	Quinta 02 de Outubro de 2014	19:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	4	[' Wesley 7 (2ºT)', ' Henrique Dourado 12 (2ºT)', ' Henrique Dourado 20 (2ºT)', ' Henrique Dourado 24 (2ºT)']	['Leandro 40 (1ºT) ', 'Leandro 45 (2ºT)']	2	Chapecoense - SC	315	Leandro Pedro Vuaden	FIFA
255	26	2014	Sábado 04 de Outubro de 2014	16:20	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Helder 1 (2ºT)']	[]	0	Atletico - PR	293	Ricardo Marques Ribeiro	FIFA
256	26	2014	Sábado 04 de Outubro de 2014	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Marcelo Moreno 20 (1ºT)', ' Marquinhos 33 (1ºT)']	['Alex 10 (2ºT)']	1	Internacional - RS	285	Marcelo de Lima Henrique	FIFA
257	26	2014	Sábado 04 de Outubro de 2014	16:20	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Marcio 7 (2ºT)', ' Marcio 28 (2ºT)']	['Rogerio 22 (2ºT)']	1	Botafogo - RJ	296	Sandro Meira Ricci	FIFA
258	26	2014	Sábado 04 de Outubro de 2014	16:20	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Rogerio 9 (2ºT)']	1	São Paulo - SP	276	Felipe Gomes da Silva	ASP-FIFA
259	26	2014	Sábado 04 de Outubro de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Rafael 5 (1ºT)', ' Souza 18 (1ºT)', ' Souza 15 (2ºT)']	['Carlos Alberto Carvalho 12 (1ºT)']	1	Atlético - MG	282	Francisco Carlos do Nascimento	FIFA
260	26	2014	Sábado 04 de Outubro de 2014	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Ramon 34 (1ºT)']	[]	0	Figueirense - SC	316	Marcelo Aparecido R de Souza	CBF-1
261	27	2014	Quarta 08 de Outubro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Henrique Dourado 19 (2ºT)']	1	Palmeiras - SP	275	Fabricio Neves Correa	CBF-1
262	27	2014	Quinta 09 de Outubro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Atlético - MG	282	Heber Roberto Lopes	FIFA
263	27	2014	Quarta 08 de Outubro de 2014	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Maicon 6 (1ºT)']	[]	0	Atletico - PR	293	Jailson Macedo Freitas	ESP-2
264	27	2014	Quinta 09 de Outubro de 2014	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Leandro Damiao 10 (1ºT)']	[]	0	Bahia - BA	265	Jean Pierre Goncalves Lima	ASP-FIFA
265	27	2014	Quarta 08 de Outubro de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Luccas Claro 45+2 (1ºT)']	[]	0	Criciuma - SC	288	Sandro Meira Ricci	FIFA
266	27	2014	Quarta 08 de Outubro de 2014	22:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Luciano 28 (2ºT)']	1	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
267	27	2014	Quarta 08 de Outubro de 2014	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Edno 3 (1ºT)', ' Edno 41 (1ºT)']	['Erik 27 (2ºT) ', 'Bruno Mineiro 28 (2ºT)']	2	Goiás - GO	290	Pericles Bassols Pegado Cortez	FIFA
268	27	2014	Quarta 08 de Outubro de 2014	22:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Alan Ruiz 29 (1ºT)', ' Dudu 30 (2ºT)']	[]	0	Sport - PE	292	Marcelo de Lima Henrique	FIFA
269	27	2014	Quarta 08 de Outubro de 2014	22:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Mazola 11 (2ºT)']	['Eduardo da Silva 5 (1ºT) ', 'Nixon 45+2 (2ºT)']	2	Flamengo - RJ	262	Flavio Rodrigues Guerra	CBF-1
270	27	2014	Quinta 09 de Outubro de 2014	20:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	5	[' Diones 35 (1ºT)', ' Leandro 40 (1ºT)', ' Leandro 13 (2ºT)', ' Diones 30 (2ºT)', ' Camilo 43 (2ºT)']	[]	0	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
271	28	2014	Domingo 12 de Outubro de 2014	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Dedé 14 (1ºT)', ' Hector 11 (2ºT)', ' Gabriel 16 (2ºT)']	[]	0	Cruzeiro - MG	283	Francisco Carlos do Nascimento	FIFA
272	28	2014	Domingo 12 de Outubro de 2014	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 40 (1ºT)']	['Rithely 1 (1ºT) ', 'Dinei 28 (1ºT)']	2	Vitória - BA	287	Leandro Pedro Vuaden	FIFA
273	28	2014	Domingo 01 de Junho de 2014	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jadson 24 (1ºT)']	['Edilson 41 (2ºT)']	1	Botafogo - RJ	296	Leandro Pedro Vuaden	FIFA
274	28	2014	Sábado 11 de Outubro de 2014	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Pablo Nicolas Mouche 22 (2ºT)', ' Joao Pedro 29 (2ºT)']	['Barcos 10 (2ºT)']	1	Grêmio - RS	284	Sandro Meira Ricci	FIFA
275	28	2014	Domingo 12 de Outubro de 2014	18:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	3	[' Guilherme 5 (2ºT)', ' Bady 23 (2ºT)', ' Guilherme 45 (2ºT)']	[]	0	Figueirense - SC	316	Marcelo de Lima Henrique	FIFA
276	28	2014	Domingo 12 de Outubro de 2014	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Luan 27 (2ºT)']	[]	0	São Paulo - SP	276	Marielson Alves Silva	CBF-1
277	28	2014	Domingo 12 de Outubro de 2014	16:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Tiago Luis 37 (1ºT)']	1	Chapecoense - SC	315	Flavio Rodrigues de Souza	CBF-2
278	28	2014	Domingo 12 de Outubro de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Alex 7 (2ºT)', ' Valdivia 42 (2ºT)']	['Fred 40 (2ºT)']	1	Fluminense - RJ	266	Raphael Claus	ASP-FIFA
279	28	2014	Domingo 12 de Outubro de 2014	18:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	3	[' Joilson 16 (1ºT)', ' Rodrigo 23 (1ºT)', ' Lucca 15 (2ºT)']	[]	0	Santos - SP	277	Pericles Bassols Pegado Cortez	FIFA
280	28	2014	Sábado 11 de Outubro de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Jackson 10 (1ºT)', ' David França 25 (1ºT)', ' Erik 7 (2ºT)']	[]	0	Coritiba - PR	294	Flavio Rodrigues Guerra	CBF-1
281	29	2014	Domingo 19 de Outubro de 2014	18:30	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	1	[' Wallyson 14 (2ºT)']	['Diego Souza 21 (1ºT)']	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
282	29	2014	Sábado 18 de Outubro de 2014	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[' Wagner 45+1 (1ºT)', ' Wagner 5 (2ºT)', ' Conca 10 (2ºT)', ' Fred 39 (2ºT)']	['Ronaldo 44 (1ºT) ', 'Lucca 23 (2ºT)']	2	Criciuma - SC	288	Marcelo Aparecido R de Souza	CBF-1
283	29	2014	Sábado 18 de Outubro de 2014	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rogerio 39 (1ºT)', ' PH GANSO 33 (2ºT)']	['Leandro 42 (2ºT)']	1	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
284	29	2014	Domingo 19 de Outubro de 2014	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Henrique Dourado 41 (2ºT)']	['Geuvanio 38 (1ºT) ', 'Gabriel Barbosa 41 (1ºT) ', 'Gabriel Barbosa 3 (2ºT)']	3	Santos - SP	277	Flavio Rodrigues de Souza	CBF-2
285	29	2014	Domingo 19 de Outubro de 2014	16:00	Arena da Baixada - Curitiba - PR	293	Atletico - PR	2	[' Cleo 16 (1ºT)', ' Cleo 45 (1ºT)']	['Eduardo da Silva 7 (1ºT)']	1	Flamengo - RJ	262	Jean Pierre Goncalves Lima	ASP-FIFA
286	29	2014	Sábado 18 de Outubro de 2014	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Douglas Santos 28 (1ºT)']	[]	0	Chapecoense - SC	315	Francisco Carlos do Nascimento	FIFA
287	29	2014	Domingo 19 de Outubro de 2014	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Dedé 38 (2ºT)']	1	Cruzeiro - MG	283	Raphael Claus	ASP-FIFA
288	29	2014	Domingo 19 de Outubro de 2014	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Nilmar 27 (2ºT)']	['Guerrero 4 (1ºT) ', 'Gil 45+8 (1ºT)']	2	Corinthians - SP	264	Dewson Fernando Freitas da Silva	ASP-FIFA
289	29	2014	Domingo 19 de Outubro de 2014	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	4	[' Marquinhos 32 (1ºT)', ' Marcao 27 (2ºT)', ' Mazola 42 (2ºT)', ' Marcao 44 (2ºT)']	[]	0	Coritiba - PR	294	Pericles Bassols Pegado Cortez	FIFA
290	29	2014	Sábado 18 de Outubro de 2014	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Grêmio - RS	284	Marielson Alves Silva	CBF-1
291	30	2014	Quarta 22 de Outubro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Gabriel 23 (2ºT)', ' Gabriel 45+2 (2ºT)']	[]	0	Internacional - RS	285	Thiago Duarte Peixoto	CBF-1
292	30	2014	Quarta 22 de Outubro de 2014	22:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Esquerdinha 45 (2ºT)']	1	Goiás - GO	290	Marcelo de Lima Henrique	FIFA
293	30	2014	Quarta 22 de Outubro de 2014	19:30	Arena Pantanal - Cuiaba - MT	264	Corinthians - SP	2	[' Fabio Santos 18 (1ºT)', ' Luciano 35 (2ºT)']	['Edno 38 (2ºT)']	1	Vitória - BA	287	Alinor Silva da Paixao	CBF-1
294	30	2014	Quarta 22 de Outubro de 2014	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Edson 45 (2ºT)']	1	Fluminense - RJ	266	Francisco Carlos do Nascimento	FIFA
295	30	2014	Quarta 22 de Outubro de 2014	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Joel 29 (1ºT)', ' Alex 42 (2ºT)']	[]	0	Botafogo - RJ	296	Anderson Daronco	ASP-FIFA
296	30	2014	Quarta 22 de Outubro de 2014	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Dagoberto 45+3 (2ºT)']	['Pablo Nicolas Mouche 43 (2ºT)']	1	Palmeiras - SP	275	Pericles Bassols Pegado Cortez	FIFA
297	30	2014	Terça 21 de Outubro de 2014	21:50	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Guilherme 39 (2ºT)']	['Luan 8 (2ºT)']	1	Atlético - MG	282	Elmo Alves Resende Cunha	ESP-2
298	30	2014	Quarta 22 de Outubro de 2014	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Barcos 37 (1ºT)']	[]	0	Figueirense - SC	316	Vinicius Furlan	CBF-1
299	30	2014	Quarta 22 de Outubro de 2014	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Cleo 33 (2ºT)']	1	Atletico - PR	293	Ricardo Marques Ribeiro	FIFA
300	30	2014	Quarta 22 de Outubro de 2014	22:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	São Paulo - SP	276	Wagner do Nascimento Magalhaes	ASP-FIFA
301	31	2014	Sábado 25 de Outubro de 2014	21:00	Arena da Amazônia - Manaus - AM	296	Botafogo - RJ	2	[' Rogerio 34 (1ºT)', ' Wallyson 21 (2ºT)']	['Eduardo da Silva 29 (2ºT)']	1	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
302	31	2014	Sábado 25 de Outubro de 2014	16:20	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Wagner 3 (2ºT)', ' Fred 45+2 (2ºT)']	['Cleberson 45 (2ºT)']	1	Atletico - PR	293	Marielson Alves Silva	CBF-1
303	31	2014	Segunda 27 de Outubro de 2014	20:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Edson 3 (1ºT)', ' Luis Fabiano 6 (1ºT)', ' Alan Kardec 13 (2ºT)']	[]	0	Goiás - GO	290	Braulio da Silva Machado	CBF-1
304	31	2014	Sábado 25 de Outubro de 2014	16:20	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Henrique Dourado 25 (1ºT)']	['Danilo 45 (2ºT)']	1	Corinthians - SP	264	Flavio Rodrigues Guerra	CBF-1
305	31	2014	Sábado 25 de Outubro de 2014	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Leandro Almeida 30 (1ºT)']	['Riveros 39 (2ºT)']	1	Grêmio - RS	284	Dewson Fernando Freitas da Silva	ASP-FIFA
306	31	2014	Sábado 25 de Outubro de 2014	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Tiago 34 (1ºT)', ' Datolo 2 (2ºT)', ' Carlos Alberto Carvalho 23 (2ºT)']	['Rodrigo Mancha 17 (1ºT) ', 'Danilo Barcelos 33 (2ºT)']	2	Sport - PE	292	Felipe Gomes da Silva	ASP-FIFA
307	31	2014	Sábado 25 de Outubro de 2014	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Dinei 17 (2ºT)', ' Edno 33 (2ºT)', ' Edno 40 (2ºT)']	['Rodrigo 21 (2ºT)']	1	Criciuma - SC	288	Leandro Pedro Vuaden	FIFA
308	31	2014	Sábado 25 de Outubro de 2014	21:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Alan Patrick 10 (1ºT)', ' Nilmar 38 (1ºT)']	[]	0	Bahia - BA	265	Marcos Andre Gomes da Penha	CBF-1
309	31	2014	Sábado 25 de Outubro de 2014	16:20	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Pablo 45+1 (2ºT)']	['Marquinhos 35 (1ºT)']	1	Cruzeiro - MG	283	Pablo dos Santos Alves	ESP-2
310	31	2014	Sábado 25 de Outubro de 2014	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Leandro 45+1 (2ºT)']	['Bruno Uvini Bortolanca 12 (1ºT)']	1	Santos - SP	277	Anderson Daronco	ASP-FIFA
311	32	2014	Domingo 02 de Novembro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Anderson Pico 10 (2ºT)', ' Nixon 15 (2ºT)', ' Nixon 25 (2ºT)']	[]	0	Chapecoense - SC	315	Wilton Pereira Sampaio	FIFA
312	32	2014	Domingo 02 de Novembro de 2014	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 19 (2ºT)']	[]	0	Figueirense - SC	316	Alinor Silva da Paixao	CBF-1
313	32	2014	Sábado 01 de Novembro de 2014	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Elias 1 (2ºT)', ' Bruno 45+4 (2ºT)']	['Robinho 25 (1ºT) ', 'Alex 31 (1ºT)']	2	Coritiba - PR	294	Jean Pierre Goncalves Lima	ASP-FIFA
314	32	2014	Domingo 02 de Novembro de 2014	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Gabriel Barbosa 17 (2ºT)']	['Aranguiz 24 (1ºT) ', 'Aranguiz 35 (2ºT)']	2	Internacional - RS	285	Jailson Macedo Freitas	ESP-2
315	32	2014	Domingo 02 de Novembro de 2014	19:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	1	[' Paulinho Dias 1 (1ºT)']	[]	0	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
316	32	2014	Domingo 02 de Novembro de 2014	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Marquinhos 4 (1ºT)', ' Egidio 15 (1ºT)']	['Leo 45+1 (2ºT)']	1	Botafogo - RJ	296	Elmo Alves Resende Cunha	ESP-2
317	32	2014	Domingo 02 de Novembro de 2014	20:00	Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Mazinho 35 (1ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
318	32	2014	Sábado 01 de Novembro de 2014	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Richarlyson 44 (1ºT)']	[]	0	Vitória - BA	287	Thiago Duarte Peixoto	CBF-1
319	32	2014	Domingo 02 de Novembro de 2014	17:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	1	[' Souza 25 (2ºT)']	['Edson 36 (1ºT) ', 'Alan Kardec 30 (2ºT)']	2	São Paulo - SP	276	Dewson Fernando Freitas da Silva	ASP-FIFA
320	32	2014	Sábado 01 de Novembro de 2014	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Fred 26 (1ºT) ', 'Conca 44 (2ºT)']	2	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
321	33	2014	Sábado 08 de Novembro de 2014	21:00	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	0	[]	['Cleo 27 (1ºT) ', 'Cleo 45+4 (2ºT)']	2	Atletico - PR	293	Ricardo Marques Ribeiro	FIFA
322	33	2014	Domingo 09 de Novembro de 2014	17:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Danilo Barcelos 43 (2ºT)', ' Mike 45+1 (2ºT)']	['Marcio Araujo 8 (1ºT) ', 'Nixon 23 (1ºT)']	2	Flamengo - RJ	262	Elmo Alves Resende Cunha	ESP-2
323	33	2014	Domingo 09 de Novembro de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Guerrero 7 (1ºT)']	[]	0	Santos - SP	277	Vinicius Furlan	CBF-1
324	33	2014	Sábado 08 de Novembro de 2014	19:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Tiago 38 (1ºT) ', 'Dodo 19 (2ºT)']	2	Atlético - MG	282	Emerson Luiz Sobral	CBF-2
325	33	2014	Sábado 08 de Novembro de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Joel 45 (1ºT)']	[]	0	Fluminense - RJ	266	Thiago Duarte Peixoto	CBF-1
326	33	2014	Domingo 09 de Novembro de 2014	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Marcelo Moreno 14 (2ºT)', ' Ricardo Goulart 19 (2ºT)', ' Willian 44 (2ºT)']	['Lucca 2 (1ºT)']	1	Criciuma - SC	288	Marcos Andre Gomes da Penha	CBF-1
327	33	2014	Domingo 09 de Novembro de 2014	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Kadu 10 (2ºT)']	['Luis Fabiano 13 (1ºT) ', 'Kaká 32 (2ºT)']	2	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
328	33	2014	Domingo 09 de Novembro de 2014	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Luan 27 (1ºT)', ' Ramiro 3 (2ºT)', ' Alan Ruiz 30 (2ºT)', ' Alan Ruiz 36 (2ºT)']	['Rafael Moura 15 (2ºT)']	1	Internacional - RS	285	Luiz Flavio de Oliveira	ASP-FIFA
329	33	2014	Domingo 09 de Novembro de 2014	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Marcao 18 (2ºT)']	[]	0	Chapecoense - SC	315	Heber Roberto Lopes	FIFA
330	33	2014	Domingo 09 de Novembro de 2014	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Erik 17 (2ºT)', ' Erik 25 (2ºT)', ' Thiago Mendes 31 (2ºT)']	[]	0	Bahia - BA	265	Raphael Claus	ASP-FIFA
331	34	2014	Domingo 16 de Novembro de 2014	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Lucas 17 (1ºT)', ' Everton 12 (2ºT)', ' Nixon 35 (2ºT)']	['Joel 21 (2ºT) ', 'Joel 38 (2ºT)']	2	Coritiba - PR	294	Leandro Pedro Vuaden	FIFA
332	34	2014	Sábado 15 de Novembro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Edson 29 (2ºT)']	[]	0	Botafogo - RJ	296	Pericles Bassols Pegado Cortez	FIFA
333	34	2014	Domingo 16 de Novembro de 2014	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 21 (1ºT)', ' Toloi 34 (2ºT)']	[]	0	Palmeiras - SP	275	Marcelo Aparecido R de Souza	CBF-1
334	34	2014	Domingo 16 de Novembro de 2014	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Ricardo Goulart 8 (2ºT)']	1	Cruzeiro - MG	283	Alinor Silva da Paixao	CBF-1
335	34	2014	Domingo 16 de Novembro de 2014	17:00	Arena da Baixada - Curitiba - PR	293	Atletico - PR	0	[]	['Diego Souza 9 (2ºT)']	1	Sport - PE	292	Guilherme Ceretta de Lima	ASP-FIFA
336	34	2014	Domingo 16 de Novembro de 2014	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Dodo 6 (2ºT)']	['Jefferson 45+1 (1ºT)']	1	Figueirense - SC	316	Thiago Duarte Peixoto	CBF-1
337	34	2014	Domingo 16 de Novembro de 2014	17:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Kieza 24 (2ºT)']	['Malcom 24 (1ºT) ', 'Renato Augusto 38 (2ºT)']	2	Corinthians - SP	264	Elmo Alves Resende Cunha	ESP-2
338	34	2014	Domingo 16 de Novembro de 2014	17:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Paulão 33 (2ºT)']	[]	0	Goiás - GO	290	Marielson Alves Silva	CBF-1
339	34	2014	Sábado 15 de Novembro de 2014	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Dudu 12 (1ºT) ', 'Barcos 38 (1ºT) ', 'Ramiro 21 (2ºT)']	3	Grêmio - RS	284	Raphael Claus	ASP-FIFA
340	34	2014	Domingo 16 de Novembro de 2014	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Dinei 35 (2ºT)']	1	Vitória - BA	287	Luiz Flavio de Oliveira	ASP-FIFA
341	35	2014	Quarta 19 de Novembro de 2014	19:30	São Januário - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['França 6 (2ºT)']	1	Figueirense - SC	316	Anderson Daronco	ASP-FIFA
342	35	2014	Quinta 20 de Novembro de 2014	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Rafael Lima 41 (2ºT)']	['Bruno Silva 1 (2ºT) ', 'Camilo 20 (2ºT) ', 'Leandro 25 (2ºT) ', 'Bruno Silva 39 (2ºT)']	4	Chapecoense - SC	315	Elmo Alves Resende Cunha	ESP-2
343	35	2014	Quarta 12 de Novembro de 2014	22:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luis Fabiano 3 (2ºT)']	['Paulão 17 (1ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	FIFA
344	35	2014	Quarta 19 de Novembro de 2014	22:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Ananias 32 (2ºT) ', 'Patric 45 (2ºT)']	2	Sport - PE	292	Dewson Fernando Freitas da Silva	ASP-FIFA
345	35	2014	Quarta 19 de Novembro de 2014	19:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	1	[' Cleberson 4 (2ºT)']	['Robinho 27 (1ºT)']	1	Santos - SP	277	Arnoldo Vasconcelos Figarela	CBF-2
346	35	2014	Quarta 19 de Novembro de 2014	22:00	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Luan 24 (1ºT)', ' Diego Tardelli 44 (1ºT)', ' Luan 17 (2ºT)', ' Dodo 27 (2ºT)']	[]	0	Flamengo - RJ	262	Flavio Rodrigues de Souza	CBF-2
347	35	2014	Quarta 19 de Novembro de 2014	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Dinei 19 (1ºT)']	['Luccas Claro 37 (1ºT)']	1	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
348	35	2014	Quinta 20 de Novembro de 2014	21:50	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Riveros 12 (1ºT)']	['Ricardo Goulart 20 (2ºT) ', 'Everton Ribeiro 30 (2ºT)']	2	Cruzeiro - MG	283	Vinicius Furlan	CBF-1
349	35	2014	Quarta 19 de Novembro de 2014	21:00	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	0	[]	['Guilherme 6 (2ºT)']	1	Bahia - BA	265	Luiz Flavio de Oliveira	ASP-FIFA
350	35	2014	Quarta 19 de Novembro de 2014	21:00	Olímpico do Pará - Belem - PA	290	Goiás - GO	0	[]	['Felipe 45+1 (1ºT)']	1	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
351	36	2014	Domingo 23 de Novembro de 2014	17:00	Castelão/MA - Sao Luis - MA	262	Flamengo - RJ	1	[' Elton 37 (1ºT)']	['Cleber Santana 20 (2ºT)']	1	Criciuma - SC	288	Francisco Carlos do Nascimento	FIFA
352	36	2014	Domingo 23 de Novembro de 2014	17:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Mike 10 (1ºT)', ' Joelinton 39 (1ºT)']	['Ewerton 31 (1ºT) ', 'Fred 45+1 (2ºT)']	2	Fluminense - RJ	266	Anderson Daronco	ASP-FIFA
353	36	2014	Domingo 23 de Novembro de 2014	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Guerrero 37 (2ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
354	36	2014	Domingo 23 de Novembro de 2014	17:00	Arena Pantanal - Cuiaba - MT	277	Santos - SP	0	[]	['Gabriel 9 (2ºT)']	1	São Paulo - SP	276	Flavio Rodrigues Guerra	CBF-1
355	36	2014	Domingo 23 de Novembro de 2014	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Ze Eduardo 10 (2ºT)', ' Joel 25 (2ºT)']	[]	0	Palmeiras - SP	275	Elmo Alves Resende Cunha	ESP-2
356	36	2014	Domingo 23 de Novembro de 2014	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ricardo Goulart 13 (1ºT)', ' Everton Ribeiro 17 (2ºT)']	['Samuel 22 (1ºT)']	1	Goiás - GO	290	Paulo H Godoy Bezerra	ESP-2
357	36	2014	Sábado 22 de Novembro de 2014	21:00	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' H. Almeida 27 (2ºT)']	['Leandro 16 (2ºT) ', 'Bady 26 (2ºT)']	2	Atletico - PR	293	Andre Luiz de Freitas Castro	ESP-2
358	36	2014	Sábado 22 de Novembro de 2014	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Rafael Moura 20 (1ºT)', ' Fabricio 45+4 (2ºT)']	['Dodo 24 (1ºT)']	1	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
64	7	2015	Sábado 13 de Junho de 2015	16:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Souza 10 (1ºT)']	1	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
359	36	2014	Domingo 23 de Novembro de 2014	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Pablo 16 (1ºT)', ' Pablo 14 (2ºT)']	[]	0	Vitória - BA	287	Dewson Fernando Freitas da Silva	ASP-FIFA
360	36	2014	Domingo 23 de Novembro de 2014	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Leandro 5 (2ºT)', ' Leandro 17 (2ºT)']	[]	0	Botafogo - RJ	296	Leandro Pedro Vuaden	FIFA
361	37	2014	Sábado 29 de Novembro de 2014	21:00	Arena da Amazônia - Manaus - AM	262	Flamengo - RJ	4	[' Kadu 28 (1ºT)', ' Elton 23 (2ºT)', ' Everton 35 (2ºT)', ' Nixon 41 (2ºT)']	[]	0	Vitória - BA	287	Elmo Alves Resende Cunha	ESP-2
362	37	2014	Domingo 30 de Novembro de 2014	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	5	[' Ralf 41 (1ºT)', ' Edson 13 (2ºT)', ' Fred 19 (2ºT)', ' Fred 25 (2ºT)', ' Conca 45+1 (2ºT)']	['Guerrero 4 (1ºT) ', 'Danilo 38 (2ºT)']	2	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
363	37	2014	Domingo 30 de Novembro de 2014	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Edson 24 (2ºT)']	['Mazola 39 (2ºT)']	1	Figueirense - SC	316	Antonio Denival de Morais	CBF-1
364	37	2014	Domingo 30 de Novembro de 2014	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Leandro Damiao 3 (2ºT)', ' Leandro Damiao 44 (2ºT)']	[]	0	Botafogo - RJ	296	Paulo H Godoy Bezerra	ESP-2
365	37	2014	Domingo 30 de Novembro de 2014	19:30	Arena da Baixada - Curitiba - PR	293	Atletico - PR	1	[' Marcelo Cirino 16 (2ºT)']	[]	0	Goiás - GO	290	Thiago Duarte Peixoto	CBF-1
366	37	2014	Domingo 30 de Novembro de 2014	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Pedro Botelho 44 (2ºT)']	['Carlinho 6 (1ºT) ', 'Leandro Almeida 39 (2ºT)']	2	Coritiba - PR	294	Pablo dos Santos Alves	ESP-2
367	37	2014	Domingo 30 de Novembro de 2014	19:30	Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Galhardo 31 (1ºT)']	[]	0	Grêmio - RS	284	Dewson Fernando Freitas da Silva	ASP-FIFA
368	37	2014	Sábado 29 de Novembro de 2014	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Taiberson 23 (1ºT)', ' Fabricio 19 (2ºT)', ' Valdivia 35 (2ºT)']	['Renato 37 (1ºT)']	1	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
369	37	2014	Sábado 29 de Novembro de 2014	19:30	Heriberto Hulse - Criciuma - SC	288	Criciuma - SC	2	[' Lucca 2 (2ºT)', ' Lucca 22 (2ºT)']	['Patric 8 (1ºT) ', 'Ewerton 12 (2ºT)']	2	Sport - PE	292	Wagner Reway	ASP-FIFA
370	37	2014	Domingo 30 de Novembro de 2014	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Bruno Rangel 40 (1ºT)']	['Ragelli 26 (2ºT)']	1	Cruzeiro - MG	283	Grazianni Maciel Rocha	CBF-1
371	38	2014	Domingo 07 de Dezembro de 2014	17:00	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	0	[]	[]	0	Atlético - MG	282	Manoel Nunes Lopo Garrido	CBF-1
372	38	2014	Domingo 07 de Dezembro de 2014	17:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	1	[' Joelinton 3 (1ºT)']	[]	0	São Paulo - SP	276	Wagner Reway	ASP-FIFA
373	38	2014	Sábado 06 de Dezembro de 2014	16:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Elias 26 (1ºT)', ' Fabio Santos 26 (2ºT)']	['Roger Guedes 15 (2ºT)']	1	Criciuma - SC	288	Dewson Fernando Freitas da Silva	ASP-FIFA
374	38	2014	Domingo 07 de Dezembro de 2014	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Henrique Dourado 20 (1ºT)']	['Ricardo Silva 9 (1ºT)']	1	Atletico - PR	293	Leandro Pedro Vuaden	FIFA
375	38	2014	Domingo 07 de Dezembro de 2014	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' Ze Eduardo 34 (1ºT)', ' Dudu 40 (2ºT)', ' Keirrison 45+5 (2ºT)']	['H. Almeida 14 (1ºT) ', 'Romulo 26 (1ºT)']	2	Bahia - BA	265	Marcelo de Lima Henrique	FIFA
376	38	2014	Domingo 07 de Dezembro de 2014	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Nilton 44 (1ºT)', ' Marcelo Moreno 14 (2ºT)']	['Fred 34 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	ASP-FIFA
377	38	2014	Domingo 07 de Dezembro de 2014	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Thiago Ribeiro 45+3 (2ºT)']	1	Santos - SP	277	Anderson Daronco	ASP-FIFA
378	38	2014	Domingo 07 de Dezembro de 2014	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Luan 13 (2ºT)']	['Luiz Antonio 31 (1ºT)']	1	Flamengo - RJ	262	Luiz Flavio de Oliveira	ASP-FIFA
379	38	2014	Sábado 06 de Dezembro de 2014	16:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Pablo 4 (2ºT)']	['Rafael Moura 41 (2ºT) ', 'Wellington Silva 45+4 (2ºT)']	2	Internacional - RS	285	Marielson Alves Silva	CBF-1
380	38	2014	Domingo 07 de Dezembro de 2014	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	4	[' Erik 15 (1ºT)', ' Welinton 40 (1ºT)', ' David França 15 (2ºT)', ' Erik 45 (2ºT)']	['Abuda 27 (1ºT) ', 'Bruno Rangel 18 (2ºT)']	2	Chapecoense - SC	315	Flavio Feijo de Omena	CBF-2
1	1	2015	Sábado 09 de Maio de 2015	18:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Vitor Hugo 36 (2ºT)', ' Rafael Marques 45+4 (2ºT)']	['Patric 7 (2ºT) ', 'Jo 40 (2ºT)']	2	Atlético - MG	282	Felipe Gomes da Silva	ASP-FIFA
2	1	2015	Sábado 09 de Maio de 2015	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Elicarlos 29 (1ºT)', ' Roger 20 (2ºT)']	['Rafhael Lucas 2 (1ºT)']	1	Coritiba - PR	294	Elmo Alves Resende Cunha	ESP
3	1	2015	Sábado 09 de Maio de 2015	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Vinicius 43 (2ºT)']	[]	0	Joinville - SC	317	Thiago Duarte Peixoto	ASP-FIFA
4	1	2015	Domingo 10 de Maio de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 28 (2ºT)', ' Alexandre Pato 34 (2ºT)']	['Everton 40 (2ºT)']	1	Flamengo - RJ	262	Marcelo de Lima Henrique	MAST
5	1	2015	Domingo 10 de Maio de 2015	16:00	Arena Pantanal - Cuiaba - MT	283	Cruzeiro - MG	0	[]	['Angel Romero 37 (2ºT)']	1	Corinthians - SP	264	Anderson Daronco	FIFA
206	21	2015	Domingo 30 de Agosto de 2015	16:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	0	[]	['Everton 5 (1ºT)']	1	Flamengo - RJ	262	Braulio da Silva Machado	ASP-FIFA
6	1	2015	Domingo 10 de Maio de 2015	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Walter 14 (1ºT)', ' Felipe 20 (2ºT)', ' Paulão 24 (2ºT)']	[]	0	Internacional - RS	285	Luiz Flavio de Oliveira	FIFA
7	1	2015	Domingo 10 de Maio de 2015	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Matheus Ferraz 19 (1ºT)', ' Diego Souza 18 (2ºT)', ' Diego Souza 32 (2ºT)', ' Regis 42 (2ºT)']	['Rene 22 (2ºT)']	1	Figueirense - SC	316	Wilton Pereira Sampaio	FIFA
8	1	2015	Domingo 10 de Maio de 2015	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Goiás - GO	290	Braulio da Silva Machado	ASP-FIFA
9	1	2015	Domingo 10 de Maio de 2015	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Yuri Mamute 24 (1ºT)', ' Yuri Mamute 8 (2ºT)', ' Matias 32 (2ºT)']	['Renato Caja 16 (2ºT) ', 'Rildo 18 (2ºT) ', 'Diego 45+4 (2ºT)']	3	Ponte Preta - SP	303	Heber Roberto Lopes	FIFA
10	1	2015	Domingo 10 de Maio de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Marquinhos 19 (2ºT)']	['Robinho 26 (1ºT)']	1	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
11	2	2015	Sábado 16 de Maio de 2015	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Thiago Galhardo 27 (1ºT)', ' Erazo 33 (1ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
12	2	2015	Sábado 16 de Maio de 2015	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Bruno Henrique 9 (2ºT)', ' Bruno Henrique 35 (2ºT)']	[]	0	Atlético - PR	293	Heber Roberto Lopes	FIFA
13	2	2015	Sábado 16 de Maio de 2015	21:00	Fonte Luminosa - Araraquara - SP	264	Corinthians - SP	1	[' Fabio Santos 28 (1ºT)']	[]	0	Chapecoense - SC	315	Marcelo de Lima Henrique	MAST
14	2	2015	Domingo 17 de Maio de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Hector 28 (2ºT)', ' Everton 40 (2ºT)']	['Diego Souza 45+1 (1ºT) ', 'Elber 23 (2ºT)']	2	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
15	2	2015	Domingo 17 de Maio de 2015	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Geuvanio 44 (1ºT)']	[]	0	Cruzeiro - MG	283	Pericles Bassols Pegado Cortez	FIFA
16	2	2015	Domingo 17 de Maio de 2015	16:00	Mané Garrincha - Brasilia - DF	282	Atlético - MG	4	[' Jemerson 6 (1ºT)', ' Jemerson 37 (1ºT)', ' Datolo 7 (2ºT)', ' Luan 35 (2ºT)']	['Fred 43 (2ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
17	2	2015	Domingo 17 de Maio de 2015	18:30	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	[]	0	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
18	2	2015	Domingo 17 de Maio de 2015	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Renato Caja 14 (1ºT)']	[]	0	São Paulo - SP	276	Raphael Claus	FIFA
19	2	2015	Domingo 17 de Maio de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 18 (2ºT)']	[]	0	Avaí - SC	314	Igor Junio Benevenuto	ASP-FIFA
20	2	2015	Domingo 17 de Maio de 2015	11:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Vasco da Gama - RJ	267	Thiago Duarte Peixoto	ASP-FIFA
21	3	2015	Sábado 23 de Maio de 2015	18:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Matheus 10 (1ºT)', ' Michel Bastos 13 (2ºT)', ' Alexandre Pato 41 (2ºT)']	[]	0	Joinville - SC	317	Wagner Reway	ASP-FIFA
22	3	2015	Sábado 23 de Maio de 2015	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Lucas Siqueira 36 (2ºT)']	['Nilmar 45+1 (1ºT)']	1	Internacional - RS	285	Dewson Fernando Freitas da Silva	FIFA
23	3	2015	Sábado 23 de Maio de 2015	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Braian Rodriguez 33 (2ºT)']	[]	0	Figueirense - SC	316	Luiz Flavio de Oliveira	FIFA
24	3	2015	Domingo 24 de Maio de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Corinthians - SP	264	Heber Roberto Lopes	FIFA
25	3	2015	Domingo 24 de Maio de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' HUGO CABRAL 1 (2ºT)', ' HUGO CABRAL 17 (2ºT)']	['Gabriel 5 (2ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
26	3	2015	Domingo 24 de Maio de 2015	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Douglas 39 (1ºT)']	[]	0	Atlético - MG	282	Thiago Duarte Peixoto	ASP-FIFA
27	3	2015	Domingo 24 de Maio de 2015	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Apodi 20 (1ºT)']	[]	0	Santos - SP	277	Jailson Macedo Freitas	ESP
28	3	2015	Domingo 24 de Maio de 2015	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Victor Ramos 31 (2ºT)']	1	Goiás - GO	290	Marcelo de Lima Henrique	MAST
29	3	2015	Domingo 24 de Maio de 2015	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Charles 37 (2ºT)']	['Diego 39 (2ºT)']	1	Ponte Preta - SP	303	Anderson Daronco	FIFA
30	3	2015	Domingo 24 de Maio de 2015	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Neto 28 (1ºT)']	[]	0	Coritiba - PR	294	Sandro Meira Ricci	FIFA
31	4	2015	Sábado 30 de Maio de 2015	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Tiago 6 (1ºT)', ' Diego 2 (2ºT)', ' Renato Caja 45+2 (2ºT)']	['Gil 42 (2ºT)']	1	Chapecoense - SC	315	Felipe Gomes da Silva	ASP-FIFA
32	4	2015	Sábado 30 de Maio de 2015	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Paulo 4 (2ºT)']	['Anderson 1 (1ºT) ', 'Roberto 34 (2ºT)']	2	Avaí - SC	314	Italo Medeiros de Azevedo	CBF-2
33	4	2015	Sábado 30 de Maio de 2015	21:00	Arena Joinville - Joinville - SC	317	Joinville - SC	1	[' Rafael Costa 20 (2ºT)']	['Nikao 30 (1ºT) ', 'Douglas 33 (1ºT)']	2	Atlético - PR	293	Avelar Rodrigo da Silva	CBF-1
34	4	2015	Domingo 31 de Maio de 2015	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Rafael Marques 24 (1ºT) ', 'Ze Roberto 45+1 (1ºT)']	2	Palmeiras - SP	275	Vinicius Goncalves Dias Araujo	CBF-2
36	4	2015	Domingo 31 de Maio de 2015	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Thiago Ribeiro 11 (1ºT)', ' Datolo 19 (1ºT)', ' Thiago Ribeiro 44 (1ºT)']	[]	0	Vasco da Gama - RJ	267	Alisson Sidnei Furtado	CBF-1
37	4	2015	Domingo 31 de Maio de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Rodrigo 7 (2ºT)']	['Giuliano 35 (1ºT)']	1	Grêmio - RS	284	Anderson Daronco	FIFA
38	4	2015	Domingo 31 de Maio de 2015	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Robinho 42 (1ºT)', ' Werley 24 (2ºT)']	['Joelinton 5 (2ºT) ', 'Samuel 45+2 (2ºT)']	2	Sport - PE	292	Marcos Andre Gomes da Penha	CBF-1
39	4	2015	Domingo 31 de Maio de 2015	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Alecsandro 36 (1ºT)', ' Eduardo da Silva 40 (2ºT)']	['Fred 7 (1ºT) ', 'Para 32 (1ºT) ', 'Fred 1 (2ºT)']	3	Fluminense - RJ	266	Sandro Meira Ricci	FIFA
40	4	2015	Domingo 31 de Maio de 2015	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Marquinhos Silva 35 (1ºT)', ' Carlos Alberto 5 (2ºT)']	['Henrique 40 (1ºT)']	1	Cruzeiro - MG	283	Elmo Alves Resende Cunha	ESP
41	5	2015	Quarta 03 de Junho de 2015	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Diego 1 (1ºT) ', 'Tiago 38 (1ºT) ', 'Borges 32 (2ºT)']	3	Ponte Preta - SP	303	Heber Roberto Lopes	FIFA
42	5	2015	Quarta 03 de Junho de 2015	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Nikao 19 (1ºT)']	[]	0	Figueirense - SC	316	Marcelo de Lima Henrique	MAST
43	5	2015	Quarta 03 de Junho de 2015	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Ananias 11 (1ºT)', ' Bruno Silva 29 (1ºT)']	[]	0	Joinville - SC	317	Raphael Claus	FIFA
44	5	2015	Quarta 03 de Junho de 2015	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Michel Bastos 33 (1ºT)', ' P. Miranda 5 (2ºT)', ' Rogerio 39 (2ºT)']	['Ricardo Oliveira 45+1 (1ºT) ', 'Ricardo Oliveira 2 (2ºT)']	2	Santos - SP	277	Thiago Duarte Peixoto	ASP-FIFA
45	5	2015	Quarta 03 de Junho de 2015	22:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Giuliano 2 (1ºT)', ' M. Oliveira 4 (1ºT)', ' Luan 39 (1ºT)']	['Mendoza 23 (1ºT)']	1	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
46	5	2015	Quarta 03 de Junho de 2015	22:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Manoel 32 (2ºT)']	[]	0	Flamengo - RJ	262	Luiz Flavio de Oliveira	FIFA
47	5	2015	Quarta 03 de Junho de 2015	22:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Andre Lima 28 (2ºT)']	['Carlos Alberto Carvalho 13 (1ºT) ', 'Antonio Carlos 23 (1ºT) ', 'Lucas Pratto 22 (2ºT) ', 'Carlos Alberto Carvalho 32 (2ºT)']	4	Atlético - MG	282	Pablo dos Santos Alves	ESP
48	5	2015	Quinta 04 de Junho de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Vinicius 29 (1ºT)', ' Marcos Jr 43 (2ºT)']	[]	0	Coritiba - PR	294	Cleisson Veloso Pereira	CBF-1
49	5	2015	Quinta 04 de Junho de 2015	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Maikon 45+2 (2ºT)']	[]	0	Goiás - GO	290	Flavio Rodrigues Guerra	CBF-1
50	5	2015	Quinta 04 de Junho de 2015	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Vitor Hugo 19 (2ºT)']	['Rafael Moura 31 (2ºT)']	1	Internacional - RS	285	Rodolpho Toski Marques	CBF-1
51	6	2015	Sábado 06 de Junho de 2015	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Geuvanio 22 (1ºT)', ' Ricardo Oliveira 15 (2ºT)']	['Felipe Azevedo 7 (2ºT) ', 'Renato Caja 26 (2ºT)']	2	Ponte Preta - SP	303	Vinicius Goncalves Dias Araujo	CBF-2
52	6	2015	Sábado 06 de Junho de 2015	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Gabriel 19 (2ºT)']	[]	0	Chapecoense - SC	315	Anderson Daronco	FIFA
53	6	2015	Sábado 06 de Junho de 2015	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Luan 13 (1ºT)']	['Jemerson 45+1 (1ºT) ', 'Gabriel Xavier 1 (2ºT) ', 'Marquinhos 26 (2ºT)']	3	Cruzeiro - MG	283	Marcelo de Lima Henrique	MAST
54	6	2015	Sábado 06 de Junho de 2015	22:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 26 (1ºT)', ' Rogerio 10 (2ºT)']	[]	0	Grêmio - RS	284	Pericles Bassols Pegado Cortez	FIFA
55	6	2015	Sábado 06 de Junho de 2015	22:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Nikao 14 (2ºT)', ' Ytalo 45+1 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Marcelo Aparecido R de Souza	CBF-1
56	6	2015	Sábado 06 de Junho de 2015	22:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	['Jadson 31 (1ºT)']	1	Corinthians - SP	264	Dewson Fernando Freitas da Silva	FIFA
57	6	2015	Domingo 07 de Junho de 2015	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Sport - PE	292	Paulo Roberto Alves Junior	CBF-1
58	6	2015	Domingo 07 de Junho de 2015	11:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Vitinho 25 (1ºT)', ' Nilmar 35 (1ºT)']	[]	0	Coritiba - PR	294	Andre Luiz de Freitas Castro	ESP
59	6	2015	Domingo 07 de Junho de 2015	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Carlos Alberto 8 (1ºT)', ' Thiago Santana 17 (2ºT)']	['Gabriel 11 (1ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
60	6	2015	Domingo 07 de Junho de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Romulo 45+3 (2ºT)']	1	Avaí - SC	314	Alisson Sidnei Furtado	CBF-1
61	7	2015	Quarta 10 de Junho de 2015	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Werley 27 (1ºT)', ' Datolo 43 (1ºT)']	['Ricardo Oliveira 18 (1ºT) ', 'Gabriel Barbosa 9 (2ºT)']	2	Santos - SP	277	Wilton Pereira Sampaio	FIFA
62	7	2015	Sábado 13 de Junho de 2015	16:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 5 (2ºT)', ' Vagner Love 21 (2ºT)']	['Nilmar 40 (1ºT)']	1	Internacional - RS	285	Marcelo de Lima Henrique	MAST
63	7	2015	Sábado 13 de Junho de 2015	16:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Eduardo da Silva 38 (1ºT)']	1	Flamengo - RJ	262	Guilherme Ceretta de Lima	ASP-FIFA
65	7	2015	Sábado 13 de Junho de 2015	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Rodrigo 43 (2ºT)']	['Leandro Damiao 37 (1ºT) ', 'Charles 12 (2ºT) ', 'Leandro Damiao 28 (2ºT)']	3	Cruzeiro - MG	283	Leandro Pedro Vuaden	FIFA
66	7	2015	Sábado 13 de Junho de 2015	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Maikon 15 (1ºT)', ' Maikon 38 (1ºT)']	['Marcelinho Paraiba 33 (2ºT)']	1	Joinville - SC	317	Heber Roberto Lopes	FIFA
67	7	2015	Domingo 14 de Junho de 2015	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Rafael Marques 45+2 (1ºT)', ' Cristaldo 45 (2ºT)']	['Jean 16 (1ºT)']	1	Fluminense - RJ	266	Dewson Fernando Freitas da Silva	FIFA
68	7	2015	Domingo 14 de Junho de 2015	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Goiás - GO	290	Pablo dos Santos Alves	ESP
69	7	2015	Domingo 14 de Junho de 2015	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Giuliano 33 (1ºT)', ' Rhodolfo 26 (2ºT)']	['Hernani 6 (2ºT)']	1	Atlético - PR	293	Marcos Andre Gomes da Penha	CBF-1
70	7	2015	Domingo 14 de Junho de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Anderson 35 (1ºT)']	['Marquinhos Silva 14 (1ºT)']	1	Figueirense - SC	316	Wagner Reway	ASP-FIFA
71	8	2015	Quinta 18 de Junho de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Internacional - RS	285	Wagner do Nascimento Magalhaes	ASP-FIFA
72	8	2015	Sábado 20 de Junho de 2015	16:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Ricardo Oliveira 9 (1ºT)']	[]	0	Corinthians - SP	264	Luiz Flavio de Oliveira	FIFA
73	8	2015	Sábado 20 de Junho de 2015	16:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Samir 21 (1ºT) ', 'Lucas Pratto 40 (1ºT)']	2	Atlético - MG	282	Thiago Duarte Peixoto	ASP-FIFA
74	8	2015	Sábado 20 de Junho de 2015	16:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Andre Felipe 20 (1ºT)', ' Wendel 35 (2ºT)']	['Riascos 41 (1ºT)']	1	Vasco da Gama - RJ	267	Anderson Daronco	FIFA
75	8	2015	Sábado 20 de Junho de 2015	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Maicon 9 (2ºT)']	[]	0	Palmeiras - SP	275	Raphael Claus	FIFA
76	8	2015	Domingo 21 de Junho de 2015	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Camilo 35 (1ºT)']	1	Chapecoense - SC	315	Pericles Bassols Pegado Cortez	FIFA
77	8	2015	Domingo 21 de Junho de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Souza 9 (2ºT)']	['Andre Lima 44 (2ºT)']	1	Avaí - SC	314	Bruno Arleu de Araujo	CBF-1
78	8	2015	Domingo 21 de Junho de 2015	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Walter 24 (1ºT)', ' Edigar Junio 36 (2ºT)']	['Wellington Paulista 18 (1ºT) ', 'Ruy 31 (2ºT)']	2	Coritiba - PR	294	Dewson Fernando Freitas da Silva	FIFA
79	8	2015	Domingo 21 de Junho de 2015	16:00	Arena Joinville - Joinville - SC	317	Joinville - SC	2	[' Kempes 34 (1ºT)', ' Kempes 45 (1ºT)']	['Wesley Pacheco 26 (1ºT)']	1	Goiás - GO	290	Igor Junio Benevenuto	ASP-FIFA
80	8	2015	Quarta 24 de Junho de 2015	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Wellington Silva 10 (2ºT)', ' Vinicius 45+4 (2ºT)']	[]	0	Ponte Preta - SP	303	Leandro Pedro Vuaden	FIFA
81	9	2015	Sábado 27 de Junho de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Anderson 11 (2ºT)']	['Pedro Rocha 1 (1ºT) ', 'Luan 9 (1ºT)']	2	Grêmio - RS	284	Marcelo de Lima Henrique	MAST
82	9	2015	Sábado 27 de Junho de 2015	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Bruno Rangel 43 (2ºT)']	['Rithely 29 (1ºT)']	1	Sport - PE	292	Wagner do Nascimento Magalhaes	ASP-FIFA
83	9	2015	Sábado 27 de Junho de 2015	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Vagner Love 10 (2ºT)', ' Jadson 20 (2ºT)']	['Thiago Santana 28 (2ºT)']	1	Figueirense - SC	316	Igor Junio Benevenuto	ASP-FIFA
84	9	2015	Domingo 28 de Junho de 2015	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Leandro 31 (1ºT)', ' Victor Ramos 40 (1ºT)', ' Rafael Marques 13 (2ºT)', ' Cristaldo 27 (2ºT)']	[]	0	São Paulo - SP	276	Anderson Daronco	FIFA
85	9	2015	Domingo 28 de Junho de 2015	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Renato Caja 29 (1ºT)', ' Felipe Azevedo 25 (2ºT)']	['Nikao 28 (1ºT)']	1	Atlético - PR	293	Francisco Carlos do Nascimento	MAST
86	9	2015	Domingo 28 de Junho de 2015	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Rafhael Lucas 16 (2ºT)']	[]	0	Cruzeiro - MG	283	Raphael Claus	FIFA
87	9	2015	Domingo 28 de Junho de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Erik 33 (1ºT)']	['Wagner 8 (2ºT) ', 'Edson 16 (2ºT)']	2	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
88	9	2015	Domingo 28 de Junho de 2015	18:30	Arena Pantanal - Cuiaba - MT	267	Vasco da Gama - RJ	1	[' Riascos 15 (1ºT)']	[]	0	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
89	9	2015	Domingo 28 de Junho de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Valdivia 31 (2ºT)']	[]	0	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
90	9	2015	Domingo 28 de Junho de 2015	11:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	1	[' Leo Silva 33 (1ºT)']	[]	0	Joinville - SC	317	Emerson Luiz Sobral	CBF-1
91	10	2015	Quarta 01 de Julho de 2015	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Biancucchi 23 (2ºT)']	[]	0	Avaí - SC	314	Marcos Andre Gomes da Penha	CBF-1
92	10	2015	Quarta 01 de Julho de 2015	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Andre Felipe 10 (1ºT)', ' Marlone 30 (1ºT)', ' Andre Felipe 35 (1ºT)']	[]	0	Internacional - RS	285	Pericles Bassols Pegado Cortez	FIFA
316	32	2015	Domingo 25 de Outubro de 2015	17:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Grêmio - RS	284	Marcelo Aparecido R de Souza	CBF-1
93	10	2015	Quarta 01 de Julho de 2015	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Egidio 27 (1ºT)', ' Cristaldo 24 (2ºT)']	[]	0	Chapecoense - SC	315	Pablo dos Santos Alves	ESP
94	10	2015	Quarta 01 de Julho de 2015	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Thiago Ribeiro 45 (1ºT)', ' Thiago Ribeiro 22 (2ºT)']	[]	0	Coritiba - PR	294	Braulio da Silva Machado	ASP-FIFA
95	10	2015	Quarta 01 de Julho de 2015	22:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Douglas 23 (2ºT)']	[]	0	Cruzeiro - MG	283	Marcelo Aparecido R de Souza	CBF-1
96	10	2015	Quarta 01 de Julho de 2015	22:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Gustavo 36 (1ºT)', ' Marcos Guilherme 12 (2ºT)']	['Centurion 26 (2ºT)']	1	São Paulo - SP	276	Elmo Alves Resende Cunha	ESP
97	10	2015	Quarta 01 de Julho de 2015	22:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	['Emerson Sheik 10 (2ºT)']	1	Flamengo - RJ	262	Leandro Pedro Vuaden	FIFA
98	10	2015	Quinta 02 de Julho de 2015	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 41 (1ºT)', ' Vagner Love 45+5 (2ºT)']	[]	0	Ponte Preta - SP	303	Thiago Duarte Peixoto	ASP-FIFA
99	10	2015	Quinta 02 de Julho de 2015	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Thiago Santana 24 (1ºT)', ' Clayton 34 (1ºT)', ' Paulo Roberto 35 (2ºT)']	['Felipe 1 (2ºT)']	1	Goiás - GO	290	Wilton Pereira Sampaio	FIFA
100	10	2015	Quinta 02 de Julho de 2015	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Fred 39 (1ºT)', ' Lucas 35 (2ºT)']	['Ricardo Oliveira 8 (2ºT)']	1	Santos - SP	277	Ricardo Marques Ribeiro	FIFA
101	11	2015	Sábado 04 de Julho de 2015	15:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Joinville - SC	317	Andre Luiz de Freitas Castro	ESP
102	11	2015	Sábado 04 de Julho de 2015	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Neto 29 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
103	11	2015	Sábado 04 de Julho de 2015	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' De Arrascaeta 40 (1ºT)', ' Marinho 28 (2ºT)']	[]	0	Atlético - PR	293	Luiz Flavio de Oliveira	FIFA
104	11	2015	Domingo 05 de Julho de 2015	11:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Renan 37 (1ºT)', ' Samuel 39 (1ºT)']	['Diego Souza 20 (1ºT) ', 'Andre Felipe 45+2 (2ºT)']	2	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
105	11	2015	Domingo 05 de Julho de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Fluminense - RJ	266	Leandro Pedro Vuaden	FIFA
106	11	2015	Domingo 05 de Julho de 2015	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Ricardo Oliveira 9 (2ºT)']	['Pedro Rocha 4 (1ºT) ', 'Galhardo 4 (2ºT) ', 'Yuri Mamute 35 (2ºT)']	3	Grêmio - RS	284	Felipe Gomes da Silva	ASP-FIFA
107	11	2015	Domingo 05 de Julho de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Corinthians - SP	264	Heber Roberto Lopes	FIFA
108	11	2015	Domingo 05 de Julho de 2015	18:30	Arena Pantanal - Cuiaba - MT	303	Ponte Preta - SP	0	[]	['Dudu 8 (1ºT) ', 'Dudu 39 (1ºT)']	2	Palmeiras - SP	275	Vinicius Goncalves Dias Araujo	CBF-2
109	11	2015	Domingo 05 de Julho de 2015	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Alan Patrick 3 (2ºT)']	['Ricardinho 16 (2ºT) ', 'Fabinho 45+2 (2ºT)']	2	Figueirense - SC	316	Jailson Macedo Freitas	ESP
110	11	2015	Domingo 05 de Julho de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Lisandro Lopez 41 (2ºT)']	['Maicosuel 14 (2ºT) ', 'Maicosuel 32 (2ºT) ', 'Thiago Ribeiro 34 (2ºT)']	3	Atlético - MG	282	Raphael Claus	FIFA
111	12	2015	Quarta 08 de Julho de 2015	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Ponte Preta - SP	303	Pericles Bassols Pegado Cortez	FIFA
112	12	2015	Quarta 08 de Julho de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	4	[' Felipe 2 (2ºT)', ' Fred 6 (2ºT)', ' Felipe 13 (2ºT)', ' Carlos Eduardo 16 (2ºT)']	['Ricardo Oliveira 44 (2ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
113	12	2015	Quarta 08 de Julho de 2015	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Bruno Rangel 31 (2ºT)']	[]	0	Grêmio - RS	284	Flavio Rodrigues Guerra	CBF-1
114	12	2015	Quarta 08 de Julho de 2015	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Rafael Marques 7 (1ºT)', ' Lucas 19 (2ºT)', ' Cristaldo 43 (2ºT)']	[]	0	Avaí - SC	314	Igor Junio Benevenuto	ASP-FIFA
115	12	2015	Quarta 08 de Julho de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Kempes 11 (1ºT) ', 'Kempes 15 (2ºT)']	2	Joinville - SC	317	Marcelo de Lima Henrique	MAST
116	12	2015	Quarta 08 de Julho de 2015	22:00	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	0	[]	['Alexandre Pato 12 (1ºT) ', 'Michel Bastos 17 (1ºT) ', 'Wesley 3 (2ºT) ', 'Gabriel 45+2 (2ºT)']	4	São Paulo - SP	276	Leandro Pedro Vuaden	FIFA
117	12	2015	Quarta 08 de Julho de 2015	22:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Ernando 45+2 (2ºT)']	['Guerrero 10 (1ºT) ', 'Everton 20 (2ºT)']	2	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
118	12	2015	Quarta 08 de Julho de 2015	22:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Lucas Pratto 2 (2ºT)', ' Giovanni Augusto 14 (2ºT)']	['Matheus Ferraz 4 (2ºT)']	1	Sport - PE	292	Elmo Alves Resende Cunha	ESP
119	12	2015	Quinta 09 de Julho de 2015	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Elias 33 (1ºT)', ' Jadson 31 (2ºT)']	[]	0	Atlético - PR	293	Ricardo Marques Ribeiro	FIFA
120	12	2015	Quinta 09 de Julho de 2015	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Gustavo Scarpa 28 (2ºT)']	[]	0	Cruzeiro - MG	283	Heber Roberto Lopes	FIFA
121	13	2015	Sábado 11 de Julho de 2015	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' David Braz 30 (1ºT)', ' Lucas Lima 1 (2ºT)', ' Gabriel Barbosa 17 (2ºT)']	[]	0	Figueirense - SC	316	Andre Luiz de Freitas Castro	ESP
122	13	2015	Sábado 11 de Julho de 2015	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Anderson Salles 15 (2ºT)', ' Pedro Rocha 36 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
123	13	2015	Sábado 11 de Julho de 2015	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Thiago Ribeiro 27 (1ºT) ', 'Giovanni Augusto 42 (2ºT)']	2	Atlético - MG	282	Rodolpho Toski Marques	CBF-1
124	13	2015	Domingo 12 de Julho de 2015	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Centurion 14 (1ºT)', ' Alexandre Pato 45+1 (1ºT)', ' Alexandre Pato 45 (2ºT)']	['Marcos Aurelio 14 (2ºT)']	1	Coritiba - PR	294	Alisson Sidnei Furtado	CBF-1
125	13	2015	Domingo 12 de Julho de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Elias 26 (1ºT) ', 'Uendel 45+3 (1ºT) ', 'Jadson 17 (2ºT)']	3	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
126	13	2015	Domingo 12 de Julho de 2015	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Joel 38 (1ºT)']	[]	0	Goiás - GO	290	Emerson Luiz Sobral	CBF-1
127	13	2015	Domingo 12 de Julho de 2015	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Sidcley 23 (2ºT)']	['Gustavo Scarpa 7 (2ºT) ', 'Fred 45+3 (2ºT)']	2	Fluminense - RJ	266	Anderson Daronco	FIFA
128	13	2015	Domingo 12 de Julho de 2015	16:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	['Rever 32 (1ºT) ', 'Vitinho 45 (1ºT)']	2	Internacional - RS	285	Francisco Carlos do Nascimento	MAST
129	13	2015	Domingo 12 de Julho de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Emerson Silva 10 (1ºT)', ' William 19 (1ºT)']	['Bruno Rangel 3 (2ºT)']	1	Chapecoense - SC	315	Heber Roberto Lopes	FIFA
130	13	2015	Domingo 12 de Julho de 2015	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Matheus Ferraz 21 (1ºT)', ' Andre Felipe 44 (2ºT)']	['Leandro 43 (1ºT) ', 'Leandro 13 (2ºT)']	2	Palmeiras - SP	275	Emerson de Almeida Ferreira	CBF-1
131	14	2015	Sábado 18 de Julho de 2015	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Malcom 41 (1ºT)']	[]	0	Atlético - MG	282	Anderson Daronco	FIFA
132	14	2015	Sábado 18 de Julho de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Eduardo 13 (2ºT)', ' Eduardo Sasha 42 (2ºT)']	['Felipe 34 (2ºT)']	1	Goiás - GO	290	Marcelo de Lima Henrique	MAST
133	14	2015	Sábado 18 de Julho de 2015	18:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Guerrero 40 (1ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
134	14	2015	Domingo 19 de Julho de 2015	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Hernani 6 (2ºT)']	[]	0	Chapecoense - SC	315	Luiz César de Oliveira Magalhães	CBF-1
135	14	2015	Domingo 19 de Julho de 2015	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Leandro 14 (1ºT)']	[]	0	Santos - SP	277	Wagner do Nascimento Magalhaes	ASP-FIFA
136	14	2015	Domingo 19 de Julho de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Marcos Jr 13 (2ºT)']	['Andrezinho 38 (1ºT) ', 'Jhon 25 (2ºT)']	2	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
137	14	2015	Domingo 19 de Julho de 2015	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Coritiba - PR	294	Emerson Luiz Sobral	CBF-1
138	14	2015	Domingo 19 de Julho de 2015	16:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Elber 35 (1ºT)', ' Ferrugem 45+2 (2ºT)']	[]	0	São Paulo - SP	276	Andre Luiz de Freitas Castro	ESP
139	14	2015	Domingo 19 de Julho de 2015	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Marcos Vinicius 13 (1ºT)']	['Andre Lima 36 (2ºT)']	1	Avaí - SC	314	Jailson Macedo Freitas	ESP
140	14	2015	Domingo 19 de Julho de 2015	18:30	Arena Joinville - Joinville - SC	317	Joinville - SC	1	[' Silvinho 7 (2ºT)']	['Fernando 28 (2ºT)']	1	Ponte Preta - SP	303	Raphael Claus	FIFA
141	15	2015	Sábado 25 de Julho de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Romulo 38 (2ºT)']	['Marcos Guilherme 42 (1ºT) ', 'Marcos Guilherme 44 (2ºT)']	2	Atlético - PR	293	Wilton Pereira Sampaio	FIFA
142	15	2015	Sábado 25 de Julho de 2015	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Pedro Rocha 45 (1ºT)']	['Diego Souza 17 (2ºT)']	1	Sport - PE	292	Pericles Bassols Pegado Cortez	FIFA
143	15	2015	Sábado 25 de Julho de 2015	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Lucas Pratto 18 (2ºT)']	[]	0	Figueirense - SC	316	Luiz Flavio de Oliveira	FIFA
144	15	2015	Domingo 26 de Julho de 2015	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Bruno Rangel 27 (1ºT)', ' Bruno Rangel 44 (2ºT)']	['Edson 28 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
145	15	2015	Domingo 26 de Julho de 2015	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Evandro 45+1 (2ºT)']	['Felipe 41 (1ºT)']	1	Corinthians - SP	264	Pablo dos Santos Alves	ESP
146	15	2015	Domingo 26 de Julho de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Marcelo Cirino 28 (2ºT)']	1	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
147	15	2015	Domingo 26 de Julho de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Alexandre Pato 44 (1ºT)']	[]	0	Cruzeiro - MG	283	Marcelo de Lima Henrique	MAST
148	15	2015	Domingo 26 de Julho de 2015	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Internacional - RS	285	Bruno Arleu de Araujo	CBF-1
149	15	2015	Domingo 26 de Julho de 2015	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Gabriel Barbosa 3 (1ºT)', ' Gabriel Barbosa 18 (1ºT)']	[]	0	Joinville - SC	317	Ricardo Marques Ribeiro	FIFA
150	15	2015	Domingo 26 de Julho de 2015	18:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Riascos 23 (2ºT)']	['Leandro 3 (1ºT) ', 'Dudu 18 (1ºT) ', 'Victor Ramos 35 (1ºT) ', 'Leandro 10 (2ºT)']	4	Palmeiras - SP	275	Anderson Daronco	FIFA
151	16	2015	Quarta 29 de Julho de 2015	22:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Renato Augusto 1 (2ºT)', ' Gil 16 (2ºT)', ' Elias 31 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
152	16	2015	Quarta 29 de Julho de 2015	22:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Lucas Pratto 19 (1ºT)', ' Lucas Pratto 25 (1ºT)', ' Lucas Pratto 44 (1ºT)']	['Alexandre Pato 13 (2ºT)']	1	São Paulo - SP	276	Dewson Fernando Freitas da Silva	FIFA
153	16	2015	Sábado 01 de Agosto de 2015	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Marcos Jr 31 (2ºT)']	[]	0	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
154	16	2015	Domingo 02 de Agosto de 2015	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Walter 31 (2ºT)']	1	Atlético - PR	293	Ricardo Marques Ribeiro	FIFA
155	16	2015	Domingo 02 de Agosto de 2015	11:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Evandro 45 (2ºT)']	['Liniker 23 (2ºT)']	1	Goiás - GO	290	Dewson Fernando Freitas da Silva	FIFA
156	16	2015	Domingo 02 de Agosto de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Alan Patrick 39 (1ºT)', ' Emerson Sheik 41 (1ºT)']	['Ricardo Oliveira 6 (2ºT) ', 'Lucas Lima 27 (2ºT)']	2	Santos - SP	277	Anderson Daronco	FIFA
157	16	2015	Domingo 02 de Agosto de 2015	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Chapecoense - SC	315	Pericles Bassols Pegado Cortez	FIFA
158	16	2015	Domingo 02 de Agosto de 2015	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Joao Vitor 4 (1ºT)', ' Marquinhos Silva 28 (2ºT)', ' Dudu 45+2 (2ºT)']	['Renato Chaves 5 (2ºT)']	1	Ponte Preta - SP	303	Heber Roberto Lopes	FIFA
159	16	2015	Domingo 02 de Agosto de 2015	16:00	Arena Joinville - Joinville - SC	317	Joinville - SC	2	[' Jeci 40 (1ºT)', ' Guti 15 (2ºT)']	[]	0	Avaí - SC	314	Rodrigo D Alonso Ferreira	CBF-1
160	16	2015	Domingo 02 de Agosto de 2015	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	0	[]	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	FIFA
161	17	2015	Sábado 08 de Agosto de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Andre Lima 5 (1ºT)']	[]	0	Fluminense - RJ	266	Thiago Duarte Peixoto	ASP-FIFA
162	17	2015	Sábado 08 de Agosto de 2015	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Geuvanio 20 (1ºT)', ' Ivan 43 (1ºT)', ' Ricardo Oliveira 14 (2ºT)']	[]	0	Coritiba - PR	294	Igor Junio Benevenuto	ASP-FIFA
163	17	2015	Domingo 09 de Agosto de 2015	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Bruno Rangel 5 (2ºT)', ' Tiago Luis 11 (2ºT)']	['Dudu 37 (2ºT) ', 'Marcao 43 (2ºT)']	2	Figueirense - SC	316	Ricardo Marques Ribeiro	FIFA
164	17	2015	Domingo 09 de Agosto de 2015	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Vilches 45+7 (2ºT)']	['Marlone 15 (1ºT)']	1	Sport - PE	292	Anderson Daronco	FIFA
165	17	2015	Domingo 09 de Agosto de 2015	11:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Joinville - SC	317	Luiz Flavio de Oliveira	FIFA
166	17	2015	Domingo 09 de Agosto de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luis Fabiano 2 (2ºT)']	['Luciano 21 (1ºT)']	1	Corinthians - SP	264	Leandro Pedro Vuaden	FIFA
167	17	2015	Domingo 09 de Agosto de 2015	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Pablo 25 (2ºT)']	[]	0	Flamengo - RJ	262	Jailson Macedo Freitas	ESP
168	17	2015	Domingo 09 de Agosto de 2015	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Alisson 4 (1ºT)', ' De Arrascaeta 37 (2ºT)']	['Cristaldo 29 (2ºT)']	1	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
169	17	2015	Domingo 09 de Agosto de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Atlético - MG	282	Raphael Claus	FIFA
170	17	2015	Domingo 09 de Agosto de 2015	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	5	[' Giuliano 34 (1ºT)', ' Luan 43 (1ºT)', ' Luan 3 (2ºT)', ' Fernandinho 30 (2ºT)', ' Rever 39 (2ºT)']	[]	0	Internacional - RS	285	Dewson Fernando Freitas da Silva	FIFA
171	18	2015	Quarta 12 de Agosto de 2015	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Wallace Reis 11 (1ºT)', ' Emerson Sheik 39 (1ºT)', ' Alan Patrick 44 (1ºT)']	['Hernani 24 (1ºT) ', 'Kadu 20 (2ºT)']	2	Atlético - PR	293	Marcelo Aparecido R de Souza	CBF-1
172	18	2015	Quarta 12 de Agosto de 2015	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' H. Almeida 17 (1ºT)', ' H. Almeida 36 (2ºT)']	['Rafael Marques 1 (2ºT)']	1	Palmeiras - SP	275	Pericles Bassols Pegado Cortez	FIFA
173	18	2015	Quarta 12 de Agosto de 2015	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Chapecoense - SC	315	Wagner do Nascimento Magalhaes	ASP-FIFA
174	18	2015	Quarta 12 de Agosto de 2015	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Victor Ferraz 3 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Emerson Luiz Sobral	CBF-1
175	18	2015	Quarta 12 de Agosto de 2015	22:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	4	[' Luciano 13 (1ºT)', ' Luciano 45+1 (1ºT)', ' Samuel 14 (2ºT)', ' Jadson 41 (2ºT)']	['Andre Felipe 16 (1ºT) ', 'Hernane 26 (2ºT) ', 'Hernane 31 (2ºT)']	3	Sport - PE	292	Luiz Flavio de Oliveira	FIFA
176	18	2015	Quarta 12 de Agosto de 2015	22:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 37 (2ºT)']	[]	0	Fluminense - RJ	266	Flavio Rodrigues Guerra	CBF-1
177	18	2015	Quarta 12 de Agosto de 2015	22:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Alexandre Pato 13 (1ºT) ', 'Rogerio 26 (1ºT)']	2	São Paulo - SP	276	Anderson Daronco	FIFA
178	18	2015	Quinta 13 de Agosto de 2015	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Borges 14 (2ºT)', ' Felipe Azevedo 27 (2ºT)']	[]	0	Avaí - SC	314	Marcelo de Lima Henrique	MAST
179	18	2015	Quinta 13 de Agosto de 2015	21:00	Arena Joinville - Joinville - SC	317	Joinville - SC	3	[' Marcelinho Paraiba 13 (1ºT)', ' Bruno Aguiar 27 (1ºT)', ' Tripodi 26 (2ºT)']	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	FIFA
180	18	2015	Quinta 13 de Agosto de 2015	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Douglas 40 (1ºT) ', 'Luan 9 (2ºT)']	2	Grêmio - RS	284	Dewson Fernando Freitas da Silva	FIFA
181	19	2015	Sábado 15 de Agosto de 2015	18:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Evandro 45+2 (2ºT)']	1	Coritiba - PR	294	Raphael Claus	FIFA
182	19	2015	Sábado 15 de Agosto de 2015	18:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	[]	0	Santos - SP	277	Bruno Arleu de Araujo	CBF-1
183	19	2015	Sábado 15 de Agosto de 2015	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Felipe 26 (1ºT) ', 'Erik 44 (1ºT) ', 'Erik 31 (2ºT)']	3	Goiás - GO	290	Marielson Alves Silva	CBF-1
184	19	2015	Domingo 16 de Agosto de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Cicero 3 (2ºT)', ' Fred 19 (2ºT)']	['Clayton 40 (1ºT)']	1	Figueirense - SC	316	Diego Almeida Real	CBF-1
185	19	2015	Domingo 16 de Agosto de 2015	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Erazo 15 (2ºT)', ' Galhardo 39 (2ºT)']	['Bruno Aguiar 3 (1ºT)']	1	Joinville - SC	317	Jailson Macedo Freitas	ESP
186	19	2015	Domingo 16 de Agosto de 2015	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Jackson 5 (1ºT)', ' Samir 13 (2ºT)', ' Dudu 20 (2ºT)', ' Alecsandro 25 (2ºT)']	['Eder 5 (2ºT) ', 'Eder 11 (2ºT)']	2	Flamengo - RJ	262	Igor Junio Benevenuto	ASP-FIFA
187	19	2015	Domingo 16 de Agosto de 2015	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Internacional - RS	285	Luiz Flavio de Oliveira	FIFA
188	19	2015	Domingo 16 de Agosto de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Andre Lima 14 (1ºT)']	['Luciano 45+2 (1ºT) ', 'Luciano 41 (2ºT)']	2	Corinthians - SP	264	Anderson Daronco	FIFA
189	19	2015	Domingo 16 de Agosto de 2015	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 9 (1ºT)']	['Borges 37 (2ºT)']	1	Ponte Preta - SP	303	Sandro Meira Ricci	FIFA
190	19	2015	Domingo 16 de Agosto de 2015	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Cleber Santana 40 (1ºT)', ' Apodi 32 (2ºT)']	['Neto 18 (2ºT)']	1	Atlético - MG	282	Marcos Andre Gomes da Penha	CBF-1
191	20	2015	Sábado 22 de Agosto de 2015	18:30	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Ze Eduardo 4 (1ºT)', ' Erik 16 (1ºT)', ' Erik 31 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
192	20	2015	Sábado 22 de Agosto de 2015	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	5	[' Gabriel Barbosa 10 (1ºT)', ' Thiago Maia 13 (1ºT)', ' Ricardo Oliveira 2 (2ºT)', ' Nilson 35 (2ºT)', ' Lucas Lima 45+2 (2ºT)']	['Leo Gamalho 28 (1ºT) ', 'Leo Gamalho 37 (2ºT)']	2	Avaí - SC	314	Leandro Pedro Vuaden	FIFA
193	20	2015	Domingo 23 de Agosto de 2015	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Grêmio - RS	284	Emerson de Almeida Ferreira	CBF-1
194	20	2015	Domingo 23 de Agosto de 2015	11:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' H. Almeida 23 (1ºT)']	[]	0	Chapecoense - SC	315	Ricardo Marques Ribeiro	FIFA
195	20	2015	Domingo 23 de Agosto de 2015	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Vagner Love 15 (1ºT)', ' Jadson 45 (1ºT)', ' Vagner Love 2 (2ºT)']	[]	0	Cruzeiro - MG	283	Pericles Bassols Pegado Cortez	FIFA
196	20	2015	Domingo 23 de Agosto de 2015	16:00	Arena Joinville - Joinville - SC	317	Joinville - SC	2	[' Mario Sergio 37 (2ºT)', ' Marlon 45 (2ºT)']	['Cicero 25 (2ºT)']	1	Fluminense - RJ	266	Emerson Luiz Sobral	CBF-1
197	20	2015	Domingo 23 de Agosto de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Eder 42 (1ºT)', ' Guerrero 2 (2ºT)']	['Luiz Eduardo 36 (1ºT)']	1	São Paulo - SP	276	Anderson Daronco	FIFA
198	20	2015	Domingo 23 de Agosto de 2015	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Valdivia 3 (1ºT)', ' Paulão 25 (2ºT)']	[]	0	Atlético - PR	293	Raphael Claus	FIFA
199	20	2015	Domingo 23 de Agosto de 2015	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Lucas Pratto 17 (1ºT)', ' Lucas Pratto 36 (1ºT)']	['Andrei 5 (1ºT)']	1	Palmeiras - SP	275	Sandro Meira Ricci	FIFA
200	20	2015	Sábado 22 de Agosto de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Dudu 18 (2ºT)', ' Bruno Alves 24 (2ºT)']	['Rene 31 (1ºT)']	1	Sport - PE	292	Wagner do Nascimento Magalhaes	ASP-FIFA
201	21	2015	Sábado 29 de Agosto de 2015	18:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Marcao 45+3 (2ºT)']	1	Figueirense - SC	316	Francisco Carlos do Nascimento	MAST
202	21	2015	Sábado 29 de Agosto de 2015	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Michel Bastos 34 (1ºT)', ' PH GANSO 4 (2ºT)', ' Wilder 8 (2ºT)']	[]	0	Ponte Preta - SP	303	Marcelo Aparecido R de Souza	CBF-1
203	21	2015	Domingo 30 de Agosto de 2015	11:00	Ressacada - Florianopolis - SC	314	Avaí - SC	3	[' Leo Gamalho 24 (2ºT)', ' Leo Gamalho 38 (2ºT)', ' Camacho 45+5 (2ºT)']	[]	0	Internacional - RS	285	Pericles Bassols Pegado Cortez	FIFA
204	21	2015	Domingo 30 de Agosto de 2015	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Coritiba - PR	294	Luiz Flavio de Oliveira	FIFA
205	21	2015	Domingo 30 de Agosto de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Wellington Paulista 1 (2ºT)']	['Giovanni Augusto 21 (1ºT) ', 'Patric 37 (2ºT)']	2	Atlético - MG	282	Marielson Alves Silva	CBF-1
207	21	2015	Domingo 30 de Agosto de 2015	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Bruno Rangel 45+3 (1ºT)']	['Elias 10 (1ºT) ', 'Vagner Love 13 (1ºT) ', 'Jadson 44 (2ºT)']	3	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
208	21	2015	Domingo 30 de Agosto de 2015	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Gabriel Jesus 1 (1ºT)', ' Dudu 23 (1ºT)', ' Gabriel Jesus 22 (2ºT)']	['Marcelinho Paraiba 26 (1ºT) ', 'Marcelinho Paraiba 27 (1ºT)']	2	Joinville - SC	317	Bruno Arleu de Araujo	CBF-1
209	21	2015	Domingo 30 de Agosto de 2015	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Ricardo Oliveira 42 (1ºT)']	1	Santos - SP	277	Rodolpho Toski Marques	CBF-1
210	21	2015	Domingo 30 de Agosto de 2015	18:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Walter 26 (1ºT)', ' Walter 32 (2ºT)', ' Ewandro 45 (2ºT)']	[]	0	Goiás - GO	290	Jailson Macedo Freitas	ESP
211	22	2015	Quarta 02 de Setembro de 2015	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	6	[' Ernando 10 (1ºT)', ' Eduardo Sasha 40 (1ºT)', ' Lisandro Lopez 7 (2ºT)', ' Valdivia 12 (2ºT)', ' Nilton 17 (2ºT)', ' Lisandro Lopez 45 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
212	22	2015	Quarta 02 de Setembro de 2015	19:30	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	[]	0	São Paulo - SP	276	Rodolpho Toski Marques	CBF-1
213	22	2015	Quarta 02 de Setembro de 2015	21:00	Arena das Dunas - Natal - RN	262	Flamengo - RJ	3	[' Alan Patrick 30 (1ºT)', ' Kayke 10 (2ºT)', ' Kayke 31 (2ºT)']	[]	0	Avaí - SC	314	Thiago Duarte Peixoto	ASP-FIFA
214	22	2015	Quarta 02 de Setembro de 2015	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Walter 12 (2ºT)']	1	Atlético - PR	293	Marcelo de Lima Henrique	MAST
215	22	2015	Quarta 02 de Setembro de 2015	22:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Marciel 4 (1ºT)', ' Ralf 25 (2ºT)']	[]	0	Fluminense - RJ	266	Sandro Meira Ricci	FIFA
216	22	2015	Quarta 02 de Setembro de 2015	22:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Sport - PE	292	Wilton Pereira Sampaio	FIFA
217	22	2015	Quarta 02 de Setembro de 2015	22:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Bruno Henrique 17 (2ºT)']	[]	0	Palmeiras - SP	275	Leandro Pedro Vuaden	FIFA
218	22	2015	Quinta 03 de Setembro de 2015	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Ricardo Oliveira 15 (1ºT)', ' Geuvanio 12 (2ºT)', ' Ricardo Oliveira 30 (2ºT)']	['Neto 38 (2ºT)']	1	Chapecoense - SC	315	Bruno Arleu de Araujo	CBF-1
219	22	2015	Quarta 02 de Setembro de 2015	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Diego 13 (2ºT)']	['Willians 42 (1ºT) ', 'Vinicius Araujo 45+2 (2ºT)']	2	Cruzeiro - MG	283	Emerson Luiz Sobral	CBF-1
220	22	2015	Quinta 03 de Setembro de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Bobo 7 (1ºT) ', 'Pedro Rocha 32 (2ºT)']	2	Grêmio - RS	284	Raphael Claus	FIFA
221	23	2015	Sábado 05 de Setembro de 2015	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Rogerio 3 (2ºT)', ' Michel Bastos 27 (2ºT)']	[]	0	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
222	23	2015	Sábado 05 de Setembro de 2015	19:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Nenê 28 (2ºT)']	['Lucas Pratto 23 (1ºT) ', 'Datolo 43 (1ºT)']	2	Atlético - MG	282	Elmo Alves Resende Cunha	ESP
223	23	2015	Sábado 05 de Setembro de 2015	21:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	[]	0	Joinville - SC	317	Flavio Rodrigues de Souza	CBF-1
224	23	2015	Domingo 06 de Setembro de 2015	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	5	[' Willian 4 (1ºT)', ' Willian 28 (1ºT)', ' Vinicius Araujo 15 (2ºT)', ' Willian 27 (2ºT)', ' Willian 29 (2ºT)']	['Marquinhos Pedroso 20 (2ºT)']	1	Figueirense - SC	316	Jailson Macedo Freitas	ESP
225	23	2015	Domingo 06 de Setembro de 2015	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Ponte Preta - SP	303	Cleisson Veloso Pereira	CBF-1
226	23	2015	Domingo 06 de Setembro de 2015	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Lucas 19 (1ºT)', ' Robinho 26 (1ºT)', ' Dudu 41 (1ºT)']	['Guilherme Arana 24 (1ºT) ', 'Amaral 37 (1ºT) ', 'Vagner Love 34 (2ºT)']	3	Corinthians - SP	264	Raphael Claus	FIFA
227	23	2015	Domingo 06 de Setembro de 2015	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Jean 12 (2ºT)']	['Emerson Sheik 10 (1ºT) ', 'Kayke 14 (1ºT) ', 'Paulinho 23 (2ºT)']	3	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
228	23	2015	Domingo 06 de Setembro de 2015	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Douglas 6 (2ºT)', ' Everton 37 (2ºT)']	['Bruno Henrique 43 (1ºT)']	1	Goiás - GO	290	Sandro Meira Ricci	FIFA
229	23	2015	Domingo 06 de Setembro de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['H. Almeida 19 (2ºT) ', 'H. Almeida 38 (2ºT)']	2	Coritiba - PR	294	Nielson Nogueira Dias	ESP
230	23	2015	Domingo 06 de Setembro de 2015	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Andre Felipe 27 (1ºT)']	['Ricardo Oliveira 20 (1ºT)']	1	Santos - SP	277	Emerson de Almeida Ferreira	CBF-1
231	24	2015	Quarta 09 de Setembro de 2015	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Nilton 19 (1ºT)']	[]	0	Palmeiras - SP	275	Wagner Reway	ASP-FIFA
232	24	2015	Quarta 09 de Setembro de 2015	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Luan 12 (1ºT)', ' Leo Silva 29 (1ºT)']	[]	0	Avaí - SC	314	Luis Teixeira Rocha	CBF-1
233	24	2015	Quarta 09 de Setembro de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Clayton 42 (1ºT)']	['Walter 40 (1ºT)']	1	Atlético - PR	293	Dewson Fernando Freitas da Silva	FIFA
234	24	2015	Quinta 10 de Setembro de 2015	21:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	[]	0	Chapecoense - SC	315	Braulio da Silva Machado	ASP-FIFA
235	24	2015	Quarta 09 de Setembro de 2015	22:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Renato Augusto 21 (2ºT)']	['Bobo 13 (2ºT)']	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	ESP
236	24	2015	Quarta 09 de Setembro de 2015	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' David Braz 31 (1ºT)', ' Rafael Longuine 42 (1ºT)', ' Ricardo Oliveira 7 (2ºT)']	[]	0	São Paulo - SP	276	Luiz Flavio de Oliveira	FIFA
237	24	2015	Quarta 09 de Setembro de 2015	22:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' H. Almeida 28 (1ºT)']	['Marcos Jr 14 (2ºT)']	1	Fluminense - RJ	266	Leandro Pedro Vuaden	FIFA
238	24	2015	Quarta 09 de Setembro de 2015	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Leandrao 29 (2ºT)']	1	Vasco da Gama - RJ	267	Diego Almeida Real	CBF-1
239	24	2015	Quinta 10 de Setembro de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Carlos Eduardo 35 (2ºT)']	[]	0	Sport - PE	292	Thiago Duarte Peixoto	ASP-FIFA
240	24	2015	Quinta 10 de Setembro de 2015	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Alan Patrick 45+1 (1ºT)', ' Luiz Antonio 23 (2ºT)']	[]	0	Cruzeiro - MG	283	Marcelo Aparecido R de Souza	CBF-1
241	25	2015	Sábado 12 de Setembro de 2015	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Vitinho 45+3 (1ºT)']	1	Internacional - RS	285	Raphael Claus	FIFA
242	25	2015	Sábado 12 de Setembro de 2015	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Jackson 1 (2ºT)', ' Ze Roberto 42 (2ºT)']	[]	0	Figueirense - SC	316	Wagner do Nascimento Magalhaes	ASP-FIFA
243	25	2015	Domingo 13 de Setembro de 2015	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Malcom 39 (1ºT)', ' Uendel 13 (2ºT)', ' Vagner Love 43 (2ºT)']	[]	0	Joinville - SC	317	Wilton Pereira Sampaio	FIFA
244	25	2015	Domingo 13 de Setembro de 2015	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Bady 8 (1ºT)', ' Ferron 23 (1ºT)', ' Borges 42 (1ºT)']	['Rafael Longuine 45+3 (2ºT)']	1	Santos - SP	277	Flavio Rodrigues de Souza	CBF-1
245	25	2015	Domingo 13 de Setembro de 2015	16:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Julio Cesar 4 (1ºT)', ' Nenê 2 (2ºT)']	[]	0	Atlético - PR	293	Andre Luiz de Freitas Castro	ESP
246	25	2015	Domingo 13 de Setembro de 2015	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Everton 45+2 (2ºT)']	['Alexandre Pato 35 (1ºT) ', 'Rogerio 45 (2ºT)']	2	São Paulo - SP	276	Sandro Meira Ricci	FIFA
247	25	2015	Domingo 13 de Setembro de 2015	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Willian 37 (1ºT)']	['Carlos Alberto Carvalho 43 (2ºT)']	1	Atlético - MG	282	Leandro Pedro Vuaden	FIFA
248	25	2015	Domingo 13 de Setembro de 2015	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Bruno Rangel 35 (2ºT)']	['Paulinho 10 (1ºT) ', 'Hector 32 (1ºT) ', 'Kayke 43 (2ºT)']	3	Flamengo - RJ	262	Anderson Daronco	FIFA
249	25	2015	Domingo 13 de Setembro de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Emerson Silva 39 (2ºT)', ' Andre Lima 45+3 (2ºT)']	['Bruno Henrique 29 (1ºT)']	1	Goiás - GO	290	Bruno Arleu de Araujo	CBF-1
250	25	2015	Domingo 13 de Setembro de 2015	18:30	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	1	[' Danilo Barcelos 17 (1ºT)']	[]	0	Fluminense - RJ	266	Heber Roberto Lopes	FIFA
251	26	2015	Quarta 16 de Setembro de 2015	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Jean 37 (1ºT)']	['Lucas Barrios 23 (2ºT) ', 'Gabriel Jesus 30 (2ºT) ', 'Lucas Barrios 44 (2ºT) ', 'Lucas Barrios 45+2 (2ºT)']	4	Palmeiras - SP	275	Anderson Daronco	FIFA
252	26	2015	Quarta 16 de Setembro de 2015	19:30	Arena Joinville - Joinville - SC	317	Joinville - SC	1	[' Edigar Junio 38 (1ºT)']	['Andre Felipe 45 (2ºT)']	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
253	26	2015	Quarta 16 de Setembro de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Renan 34 (2ºT)']	1	Avaí - SC	314	Flavio Rodrigues de Souza	CBF-1
254	26	2015	Quarta 16 de Setembro de 2015	21:00	Couto Pereira - Curitiba - PR	293	Atlético - PR	1	[' Ewandro 33 (2ºT)']	['Douglas 32 (1ºT) ', 'Luan 2 (2ºT)']	2	Grêmio - RS	284	Braulio da Silva Machado	ASP-FIFA
255	26	2015	Quarta 16 de Setembro de 2015	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Gabriel Barbosa 37 (1ºT)', ' Gabriel Barbosa 9 (2ºT)', ' Ricardo Oliveira 25 (2ºT)', ' Marquinhos Gabriel 45+1 (2ºT)']	[]	0	Atlético - MG	282	Heber Roberto Lopes	FIFA
256	26	2015	Quarta 16 de Setembro de 2015	22:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Rever 37 (1ºT)', ' Valdivia 28 (2ºT)']	['Malcom 17 (1ºT)']	1	Corinthians - SP	264	Jailson Macedo Freitas	ESP
257	26	2015	Quarta 16 de Setembro de 2015	22:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Willian 26 (1ºT)', ' Alisson 42 (1ºT)']	['Rafael Silva 25 (1ºT) ', 'Rafael Silva 35 (2ºT)']	2	Vasco da Gama - RJ	267	Thiago Duarte Peixoto	ASP-FIFA
258	26	2015	Quinta 17 de Setembro de 2015	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Chapecoense - SC	315	Elmo Alves Resende Cunha	ESP
259	26	2015	Quarta 16 de Setembro de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Fred 26 (1ºT)']	['Diego 6 (1ºT) ', 'Alexandro 36 (2ºT)']	2	Ponte Preta - SP	303	Dewson Fernando Freitas da Silva	FIFA
260	26	2015	Quinta 17 de Setembro de 2015	21:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	0	[]	['K. Giacomazzi 9 (1ºT) ', 'H. Almeida 25 (1ºT)']	2	Coritiba - PR	294	Marielson Alves Silva	CBF-1
261	27	2015	Sábado 19 de Setembro de 2015	18:30	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	3	[' Vitor Hugo 6 (1ºT)', ' Lucas Barrios 31 (1ºT)', ' Rafael Marques 13 (2ºT)']	['Luan 20 (1ºT) ', 'Luan 40 (2ºT)']	2	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
262	27	2015	Sábado 19 de Setembro de 2015	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Borges 7 (1ºT)', ' Fernando 25 (1ºT)', ' Marlon 41 (1ºT)']	['Gustavo Scarpa 1 (2ºT)']	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	ESP
263	27	2015	Sábado 19 de Setembro de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Alex 36 (1ºT)']	['Thiago Santana 31 (2ºT)']	1	Figueirense - SC	316	Nielson Nogueira Dias	ESP
264	27	2015	Domingo 20 de Setembro de 2015	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' H. Almeida 18 (1ºT)', ' Negueba 44 (1ºT)']	[]	0	Atlético - PR	293	Marcelo de Lima Henrique	MAST
265	27	2015	Domingo 20 de Setembro de 2015	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 40 (2ºT)', ' Jadson 42 (2ºT)']	[]	0	Santos - SP	277	Flavio Rodrigues Guerra	CBF-1
266	27	2015	Domingo 20 de Setembro de 2015	16:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Nenê 1 (1ºT)', ' Rafael Vaz 3 (2ºT)']	['Elber 39 (1ºT)']	1	Sport - PE	292	Heber Roberto Lopes	FIFA
267	27	2015	Domingo 20 de Setembro de 2015	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Marcelo 15 (1ºT)', ' Jemerson 26 (1ºT)', ' Jemerson 10 (2ºT)', ' Datolo 25 (2ºT)']	['Paulinho 18 (1ºT)']	1	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
268	27	2015	Domingo 20 de Setembro de 2015	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Marquinhos 17 (1ºT)', ' Anderson 27 (2ºT)']	['Breno 43 (1ºT)']	1	São Paulo - SP	276	Jailson Macedo Freitas	ESP
269	27	2015	Domingo 20 de Setembro de 2015	11:00	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Fred 19 (1ºT)', ' Erik 27 (2ºT)', ' Erik 42 (2ºT)']	[]	0	Joinville - SC	317	Raphael Claus	FIFA
270	27	2015	Domingo 20 de Setembro de 2015	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Fabiano 11 (1ºT) ', 'Rafael Lima 24 (1ºT)']	2	Cruzeiro - MG	283	Wagner do Nascimento Magalhaes	ASP-FIFA
271	28	2015	Sábado 26 de Setembro de 2015	18:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Fred 28 (1ºT)', ' Gustavo Scarpa 4 (2ºT)']	[]	0	Goiás - GO	290	Marielson Alves Silva	CBF-1
272	28	2015	Sábado 26 de Setembro de 2015	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Giuliano 12 (1ºT)', ' Giuliano 23 (1ºT)', ' Maxi Rodriguez 30 (2ºT)']	['Andre Lima 19 (2ºT)']	1	Avaí - SC	314	Marcelo Aparecido R de Souza	CBF-1
273	28	2015	Domingo 27 de Setembro de 2015	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Marquinhos Gabriel 36 (1ºT)', ' Gabriel Barbosa 14 (2ºT)', ' Weverson 44 (2ºT)']	['Valdivia 26 (1ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	FIFA
274	28	2015	Domingo 27 de Setembro de 2015	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Bruno 29 (1ºT)']	['Diego 14 (1ºT) ', 'Diego 18 (2ºT)']	2	Ponte Preta - SP	303	Sandro Meira Ricci	FIFA
275	28	2015	Domingo 27 de Setembro de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Carlinhos 15 (2ºT)']	['Robinho 45+2 (2ºT)']	1	Palmeiras - SP	275	Anderson Daronco	FIFA
276	28	2015	Domingo 27 de Setembro de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Emerson Sheik 11 (1ºT)']	['Rodrigo 12 (2ºT) ', 'Nenê 16 (2ºT)']	2	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	FIFA
277	28	2015	Domingo 27 de Setembro de 2015	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Leandro Silva 45 (2ºT)']	['Elias 15 (1ºT) ', 'Gil 22 (2ºT) ', 'Renato Augusto 37 (2ºT)']	3	Corinthians - SP	264	Marcelo de Lima Henrique	MAST
278	28	2015	Domingo 27 de Setembro de 2015	16:00	Arena Joinville - Joinville - SC	317	Joinville - SC	2	[' Kempes 16 (2ºT)', ' Willian Popp 38 (2ºT)']	['Luan 7 (2ºT) ', 'Thiago Ribeiro 36 (2ºT)']	2	Atlético - MG	282	Raphael Claus	FIFA
279	28	2015	Domingo 27 de Setembro de 2015	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Diego Souza 24 (1ºT)', ' Apodi 32 (2ºT)', ' Regis 39 (2ºT)']	[]	0	Chapecoense - SC	315	Ricardo Marques Ribeiro	FIFA
280	28	2015	Domingo 27 de Setembro de 2015	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ceara 21 (1ºT)', ' Willian 19 (2ºT)']	[]	0	Coritiba - PR	294	Flavio Rodrigues de Souza	CBF-1
281	29	2015	Sábado 03 de Outubro de 2015	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Leandro 41 (1ºT) ', 'Giovanni Augusto 20 (2ºT) ', 'Lucas Pratto 39 (2ºT)']	3	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
282	29	2015	Sábado 03 de Outubro de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Lisandro Lopez 19 (2ºT)', ' Rodrigo Dourado 36 (2ºT)']	['Elber 34 (2ºT)']	1	Sport - PE	292	Braulio da Silva Machado	ASP-FIFA
283	29	2015	Sábado 03 de Outubro de 2015	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Rogerio 26 (2ºT)']	[]	0	Atlético - PR	293	Igor Junio Benevenuto	ASP-FIFA
284	29	2015	Domingo 04 de Outubro de 2015	11:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Andre Lima 40 (2ºT)']	['Nenê 44 (1ºT)']	1	Vasco da Gama - RJ	267	Luis Teixeira Rocha	CBF-1
285	29	2015	Domingo 04 de Outubro de 2015	11:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Ayrton 12 (2ºT)', ' Gabriel 36 (2ºT)']	[]	0	Joinville - SC	317	Luiz Flavio de Oliveira	FIFA
286	29	2015	Domingo 04 de Outubro de 2015	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Lucas Lima 5 (1ºT)', ' Marquinhos Gabriel 10 (1ºT)', ' Neto Berola 38 (2ºT)']	['Robert 45+1 (2ºT)']	1	Fluminense - RJ	266	Sandro Meira Ricci	FIFA
287	29	2015	Domingo 04 de Outubro de 2015	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Elton 16 (2ºT)', ' Felipe Azevedo 18 (2ºT)']	['Jadson 43 (1ºT) ', 'Rodriguinho 39 (2ºT)']	2	Corinthians - SP	264	Flavio Rodrigues de Souza	CBF-1
288	29	2015	Domingo 04 de Outubro de 2015	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Grêmio - RS	284	Heber Roberto Lopes	FIFA
289	29	2015	Domingo 04 de Outubro de 2015	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Ze Eduardo 45+5 (1ºT)', ' Leandro Silva 21 (2ºT)']	['Dudu 11 (2ºT) ', 'Dudu 14 (2ºT) ', 'Rafael Bastos 41 (2ºT)']	3	Figueirense - SC	316	Ricardo Marques Ribeiro	FIFA
290	29	2015	Domingo 04 de Outubro de 2015	18:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	5	[' Neto 4 (1ºT)', ' Camilo 22 (1ºT)', ' Tulio de Melo 9 (2ºT)', ' Apodi 19 (2ºT)', ' Ananias 41 (2ºT)']	['Dudu 13 (2ºT)']	1	Palmeiras - SP	275	Jailson Macedo Freitas	ESP
291	30	2015	Quarta 14 de Outubro de 2015	22:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Ewandro 35 (1ºT)', ' Bruno Pereirinha 34 (2ºT)']	['Fabricio 28 (2ºT) ', 'De Arrascaeta 39 (2ºT)']	2	Cruzeiro - MG	283	Wagner do Nascimento Magalhaes	ASP-FIFA
292	30	2015	Quarta 14 de Outubro de 2015	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Regis 15 (2ºT)', ' Andre Felipe 18 (2ºT)', ' Andre Felipe 38 (2ºT)']	[]	0	Avaí - SC	314	Pericles Bassols Pegado Cortez	FIFA
293	30	2015	Quarta 14 de Outubro de 2015	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Fernando 27 (1ºT)']	1	Ponte Preta - SP	303	Raphael Claus	FIFA
294	30	2015	Quarta 14 de Outubro de 2015	21:00	Arena Joinville - Joinville - SC	317	Joinville - SC	3	[' Marcelinho Paraiba 32 (1ºT)', ' Rafael Donato 12 (2ºT)', ' Kadu 27 (2ºT)']	['H. Almeida 43 (2ºT)']	1	Coritiba - PR	294	Marcelo de Lima Henrique	MAST
295	30	2015	Quarta 14 de Outubro de 2015	22:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Fred 30 (1ºT)', ' Marcos Jr 3 (2ºT)']	[]	0	São Paulo - SP	276	Braulio da Silva Machado	ASP-FIFA
296	30	2015	Quarta 14 de Outubro de 2015	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Lucas Pratto 16 (1ºT)', ' Marcos Rocha 25 (2ºT)']	['Paulão 38 (1ºT)']	1	Internacional - RS	285	Andre Luiz de Freitas Castro	ESP
297	30	2015	Quarta 14 de Outubro de 2015	21:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Clayton 21 (1ºT)', ' Clayton 20 (2ºT)', ' Dudu 43 (2ºT)']	[]	0	Flamengo - RJ	262	Anderson Daronco	FIFA
298	30	2015	Quinta 15 de Outubro de 2015	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Edu Dracena 15 (1ºT)', ' Malcom 26 (1ºT)', ' Rodriguinho 43 (2ºT)']	[]	0	Goiás - GO	290	Wagner Reway	ASP-FIFA
299	30	2015	Quinta 15 de Outubro de 2015	19:30	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Rodrigo 26 (2ºT)']	['Bruno Rangel 41 (2ºT)']	1	Chapecoense - SC	315	Ricardo Marques Ribeiro	FIFA
300	30	2015	Quinta 15 de Outubro de 2015	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Bressan 26 (1ºT)']	[]	0	Santos - SP	277	Marielson Alves Silva	CBF-1
301	31	2015	Domingo 18 de Outubro de 2015	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Ernando 18 (1ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	FIFA
302	31	2015	Domingo 18 de Outubro de 2015	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Alexandro 4 (2ºT)', ' Alexandro 42 (2ºT)', ' Diego 45+3 (2ºT)']	[]	0	Coritiba - PR	294	Pablo dos Santos Alves	ESP
303	31	2015	Sábado 17 de Outubro de 2015	21:00	Arena Joinville - Joinville - SC	317	Joinville - SC	1	[' Kempes 9 (2ºT)']	[]	0	Figueirense - SC	316	Nielson Nogueira Dias	ESP
304	31	2015	Domingo 18 de Outubro de 2015	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Werley 11 (1ºT)', ' Ricardo Oliveira 17 (1ºT)', ' Ricardo Oliveira 45 (1ºT)']	['David França 3 (2ºT)']	1	Goiás - GO	290	Anderson Daronco	FIFA
305	31	2015	Domingo 18 de Outubro de 2015	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Douglas 4 (1ºT)', ' Bobo 34 (1ºT)']	['Tulio de Melo 11 (2ºT) ', 'Tulio de Melo 32 (2ºT) ', 'Apodi 45+5 (2ºT)']	3	Chapecoense - SC	315	Luiz Flavio de Oliveira	FIFA
306	31	2015	Domingo 18 de Outubro de 2015	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Willian 28 (1ºT)', ' Willian 2 (2ºT)']	[]	0	Fluminense - RJ	266	Andre Luiz de Freitas Castro	ESP
307	31	2015	Domingo 18 de Outubro de 2015	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Bruno 10 (2ºT)']	['Renato Augusto 16 (1ºT) ', 'Vagner Love 28 (1ºT) ', 'Renato Augusto 45+1 (1ºT) ', 'Vagner Love 17 (2ºT)']	4	Corinthians - SP	264	Elmo Alves Resende Cunha	ESP
308	31	2015	Domingo 18 de Outubro de 2015	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Matheus Ferraz 7 (1ºT)', ' Diego Souza 23 (1ºT)', ' Elber 27 (1ºT)', ' Maikon 8 (2ºT)']	['Thiago Ribeiro 38 (2ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
309	31	2015	Domingo 18 de Outubro de 2015	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Luis Fabiano 1 (1ºT)', ' Rodrigo Caio 42 (2ºT)']	['Nenê 45 (1ºT) ', 'Rodrigo 17 (2ºT)']	2	Vasco da Gama - RJ	267	Dewson Fernando Freitas da Silva	FIFA
310	31	2015	Sábado 17 de Outubro de 2015	18:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Andre Lima 23 (2ºT)']	['Gabriel Jesus 16 (1ºT) ', 'Cristaldo 15 (2ºT) ', 'Dudu 32 (2ºT)']	3	Palmeiras - SP	275	Marcelo de Lima Henrique	MAST
311	32	2015	Sábado 24 de Outubro de 2015	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Walter 15 (2ºT)']	1	Atlético - PR	293	Luiz Flavio de Oliveira	FIFA
312	32	2015	Sábado 24 de Outubro de 2015	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Santos - SP	277	Leandro Pedro Vuaden	FIFA
313	32	2015	Sábado 24 de Outubro de 2015	18:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 19 (2ºT)']	[]	0	Joinville - SC	317	Dewson Fernando Freitas da Silva	FIFA
314	32	2015	Sábado 24 de Outubro de 2015	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Marlone 15 (1ºT) ', 'Andre Felipe 13 (2ºT)']	2	Sport - PE	292	Andre Luiz de Freitas Castro	ESP
315	32	2015	Domingo 25 de Outubro de 2015	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Vagner Love 45+2 (1ºT)']	[]	0	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
317	32	2015	Domingo 25 de Outubro de 2015	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Luis 44 (1ºT)']	['Alan Kardec 24 (1ºT) ', 'Alexandre Pato 18 (2ºT)']	2	São Paulo - SP	276	Marielson Alves Silva	CBF-1
318	32	2015	Domingo 25 de Outubro de 2015	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Avaí - SC	314	Anderson Daronco	FIFA
319	32	2015	Domingo 25 de Outubro de 2015	18:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['De Arrascaeta 6 (2ºT)']	1	Cruzeiro - MG	283	Nielson Nogueira Dias	ESP
320	32	2015	Domingo 25 de Outubro de 2015	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Luan 6 (2ºT)', ' Giovanni Augusto 11 (2ºT)']	['Renato Chaves 45+1 (2ºT)']	1	Ponte Preta - SP	303	Sandro Meira Ricci	FIFA
321	33	2015	Sábado 31 de Outubro de 2015	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' PH GANSO 18 (1ºT)', ' Luis Fabiano 43 (1ºT)', ' Michel Bastos 18 (2ºT)']	[]	0	Sport - PE	292	Wagner Reway	ASP-FIFA
322	33	2015	Sábado 31 de Outubro de 2015	19:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Romulo 6 (2ºT)']	['Leandro Damiao 29 (2ºT)']	1	Cruzeiro - MG	283	Raphael Claus	FIFA
323	33	2015	Sábado 31 de Outubro de 2015	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Guti 16 (2ºT)']	[]	0	Joinville - SC	317	Marielson Alves Silva	CBF-1
324	33	2015	Sábado 31 de Outubro de 2015	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Juan 23 (1ºT)']	['Yago Felipe 39 (1ºT)']	1	Figueirense - SC	316	Ricardo Marques Ribeiro	FIFA
325	33	2015	Domingo 01 de Novembro de 2015	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Everton 6 (2ºT)', ' Bobo 39 (2ºT)']	[]	0	Flamengo - RJ	262	Braulio da Silva Machado	ASP-FIFA
326	33	2015	Domingo 01 de Novembro de 2015	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Malcom 22 (2ºT) ', 'Vagner Love 29 (2ºT) ', 'Lucca 39 (2ºT)']	3	Corinthians - SP	264	Heber Roberto Lopes	FIFA
327	33	2015	Domingo 01 de Novembro de 2015	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Thiago Maia 27 (1ºT)', ' Ricardo Oliveira 3 (2ºT)']	['Dudu 29 (2ºT)']	1	Palmeiras - SP	275	Pericles Bassols Pegado Cortez	FIFA
328	33	2015	Domingo 01 de Novembro de 2015	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Atlético - PR	293	Andre Luiz de Freitas Castro	ESP
329	33	2015	Domingo 01 de Novembro de 2015	18:00	Nilton Santos - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Gerson 45+2 (1ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
330	33	2015	Domingo 01 de Novembro de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Ze Eduardo 2 (2ºT)', ' Bruno Henrique 6 (2ºT)']	['Valdivia 19 (1ºT)']	1	Internacional - RS	285	Marcelo Aparecido R de Souza	CBF-1
331	34	2015	Sábado 07 de Novembro de 2015	17:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 42 (2ºT)']	[]	0	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
332	34	2015	Sábado 07 de Novembro de 2015	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 16 (1ºT)', ' Lucca 43 (2ºT)']	['Negueba 1 (2ºT)']	1	Coritiba - PR	294	Dewson Fernando Freitas da Silva	FIFA
333	34	2015	Sábado 07 de Novembro de 2015	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Walter 34 (1ºT)', ' Sidcley 43 (1ºT)']	['Anderson 13 (2ºT)']	1	Avaí - SC	314	Marielson Alves Silva	CBF-1
334	34	2015	Sábado 07 de Novembro de 2015	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Jean 19 (1ºT)', ' Gustavo Scarpa 3 (2ºT)']	['Tulio de Melo 29 (1ºT) ', 'William 33 (1ºT) ', 'Camilo 18 (2ºT)']	3	Chapecoense - SC	315	Nielson Nogueira Dias	ESP
335	34	2015	Domingo 08 de Novembro de 2015	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Rafael Silva 35 (1ºT) ', 'Nenê 39 (1ºT)']	2	Vasco da Gama - RJ	267	Anderson Daronco	FIFA
336	34	2015	Domingo 08 de Novembro de 2015	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Willian 32 (1ºT)', ' Leandro Damiao 35 (2ºT)']	['Luis Fabiano 30 (1ºT)']	1	São Paulo - SP	276	Marcelo de Lima Henrique	MAST
337	34	2015	Domingo 08 de Novembro de 2015	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Datolo 45 (2ºT)']	1	Atlético - MG	282	Marcelo Aparecido R de Souza	CBF-1
338	34	2015	Domingo 08 de Novembro de 2015	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Alan Patrick 18 (1ºT)', ' Alan Patrick 2 (2ºT)', ' Kayke 5 (2ºT)', ' Kayke 18 (2ºT)']	['Erik 45+1 (1ºT)']	1	Goiás - GO	290	Luiz Flavio de Oliveira	FIFA
339	34	2015	Domingo 08 de Novembro de 2015	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Andre Felipe 25 (2ºT)']	[]	0	Grêmio - RS	284	Heber Roberto Lopes	FIFA
340	34	2015	Domingo 08 de Novembro de 2015	18:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	[]	0	Santos - SP	277	Wagner Reway	ASP-FIFA
341	35	2015	Domingo 15 de Novembro de 2015	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Willians 13 (2ºT)', ' Durval 15 (2ºT)', ' Marcos Vinicius 20 (2ºT)']	[]	0	Sport - PE	292	Marielson Alves Silva	CBF-1
342	35	2015	Quarta 18 de Novembro de 2015	21:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Marcos Guilherme 2 (1ºT)', ' Ewandro 39 (2ºT)', ' Ewandro 41 (2ºT)']	['Robinho 9 (2ºT) ', 'Jackson 30 (2ºT) ', 'Alecsandro 45+4 (2ºT)']	3	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
343	35	2015	Quarta 18 de Novembro de 2015	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Fred 34 (2ºT)']	['Juan 1 (1ºT) ', 'João Paulo 45+2 (1ºT) ', 'H. Almeida 45+3 (2ºT)']	3	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
344	35	2015	Quarta 18 de Novembro de 2015	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Clayton 13 (1ºT)']	1	Figueirense - SC	316	Francisco Carlos do Nascimento	MAST
345	35	2015	Quarta 18 de Novembro de 2015	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Andre Lima 18 (1ºT)', ' Everton Silva 43 (2ºT)']	['Fernando Viana 42 (1ºT)']	1	Joinville - SC	317	Luiz Flavio de Oliveira	FIFA
346	35	2015	Quinta 19 de Novembro de 2015	22:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[' Alan Kardec 23 (2ºT)', ' Michel Bastos 29 (2ºT)', ' Alan Kardec 39 (2ºT)', ' Luis Fabiano 45 (2ºT)']	['Luan 11 (2ºT) ', 'Datolo 25 (2ºT)']	2	Atlético - MG	282	Leandro Pedro Vuaden	FIFA
347	35	2015	Quinta 19 de Novembro de 2015	22:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Flamengo - RJ	262	Heber Roberto Lopes	FIFA
348	35	2015	Quinta 19 de Novembro de 2015	22:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Julio Cesar 27 (2ºT)']	['Vagner Love 36 (2ºT)']	1	Corinthians - SP	264	Anderson Daronco	FIFA
349	35	2015	Quinta 19 de Novembro de 2015	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Ananias 19 (2ºT)']	[]	0	Internacional - RS	285	Marcelo de Lima Henrique	MAST
350	35	2015	Quinta 19 de Novembro de 2015	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Luan 14 (2ºT)']	[]	0	Fluminense - RJ	266	Wagner Reway	ASP-FIFA
351	36	2015	Sábado 21 de Novembro de 2015	19:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Lucas Barrios 25 (2ºT)']	['Marcos Vinicius 20 (1ºT)']	1	Cruzeiro - MG	283	Elmo Alves Resende Cunha	ESP
352	36	2015	Domingo 22 de Novembro de 2015	17:00	Arena Joinville - Joinville - SC	317	Joinville - SC	1	[' Rafael Donato 35 (2ºT)']	['Nenê 5 (1ºT) ', 'Riascos 9 (1ºT)']	2	Vasco da Gama - RJ	267	Marcelo Aparecido R de Souza	CBF-1
353	36	2015	Domingo 22 de Novembro de 2015	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	6	[' Bruno 26 (1ºT)', ' Angel Romero 28 (1ºT)', ' Edu Dracena 45 (1ºT)', ' Lucca 15 (2ºT)', ' Angel Romero 18 (2ºT)', ' Cristian 31 (2ºT)']	['Carlinhos 24 (2ºT)']	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	FIFA
354	36	2015	Domingo 22 de Novembro de 2015	17:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 7 (2ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
355	36	2015	Domingo 22 de Novembro de 2015	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Luan 22 (1ºT)', ' Marcos Rocha 11 (2ºT)']	['Erik 38 (1ºT) ', 'Bruno Henrique 14 (2ºT)']	2	Goiás - GO	290	Nielson Nogueira Dias	ESP
356	36	2015	Domingo 22 de Novembro de 2015	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Chapecoense - SC	315	Anderson Daronco	FIFA
357	36	2015	Domingo 22 de Novembro de 2015	18:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	1	[' Gabriel 10 (2ºT)']	['Diego 32 (2ºT)']	1	Ponte Preta - SP	303	Dewson Fernando Freitas da Silva	FIFA
358	36	2015	Domingo 22 de Novembro de 2015	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Atlético - PR	293	Andre Luiz de Freitas Castro	ESP
359	36	2015	Domingo 22 de Novembro de 2015	19:30	Kleber Andrade - Cariacica - ES	266	Fluminense - RJ	3	[' Gum 20 (1ºT)', ' Osvaldo 29 (2ºT)', ' Fred 40 (2ºT)']	['Leo Gamalho 44 (2ºT)']	1	Avaí - SC	314	Flavio Rodrigues Guerra	CBF-1
360	36	2015	Domingo 22 de Novembro de 2015	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' H. Almeida 12 (2ºT)']	[]	0	Santos - SP	277	Marielson Alves Silva	CBF-1
361	37	2015	Sábado 28 de Novembro de 2015	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Luis Fabiano 10 (1ºT)', ' Alan Kardec 45 (2ºT)', ' Thiago Mendes 45+3 (2ºT)']	['Clayton 28 (1ºT) ', 'Carlos Alberto 30 (2ºT)']	2	Figueirense - SC	316	Wagner Reway	ASP-FIFA
362	37	2015	Sábado 28 de Novembro de 2015	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Cicero 28 (2ºT)']	['Vitinho 4 (1ºT)']	1	Internacional - RS	285	Marielson Alves Silva	CBF-1
363	37	2015	Sábado 28 de Novembro de 2015	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Antonio Carlos 20 (2ºT)']	[]	0	Ponte Preta - SP	303	Anderson Daronco	FIFA
364	37	2015	Domingo 29 de Novembro de 2015	17:00	Arena Pernambuco - Sao Lourenco da Mata - PE	292	Sport - PE	2	[' Matheus Ferraz 25 (1ºT)', ' Andre Felipe 45 (2ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
365	37	2015	Domingo 29 de Novembro de 2015	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Everton 30 (1ºT)', ' Luan 23 (2ºT)']	['Lucas Pratto 41 (1ºT)']	1	Atlético - MG	282	Pericles Bassols Pegado Cortez	FIFA
366	37	2015	Domingo 29 de Novembro de 2015	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Willian 34 (1ºT)', ' Charles 39 (1ºT)', ' Alisson 19 (2ºT)']	[]	0	Joinville - SC	317	Rodolpho Toski Marques	CBF-1
367	37	2015	Domingo 29 de Novembro de 2015	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Nenê 45 (1ºT)']	[]	0	Santos - SP	277	Leandro Pedro Vuaden	FIFA
368	37	2015	Domingo 29 de Novembro de 2015	18:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Juan 23 (1ºT) ', 'H. Almeida 45+3 (2ºT)']	2	Coritiba - PR	294	Igor Junio Benevenuto	ASP-FIFA
369	37	2015	Domingo 29 de Novembro de 2015	18:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tulio de Melo 1 (2ºT)']	['Erik 28 (1ºT) ', 'Fred 32 (1ºT) ', 'Fred 33 (2ºT)']	3	Goiás - GO	290	Flavio Rodrigues de Souza	CBF-1
370	37	2015	Domingo 29 de Novembro de 2015	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Roberto 12 (1ºT)', ' Cleberson 32 (1ºT)', ' Cleberson 22 (2ºT)']	[]	0	Flamengo - RJ	262	Marcelo Aparecido R de Souza	CBF-1
371	38	2015	Domingo 06 de Dezembro de 2015	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Vagner Love 32 (2ºT)']	['Claudinei 12 (2ºT)']	1	Avaí - SC	314	Leandro Pedro Vuaden	FIFA
21	3	2016	Quarta 25 de Maio de 2016	19:30	Mário Helênio - Juiz de Fora - MG	296	Botafogo - RJ	2	[' Lucas Ribamar 18 (1ºT)', ' Neilton 27 (2ºT)']	['Vinicius 12 (2ºT)']	1	Atlético - PR	293	Dewson Fernando Freitas da Silva	FIFA
372	38	2015	Domingo 06 de Dezembro de 2015	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	5	[' Geuvanio 14 (1ºT)', ' Gabriel Barbosa 29 (1ºT)', ' Gabriel Barbosa 14 (2ºT)', ' Vitor Bueno 28 (2ºT)', ' Geuvanio 34 (2ºT)']	['Cleberson 12 (1ºT)']	1	Atlético - PR	293	Marcelo de Lima Henrique	MAST
373	38	2015	Domingo 06 de Dezembro de 2015	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Diego Souza 17 (2ºT)']	1	Sport - PE	292	Pericles Bassols Pegado Cortez	FIFA
374	38	2015	Domingo 06 de Dezembro de 2015	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Para 30 (2ºT)']	['Dudu 27 (2ºT) ', 'Vitor Hugo 44 (2ºT)']	2	Palmeiras - SP	275	Wagner Reway	ASP-FIFA
375	38	2015	Domingo 06 de Dezembro de 2015	17:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Vitinho 25 (1ºT)', ' Vitinho 16 (2ºT)']	[]	0	Cruzeiro - MG	283	Andre Luiz de Freitas Castro	ESP
376	38	2015	Domingo 06 de Dezembro de 2015	17:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Thiago Ribeiro 38 (1ºT)', ' Leo Silva 5 (2ºT)', ' Patric 22 (2ºT)']	[]	0	Chapecoense - SC	315	Wilton Pereira Sampaio	FIFA
377	38	2015	Domingo 06 de Dezembro de 2015	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Marcao 3 (2ºT)']	[]	0	Fluminense - RJ	266	Dewson Fernando Freitas da Silva	FIFA
378	38	2015	Domingo 06 de Dezembro de 2015	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Vasco da Gama - RJ	267	Anderson Daronco	FIFA
379	38	2015	Domingo 06 de Dezembro de 2015	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Rogerio 45+2 (2ºT)']	1	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
380	38	2015	Domingo 06 de Dezembro de 2015	17:00	Arena Joinville - Joinville - SC	317	Joinville - SC	0	[]	['M. Oliveira 5 (1ºT) ', 'Bobo 15 (2ºT)']	2	Grêmio - RS	284	Raphael Claus	FIFA
1	1	2016	Sábado 14 de Maio de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Roger Guedes 18 (1ºT)', ' Gabriel Jesus 1 (2ºT)', ' Thiago Martins 6 (2ºT)', ' Gabriel Jesus 41 (2ºT)']	[]	0	Atlético - PR	293	Bruno Arleu de Araujo	CBF
2	1	2016	Sábado 14 de Maio de 2016	16:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	1	[' Everton 5 (1ºT)']	[]	0	Sport - PE	292	Marcelo Aparecido R de Souza	CBF
3	1	2016	Sábado 14 de Maio de 2016	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Cazares 14 (1ºT)']	[]	0	Santos - SP	277	Jailson Macedo Freitas	CBF
4	1	2016	Sábado 14 de Maio de 2016	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' K. Giacomazzi 25 (2ºT)']	[]	0	Cruzeiro - MG	283	Jean Pierre Goncalves Lima	CBF
5	1	2016	Domingo 15 de Maio de 2016	11:00	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	0	[]	['Lucas 22 (1ºT)']	1	São Paulo - SP	276	Braulio da Silva Machado	CBF
6	1	2016	Domingo 15 de Maio de 2016	11:00	Arruda - Recife - PE	344	Santa Cruz - PE	4	[' Grafite 28 (1ºT)', ' Grafite 44 (1ºT)', ' Fernando Gabriel 39 (2ºT)', ' Keno 41 (2ºT)']	['Kieza 34 (2ºT)']	1	Vitória - BA	287	Pablo dos Santos Alves	CBF
7	1	2016	Domingo 15 de Maio de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
8	1	2016	Domingo 15 de Maio de 2016	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Ponte Preta - SP	303	Emerson de Almeida Ferreira	CBF
9	1	2016	Domingo 15 de Maio de 2016	16:00	Independência - Belo Horizonte - MG	327	América - MG	0	[]	['Fred 38 (1ºT)']	1	Fluminense - RJ	266	Thiago Duarte Peixoto	CBF
10	1	2016	Domingo 15 de Maio de 2016	18:30	Beira Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Chapecoense - SC	315	Nielson Nogueira Dias	CBF
11	2	2016	Domingo 22 de Maio de 2016	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Leandro 29 (1ºT)', ' Marinho 11 (2ºT)', ' Kieza 19 (2ºT)']	['Uendel 25 (1ºT) ', 'Fagner 38 (1ºT)']	2	Corinthians - SP	264	Heber Roberto Lopes	CBF
12	2	2016	Sábado 21 de Maio de 2016	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	2	[' Gustavo Scarpa 12 (2ºT)', ' Gum 14 (2ºT)']	['Grafite 7 (2ºT) ', 'Grafite 38 (2ºT)']	2	Santa Cruz - PE	344	Jailson Macedo Freitas	CBF
13	2	2016	Sábado 21 de Maio de 2016	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Elber 11 (2ºT)', ' Douglas 17 (2ºT)']	['Rafael Moura 41 (1ºT) ', 'Rafael Moura 10 (2ºT)']	2	Figueirense - SC	316	Wagner Reway	FIFA
14	2	2016	Domingo 22 de Maio de 2016	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Vitor Bueno 16 (2ºT)', ' Renato 45+6 (2ºT)']	['K. Giacomazzi 19 (1ºT)']	1	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
15	2	2016	Domingo 22 de Maio de 2016	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Andre Lima 9 (1ºT)']	['Cazares 31 (2ºT)']	1	Atlético - MG	282	Flavio Rodrigues de Souza	CBF
16	2	2016	Domingo 22 de Maio de 2016	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Bruno Rangel 2 (2ºT)', ' Silvinho 31 (2ºT)', ' Bruno Rangel 32 (2ºT)']	['Rafael Bastos 20 (1ºT)']	1	América - MG	327	Eduardo Tomaz de Aquino Valadao	CBF
17	2	2016	Domingo 22 de Maio de 2016	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Diego Lugano 41 (2ºT)']	['Eduardo Sasha 35 (1ºT) ', 'Eduardo Sasha 43 (2ºT)']	2	Internacional - RS	285	Pericles Bassols Pegado Cortez	CBF
18	2	2016	Domingo 22 de Maio de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Fred 8 (2ºT)']	[]	0	Flamengo - RJ	262	Luiz Flavio de Oliveira	FIFA
19	2	2016	Sábado 21 de Maio de 2016	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Felipe Azevedo 23 (1ºT)', ' Felipe Azevedo 32 (1ºT)']	['Moises 45 (2ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	CBF
20	2	2016	Domingo 22 de Maio de 2016	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 18 (1ºT)']	['Jonathan 28 (1ºT)']	1	Botafogo - RJ	296	Vinicius Furlan	CBF
22	3	2016	Quarta 25 de Maio de 2016	21:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	2	[' Felipe Vizeu 8 (1ºT)', ' Alan Patrick 45+5 (2ºT)']	['Bruno Rangel 12 (1ºT) ', 'Hyoran 34 (2ºT)']	2	Chapecoense - SC	315	Diego Almeida Real	CBF
23	3	2016	Quarta 25 de Maio de 2016	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Rafael Moura 37 (1ºT)', ' Gustavo Ermel 45+1 (2ºT)']	['Vitor Bueno 42 (1ºT) ', 'Joel 13 (2ºT)']	2	Santos - SP	277	Wagner do Nascimento Magalhaes	FIFA
24	3	2016	Quarta 25 de Maio de 2016	21:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Victor Rangel 29 (2ºT)']	['Kieza 39 (2ºT)']	1	Vitória - BA	287	Gilberto Rodrigues Castro Junior	CBF
25	3	2016	Quarta 25 de Maio de 2016	21:45	Arruda - Recife - PE	344	Santa Cruz - PE	4	[' Grafite 19 (1ºT)', ' Grafite 20 (2ºT)', ' Arthur Caike 31 (2ºT)', ' Keno 44 (2ºT)']	['De Arrascaeta 7 (2ºT)']	1	Cruzeiro - MG	283	Anderson Daronco	FIFA
26	3	2016	Quarta 25 de Maio de 2016	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Vitor Hugo 11 (2ºT)', ' Alecsandro 14 (2ºT)']	[]	0	Fluminense - RJ	266	Sandro Meira Ricci	FIFA
27	3	2016	Quinta 26 de Maio de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Rene 12 (2ºT)']	[]	0	Sport - PE	292	Igor Junio Benevenuto	CBF
28	3	2016	Quarta 25 de Maio de 2016	21:45	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Alan Santos 18 (2ºT)']	['Rogerio 34 (2ºT)']	1	São Paulo - SP	276	Marielson Alves Silva	CBF
29	3	2016	Quinta 26 de Maio de 2016	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Kadu 14 (1ºT)', ' Bruno 21 (1ºT)', ' Guilherme 34 (2ºT)']	[]	0	Ponte Preta - SP	303	Elmo Alves Resende Cunha	CBF
30	3	2016	Quinta 26 de Maio de 2016	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['M. Oliveira 17 (1ºT) ', 'Luan 26 (1ºT) ', 'Luan 45+2 (1ºT)']	3	Grêmio - RS	284	Raphael Claus	FIFA
31	4	2016	Sábado 28 de Maio de 2016	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' De Arrascaeta 36 (2ºT)']	['Victor Rangel 29 (1ºT)']	1	América - MG	327	Dewson Fernando Freitas da Silva	FIFA
32	4	2016	Sábado 28 de Maio de 2016	18:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Ewandro 23 (1ºT)', ' Thiago Heleno 43 (1ºT)']	['Bruno Alves 28 (2ºT)']	1	Figueirense - SC	316	Pericles Bassols Pegado Cortez	CBF
33	4	2016	Sábado 28 de Maio de 2016	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tiago Costa 38 (2ºT)']	['Arthur Caike 37 (1ºT)']	1	Santa Cruz - PE	344	Rafael Traci	CBF
34	4	2016	Domingo 29 de Maio de 2016	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Wellington Paulista 11 (1ºT)']	['Felipe Azevedo 21 (1ºT) ', 'Jorge 42 (1ºT)']	2	Flamengo - RJ	262	Anderson Daronco	FIFA
35	4	2016	Domingo 29 de Maio de 2016	11:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Lucca 24 (2ºT) ', 'Marquinhos Gabriel 33 (2ºT)']	2	Corinthians - SP	264	Wagner Reway	FIFA
36	4	2016	Domingo 29 de Maio de 2016	16:00	Arena Fonte Nova - Salvador - BA	287	Vitória - BA	1	[' Kieza 33 (2ºT)']	['Patric 36 (1ºT)']	1	Atlético - MG	282	Rodolpho Toski Marques	FIFA
37	4	2016	Domingo 29 de Maio de 2016	16:00	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[' Fred 5 (2ºT)']	[]	0	Botafogo - RJ	296	Marcelo Aparecido R de Souza	CBF
38	4	2016	Domingo 29 de Maio de 2016	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' PH GANSO 11 (1ºT)']	[]	0	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
39	4	2016	Domingo 29 de Maio de 2016	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Everton 38 (1ºT)', ' Luan 22 (2ºT)']	[]	0	Coritiba - PR	294	Sandro Meira Ricci	FIFA
40	4	2016	Domingo 29 de Maio de 2016	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Aylon 38 (2ºT)']	1	Internacional - RS	285	Andre Luiz de Freitas Castro	CBF
41	5	2016	Quarta 01 de Junho de 2016	21:45	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	0	[]	['Elber 27 (1ºT)']	1	Cruzeiro - MG	283	Elmo Alves Resende Cunha	CBF
42	5	2016	Quarta 01 de Junho de 2016	19:30	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 38 (1ºT)']	[]	0	Atlético - PR	293	Wagner do Nascimento Magalhaes	FIFA
43	5	2016	Quarta 01 de Junho de 2016	21:00	Durival Britto - Curitiba - PR	294	Coritiba - PR	3	[' Rafael Marques 9 (1ºT)', ' Ortega 21 (2ºT)', ' Juninho 45+3 (2ºT)']	['Bruno Rangel 23 (1ºT) ', 'Bruno Rangel 39 (1ºT) ', 'Bruno Rangel 36 (2ºT) ', 'Lucas 44 (2ºT)']	4	Chapecoense - SC	315	Pablo dos Santos Alves	CBF
44	5	2016	Quarta 01 de Junho de 2016	21:45	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Rafael Moura 15 (1ºT)']	[]	0	São Paulo - SP	276	Jean Pierre Goncalves Lima	CBF
45	5	2016	Quarta 01 de Junho de 2016	21:00	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Edmilson dos Santos Silva 9 (1ºT)']	1	Sport - PE	292	Raphael Claus	FIFA
46	5	2016	Quarta 01 de Junho de 2016	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Giovanni Augusto 36 (2ºT)']	[]	0	Santos - SP	277	Leandro Pedro Vuaden	CBF
47	5	2016	Quarta 01 de Junho de 2016	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Tiago 2 (1ºT)']	['Gustavo Scarpa 30 (1ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
48	5	2016	Quinta 02 de Junho de 2016	19:30	Independência - Belo Horizonte - MG	327	América - MG	1	[' Danilo Barcelos 24 (2ºT)']	['Felipe Azevedo 5 (1ºT) ', 'Clayson 18 (1ºT)']	2	Ponte Preta - SP	303	Leonardo Garcia Cavaleiro	CBF
49	5	2016	Quinta 02 de Junho de 2016	21:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	1	[' Felipe Vizeu 18 (2ºT)']	[]	0	Vitória - BA	287	Igor Junio Benevenuto	CBF
272	28	2016	Sábado 01 de Outubro de 2016	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
50	5	2016	Quinta 02 de Junho de 2016	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	4	[' Gabriel Jesus 1 (1ºT)', ' Roger Guedes 11 (2ºT)', ' Vitor Hugo 27 (2ºT)', ' Thiago Santos 38 (2ºT)']	['Giuliano 45+4 (1ºT) ', 'Giuliano 9 (2ºT) ', 'Edilson 45 (2ºT)']	3	Grêmio - RS	284	Marielson Alves Silva	CBF
51	6	2016	Sábado 04 de Junho de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Deivid 14 (2ºT)']	[]	0	Santa Cruz - PE	344	Wagner Reway	FIFA
52	6	2016	Domingo 05 de Junho de 2016	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Ytalo 22 (1ºT)']	1	São Paulo - SP	276	Andre Luiz de Freitas Castro	CBF
53	6	2016	Sábado 04 de Junho de 2016	20:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
54	6	2016	Sábado 04 de Junho de 2016	20:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Andre Felipe 44 (2ºT)', ' Uendel 45+4 (2ºT)']	['Negueba 45+1 (1ºT)']	1	Coritiba - PR	294	Anderson Daronco	FIFA
55	6	2016	Domingo 05 de Junho de 2016	11:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Osman Junior 25 (2ºT)']	[]	0	Figueirense - SC	316	Raphael Claus	FIFA
56	6	2016	Domingo 05 de Junho de 2016	11:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Vitor Bueno 10 (1ºT)', ' Paulinho 35 (1ºT)', ' Bruno Silva 24 (2ºT)']	[]	0	Botafogo - RJ	296	Sandro Meira Ricci	FIFA
57	6	2016	Domingo 05 de Junho de 2016	16:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	1	[' Alan Patrick 5 (1ºT)']	['Gabriel Jesus 3 (1ºT) ', 'Jean 26 (2ºT)']	2	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
58	6	2016	Domingo 05 de Junho de 2016	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Marinho 4 (1ºT)']	[]	0	Internacional - RS	285	Thiago Duarte Peixoto	CBF
59	6	2016	Domingo 05 de Junho de 2016	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Rithely 25 (1ºT)', ' Gabriel Xavier 44 (1ºT)', ' Edmilson dos Santos Silva 28 (2ºT)', ' Diego Souza 31 (2ºT)']	['Junior Urso 21 (1ºT) ', 'Robinho 29 (1ºT) ', 'Patric 41 (1ºT) ', 'Robinho 45+2 (1ºT)']	4	Atlético - MG	282	Rodrigo Nunes de Sa	CBF
60	6	2016	Domingo 05 de Junho de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Luan 45+4 (2ºT)']	[]	0	Ponte Preta - SP	303	Pericles Bassols Pegado Cortez	CBF
61	7	2016	Sábado 11 de Junho de 2016	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Felipe Azevedo 45+2 (1ºT)', ' Pottker 44 (2ºT)']	['Arthur 33 (2ºT)']	1	Chapecoense - SC	315	Rodrigo Batista Raposo	CBF
62	7	2016	Sábado 11 de Junho de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Aylon 2 (1ºT)', ' Aylon 6 (1ºT)', ' Ernando 28 (2ºT)']	['Adalberto 19 (1ºT)']	1	América - MG	327	Luiz Flavio de Oliveira	FIFA
63	7	2016	Sábado 11 de Junho de 2016	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Maicon 41 (1ºT)']	['Otavio 20 (2ºT) ', 'Hernani 42 (2ºT)']	2	Atlético - PR	293	Anderson Daronco	FIFA
64	7	2016	Domingo 12 de Junho de 2016	19:00	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Zeca 44 (1ºT) ', 'Joel 20 (2ºT)']	2	Santos - SP	277	Elmo Alves Resende Cunha	CBF
65	7	2016	Domingo 12 de Junho de 2016	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Rafael Moura 41 (1ºT)']	[]	0	Flamengo - RJ	262	Leandro Pedro Vuaden	CBF
66	7	2016	Sábado 11 de Junho de 2016	18:30	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[' Marcos Jr 29 (2ºT)']	['Marcelo Hermes 40 (1ºT)']	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	CBF
67	7	2016	Domingo 12 de Junho de 2016	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Rafael Carioca 13 (1ºT)', ' Fred 11 (2ºT)']	['Alisson 19 (1ºT) ', 'Riascos 3 (2ºT) ', 'Bruno Rodrigo 18 (2ºT)']	3	Cruzeiro - MG	283	Marcelo Aparecido R de Souza	CBF
68	7	2016	Domingo 12 de Junho de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Cleiton Xavier 2 (2ºT)']	[]	0	Corinthians - SP	264	Raphael Claus	FIFA
69	7	2016	Domingo 12 de Junho de 2016	11:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' Ruy 37 (1ºT)', ' K. Giacomazzi 2 (2ºT)', ' Luccas Claro 25 (2ºT)']	['Diego Souza 25 (1ºT) ', 'Diego Souza 6 (2ºT)']	2	Sport - PE	292	Braulio da Silva Machado	CBF
70	7	2016	Domingo 12 de Junho de 2016	11:00	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	1	[' Sassa 6 (2ºT)']	['Victor Ramos 45+1 (2ºT)']	1	Vitória - BA	287	Ricardo Marques Ribeiro	FIFA
71	8	2016	Quarta 15 de Junho de 2016	21:45	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' João Paulo 19 (1ºT)', ' Weverson 45+4 (2ºT)']	['Roger Guedes 6 (1ºT) ', 'Cristaldo 23 (2ºT)']	2	Palmeiras - SP	275	Anderson Daronco	FIFA
72	8	2016	Quarta 15 de Junho de 2016	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Fabio 2 (1ºT)', ' Reinaldo 16 (2ºT)', ' Jeferson 23 (2ºT)']	['Paulo Andre 10 (1ºT) ', 'Walter 45+2 (2ºT)']	2	Atlético - PR	293	Elmo Alves Resende Cunha	CBF
73	8	2016	Quarta 15 de Junho de 2016	21:00	Raulino de Oliveira - Volta Redonda - RJ	296	Botafogo - RJ	3	[' Sassa 23 (1ºT)', ' Sassa 31 (1ºT)', ' Sassa 38 (1ºT)']	['Bruno Savio 2 (2ºT)']	1	América - MG	327	Rodrigo Batista Raposo	CBF
74	8	2016	Quarta 15 de Junho de 2016	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Gabriel Barbosa 20 (2ºT)', ' Vitor Bueno 42 (2ºT)']	[]	0	Sport - PE	292	Leandro Pedro Vuaden	CBF
75	8	2016	Quarta 15 de Junho de 2016	21:00	Arruda - Recife - PE	344	Santa Cruz - PE	1	[' Lele 26 (1ºT)']	[]	0	Figueirense - SC	316	Marcelo Aparecido R de Souza	CBF
76	8	2016	Quarta 15 de Junho de 2016	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Calleri 30 (2ºT)', ' Diego Lugano 41 (2ºT)']	[]	0	Vitória - BA	287	Wagner Reway	FIFA
77	8	2016	Quarta 15 de Junho de 2016	21:45	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Rever 42 (1ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
78	8	2016	Quinta 16 de Junho de 2016	19:30	Beira Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Eduardo Sasha 34 (1ºT)', ' Vitinho 30 (2ºT)']	[]	0	Atlético - MG	282	Pericles Bassols Pegado Cortez	CBF
79	8	2016	Quinta 16 de Junho de 2016	20:00	Mané Garrincha - Brasilia - DF	266	Fluminense - RJ	1	[' Cicero 17 (2ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
80	8	2016	Quarta 15 de Junho de 2016	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' William 17 (1ºT)', ' Bruno Rangel 25 (1ºT)', ' William 36 (2ºT)']	['Geromel 2 (1ºT) ', 'Jailson 42 (1ºT) ', 'Giuliano 37 (2ºT)']	3	Grêmio - RS	284	Luiz Flavio de Oliveira	FIFA
81	9	2016	Sábado 18 de Junho de 2016	18:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Paulo Andre 43 (2ºT)']	[]	0	Santos - SP	277	Anderson Daronco	FIFA
82	9	2016	Sábado 18 de Junho de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Dudu 28 (1ºT)', ' Jean 45+1 (1ºT)', ' Dudu 20 (2ºT)']	['Grafite 6 (2ºT)']	1	Santa Cruz - PE	344	Eduardo Tomaz de Aquino Valadao	CBF
83	9	2016	Sábado 18 de Junho de 2016	21:00	Independência - Belo Horizonte - MG	327	América - MG	2	[' Adalberto 9 (2ºT)', ' Borges 12 (2ºT)']	['K. Giacomazzi 4 (2ºT)']	1	Coritiba - PR	294	Wagner do Nascimento Magalhaes	FIFA
84	9	2016	Domingo 19 de Junho de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Bruno 23 (1ºT)', ' Marquinhos Gabriel 7 (2ºT)', ' Bruno 43 (2ºT)']	['Leandro 27 (1ºT)']	1	Botafogo - RJ	296	Rodolpho Toski Marques	FIFA
85	9	2016	Domingo 19 de Junho de 2016	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Leandro Donizete 23 (1ºT)', ' Cazares 28 (1ºT)', ' Carlos Alberto Carvalho 39 (2ºT)']	[]	0	Ponte Preta - SP	303	Wagner Reway	FIFA
86	9	2016	Domingo 19 de Junho de 2016	11:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Marinho 27 (2ºT)']	['Sergio Manoel 26 (2ºT) ', 'William 30 (2ºT)']	2	Chapecoense - SC	315	Leandro Pedro Vuaden	CBF
87	9	2016	Domingo 19 de Junho de 2016	16:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	2	[' Rodrigo Caio 21 (1ºT)', ' Willian Arão 13 (2ºT)']	['Calleri 11 (1ºT) ', 'Calleri 5 (2ºT)']	2	São Paulo - SP	276	Elmo Alves Resende Cunha	CBF
88	9	2016	Domingo 19 de Junho de 2016	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Bady 40 (1ºT)', ' Ferrugem 27 (2ºT)', ' Bady 35 (2ºT)']	['Vitinho 19 (2ºT) ', 'Vitinho 37 (2ºT)']	2	Internacional - RS	285	Luiz Flavio de Oliveira	FIFA
89	9	2016	Domingo 19 de Junho de 2016	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Gabriel Xavier 39 (1ºT)', ' Diego Souza 45 (2ºT)']	['Magno Alves 39 (2ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
90	9	2016	Domingo 19 de Junho de 2016	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Luan 44 (1ºT)', ' Douglas 6 (2ºT)']	[]	0	Cruzeiro - MG	283	Thiago Duarte Peixoto	CBF
91	10	2016	Quarta 22 de Junho de 2016	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Atlético - PR	293	Francisco Carlos do Nascimento	CBF
92	10	2016	Quarta 22 de Junho de 2016	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Henrique 7 (1ºT) ', 'De Arrascaeta 20 (1ºT) ', 'De Arrascaeta 9 (2ºT) ', 'Alisson 32 (2ºT)']	4	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	FIFA
93	10	2016	Quarta 22 de Junho de 2016	21:00	Mário Helênio - Juiz de Fora - MG	296	Botafogo - RJ	0	[]	[]	0	Figueirense - SC	316	Emerson de Almeida Ferreira	CBF
94	10	2016	Terça 21 de Junho de 2016	21:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Gabriel Jesus 19 (1ºT)', ' Gabriel Jesus 27 (1ºT)']	[]	0	América - MG	327	Pericles Bassols Pegado Cortez	CBF
95	10	2016	Quarta 22 de Junho de 2016	21:00	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Willian Arão 14 (1ºT)']	1	Flamengo - RJ	262	Wagner Reway	FIFA
96	10	2016	Quarta 22 de Junho de 2016	21:45	Kleber Andrade - Cariacica - ES	266	Fluminense - RJ	2	[' Marcos Jr 13 (1ºT)', ' Marcos Jr 20 (2ºT)']	['Rodrigao 39 (1ºT) ', 'Gabriel Barbosa 45+2 (1ºT) ', 'Gabriel Barbosa 5 (2ºT) ', 'Luiz 27 (2ºT)']	4	Santos - SP	277	Rodolpho Toski Marques	FIFA
97	10	2016	Quarta 22 de Junho de 2016	21:45	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Fred 22 (2ºT)', ' Cazares 37 (2ºT)']	['Lucca 44 (2ºT)']	1	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
98	10	2016	Quinta 23 de Junho de 2016	19:15	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Victor Ramos 9 (2ºT)']	['Kieza 25 (1ºT) ', 'Diego Renan 32 (1ºT)']	2	Vitória - BA	287	Sandro Meira Ricci	FIFA
99	10	2016	Quinta 23 de Junho de 2016	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Sport - PE	292	Rafael Traci	CBF
100	10	2016	Quinta 23 de Junho de 2016	21:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Nery Bareiro 24 (2ºT)']	['Anderson 33 (1ºT)']	1	Internacional - RS	285	Eduardo Tomaz de Aquino Valadao	CBF
101	11	2016	Sábado 25 de Junho de 2016	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Luciano 26 (1ºT)', ' Angel Romero 36 (1ºT)']	['Grafite 7 (2ºT)']	1	Santa Cruz - PE	344	Wagner do Nascimento Magalhaes	FIFA
102	11	2016	Sábado 25 de Junho de 2016	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Willian 14 (1ºT)', ' Willian 2 (2ºT)']	['Gabriel Jesus 10 (1ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	CBF
103	11	2016	Domingo 26 de Junho de 2016	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Kieza 21 (1ºT)']	['Pottker 8 (1ºT)']	1	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
104	11	2016	Domingo 26 de Junho de 2016	16:00	Arena das Dunas  - Natal - RN	262	Flamengo - RJ	1	[' Guerrero 12 (2ºT)']	['Willian Arão 3 (2ºT) ', 'Richarlison 30 (2ºT)']	2	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
36	4	2017	Sábado 03 de Junho de 2017	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Marcio 16 (2ºT)']	[]	0	Atlético - PR	293	Raphael Claus	FIFA
105	11	2016	Domingo 26 de Junho de 2016	16:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Vitor Bueno 1 (1ºT)', ' Rodrigao 39 (1ºT)', ' Lucas Lima 44 (2ºT)']	[]	0	São Paulo - SP	276	Raphael Claus	FIFA
106	11	2016	Domingo 26 de Junho de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Eduardo Sasha 24 (2ºT)', ' Ernando 28 (2ºT)']	['Jonathan 8 (1ºT) ', 'Neilton 14 (1ºT) ', 'Camilo 25 (2ºT)']	3	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
107	11	2016	Domingo 26 de Junho de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Hernani 8 (2ºT)', ' Andre Lima 22 (2ºT)']	[]	0	Grêmio - RS	284	Wagner Reway	FIFA
108	11	2016	Domingo 26 de Junho de 2016	11:00	Independência - Belo Horizonte - MG	327	América - MG	0	[]	['Robinho 3 (1ºT)']	1	Atlético - MG	282	Anderson Daronco	FIFA
109	11	2016	Domingo 26 de Junho de 2016	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Coritiba - PR	294	Elmo Alves Resende Cunha	CBF
110	11	2016	Domingo 26 de Junho de 2016	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	5	[' Rodney 10 (1ºT)', ' Rithely 9 (2ºT)', ' Rodney 11 (2ºT)', ' Diego Souza 18 (2ºT)', ' Ronaldo 32 (2ºT)']	['Ananias 1 (2ºT)']	1	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
111	12	2016	Quarta 29 de Junho de 2016	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Vander 45 (1ºT)', ' Euller 16 (2ºT)', ' Nickson 19 (2ºT)']	['Matheus Ferraz 17 (1ºT) ', 'Matheus Ferraz 33 (2ºT)']	2	Sport - PE	292	Leonardo Garcia Cavaleiro	CBF
112	12	2016	Quarta 29 de Junho de 2016	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Giuliano 2 (1ºT)', ' Douglas 44 (1ºT)', ' Marcelo Hermes 44 (2ºT)']	['Copete 19 (2ºT) ', 'Zeca 38 (2ºT)']	2	Santos - SP	277	Eduardo Tomaz de Aquino Valadao	CBF
113	12	2016	Quarta 29 de Junho de 2016	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Silvinho 41 (1ºT)', ' Arthur 23 (2ºT)', ' Kempes 44 (2ºT)']	['Matias Pisano 6 (1ºT) ', 'Fabricio Bruno 38 (2ºT)']	2	Cruzeiro - MG	283	Rodolpho Toski Marques	FIFA
114	12	2016	Quarta 29 de Junho de 2016	19:30	Kleber Andrade - Cariacica - ES	262	Flamengo - RJ	1	[' Eder 18 (1ºT)']	[]	0	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
115	12	2016	Quarta 29 de Junho de 2016	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Kazim-richards 35 (2ºT)']	[]	0	Atlético - PR	293	Thiago Duarte Peixoto	CBF
116	12	2016	Quarta 29 de Junho de 2016	21:45	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' João Schmidt 2 (1ºT)', ' Alan Kardec 39 (1ºT)']	['Cicero 7 (2ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
117	12	2016	Quarta 29 de Junho de 2016	21:45	Independência - Belo Horizonte - MG	327	América - MG	0	[]	['Angel Romero 9 (1ºT) ', 'Marquinhos Gabriel 30 (2ºT)']	2	Corinthians - SP	264	Wagner Reway	FIFA
118	12	2016	Quinta 30 de Junho de 2016	19:30	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Pottker 21 (1ºT) ', 'Pottker 38 (1ºT) ', 'Felipe Azevedo 24 (2ºT)']	3	Ponte Preta - SP	303	Francisco Carlos do Nascimento	CBF
119	12	2016	Quinta 30 de Junho de 2016	19:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Moises 7 (1ºT)', ' Dudu 43 (1ºT)', ' Gabriel Jesus 11 (2ºT)', ' Gabriel Jesus 45+1 (2ºT)']	[]	0	Figueirense - SC	316	Gilberto Rodrigues Castro Junior	CBF
120	12	2016	Quinta 30 de Junho de 2016	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	5	[' Cazares 1 (1ºT)', ' Robinho 45+1 (1ºT)', ' Fred 2 (2ºT)', ' Cazares 32 (2ºT)', ' Carlos Alberto Carvalho 44 (2ºT)']	['Sassa 27 (2ºT) ', 'Gervasio 43 (2ºT) ', 'Bruno Silva 45+1 (2ºT)']	3	Botafogo - RJ	296	Raphael Claus	FIFA
121	13	2016	Sábado 02 de Julho de 2016	16:00	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	0	[]	[]	0	Coritiba - PR	294	Leandro Pedro Vuaden	CBF
122	13	2016	Sábado 02 de Julho de 2016	18:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Nikao 7 (2ºT)']	[]	0	América - MG	327	Luiz Flavio de Oliveira	FIFA
123	13	2016	Domingo 03 de Julho de 2016	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Alisson 23 (1ºT)', ' De Arrascaeta 8 (2ºT)']	['Diego Renan 19 (2ºT) ', 'Vander 37 (2ºT)']	2	Vitória - BA	287	Pericles Bassols Pegado Cortez	CBF
124	13	2016	Domingo 03 de Julho de 2016	11:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['Douglas 19 (1ºT)']	1	Grêmio - RS	284	Dewson Fernando Freitas da Silva	FIFA
125	13	2016	Domingo 03 de Julho de 2016	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Rodrigao 16 (2ºT)', ' Copete 19 (2ºT)', ' Yuri 41 (2ºT)']	[]	0	Chapecoense - SC	315	Bruno Arleu de Araujo	CBF
126	13	2016	Domingo 03 de Julho de 2016	16:00	Mário Helênio - Juiz de Fora - MG	296	Botafogo - RJ	2	[' Sassa 1 (1ºT)', ' Neilton 17 (1ºT)']	['Joao Paulo 3 (2ºT)']	1	Santa Cruz - PE	344	Braulio da Silva Machado	CBF
127	13	2016	Domingo 03 de Julho de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	4	[' Angel Romero 14 (2ºT)', ' Guilherme 33 (2ºT)', ' Rildo 34 (2ºT)', ' Angel Romero 43 (2ºT)']	[]	0	Flamengo - RJ	262	Heber Roberto Lopes	CBF
128	13	2016	Domingo 03 de Julho de 2016	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Clayson 12 (2ºT)']	[]	0	São Paulo - SP	276	Vinicius Furlan	CBF
129	13	2016	Domingo 03 de Julho de 2016	19:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Gustavo Ermel 7 (2ºT)']	['Fred 7 (1ºT)']	1	Atlético - MG	282	Rafael Traci	CBF
130	13	2016	Segunda 04 de Julho de 2016	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Gabriel Xavier 14 (2ºT)']	['Erik 10 (1ºT) ', 'Gabriel Jesus 21 (2ºT) ', 'Cleiton Xavier 27 (2ºT)']	3	Palmeiras - SP	275	Anderson Daronco	FIFA
131	14	2016	Domingo 10 de Julho de 2016	11:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	2	[' Felipe Vizeu 12 (1ºT)', ' Felipe Vizeu 11 (2ºT)']	[]	0	Atlético - MG	282	Marielson Alves Silva	CBF
132	14	2016	Sábado 09 de Julho de 2016	16:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Rodriguinho 15 (2ºT) ', 'Marquinhos Gabriel 45+1 (2ºT)']	2	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
133	14	2016	Terça 12 de Julho de 2016	20:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Yerri Mina 6 (1ºT)']	['Gabriel Barbosa 11 (2ºT)']	1	Santos - SP	277	Wilton Pereira Sampaio	FIFA
134	14	2016	Sábado 09 de Julho de 2016	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Pottker 16 (1ºT)', ' Douglas Groli 33 (2ºT)']	['Rogerio 10 (1ºT)']	1	Sport - PE	292	Heber Roberto Lopes	CBF
135	14	2016	Sábado 09 de Julho de 2016	16:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
136	14	2016	Domingo 10 de Julho de 2016	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Walace 44 (1ºT)', ' Bobo 45+3 (2ºT)']	['Ayrton 30 (2ºT)']	1	Figueirense - SC	316	Jailson Macedo Freitas	CBF
137	14	2016	Domingo 10 de Julho de 2016	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Alan Kardec 34 (1ºT)', ' Lyanco 42 (1ºT)', ' Alan Kardec 14 (2ºT)']	[]	0	América - MG	327	Dewson Fernando Freitas da Silva	FIFA
138	14	2016	Domingo 10 de Julho de 2016	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Fluminense - RJ	266	Marcelo Aparecido R de Souza	CBF
139	14	2016	Domingo 10 de Julho de 2016	16:00	Arruda - Recife - PE	344	Santa Cruz - PE	1	[' Keno 45+2 (1ºT)']	[]	0	Internacional - RS	285	Sandro Meira Ricci	FIFA
140	14	2016	Segunda 11 de Julho de 2016	20:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Pablo 20 (2ºT) ', 'Andre Lima 22 (2ºT) ', 'Andre Lima 37 (2ºT)']	3	Atlético - PR	293	Anderson Daronco	FIFA
141	15	2016	Sábado 16 de Julho de 2016	16:00	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Diogo 34 (1ºT)', ' Neilton 34 (2ºT)', ' Salgueiro 37 (2ºT)']	['Everton 23 (1ºT) ', 'Jorge 12 (2ºT) ', 'Guerrero 23 (2ºT)']	3	Flamengo - RJ	262	Flavio Rodrigues de Souza	CBF
142	15	2016	Sábado 16 de Julho de 2016	18:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Victor Ferraz 21 (1ºT)', ' Vitor Bueno 10 (2ºT)', ' Gabriel Barbosa 26 (2ºT)']	['Roger 39 (2ºT)']	1	Ponte Preta - SP	303	Marielson Alves Silva	CBF
143	15	2016	Domingo 17 de Julho de 2016	11:00	Independência - Belo Horizonte - MG	327	América - MG	0	[]	['Tiago Costa 8 (1ºT) ', 'Marcilio 16 (1ºT) ', 'Arthur Caike 10 (2ºT)']	3	Santa Cruz - PE	344	Grazianni Maciel Rocha	CBF
144	15	2016	Domingo 17 de Julho de 2016	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Rafael Moura 45 (1ºT)']	['Dener 25 (2ºT)']	1	Chapecoense - SC	315	Sandro Meira Ricci	FIFA
145	15	2016	Domingo 17 de Julho de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Pablo 44 (1ºT)']	['Diego Renan 25 (2ºT)']	1	Vitória - BA	287	Wagner do Nascimento Magalhaes	FIFA
146	15	2016	Domingo 17 de Julho de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Bruno 21 (1ºT)']	['Cueva 15 (1ºT)']	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	CBF
147	15	2016	Domingo 17 de Julho de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['Erik 10 (1ºT)']	1	Palmeiras - SP	275	Andre Luiz de Freitas Castro	CBF
148	15	2016	Domingo 17 de Julho de 2016	16:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	2	[' Cicero 7 (1ºT)', ' Marcos Jr 25 (1ºT)']	[]	0	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
149	15	2016	Domingo 17 de Julho de 2016	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Serginho 21 (1ºT)', ' Diego Souza 38 (1ºT)', ' Edmilson dos Santos Silva 22 (2ºT)', ' Diego Souza 29 (2ºT)']	['Geromel 1 (2ºT) ', 'Geromel 17 (2ºT)']	2	Grêmio - RS	284	Rodrigo Batista Raposo	CBF
150	15	2016	Segunda 18 de Julho de 2016	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Robinho 40 (1ºT)', ' Robinho 39 (2ºT)']	['Carlinho 31 (2ºT)']	1	Coritiba - PR	294	Leandro Pedro Vuaden	CBF
151	16	2016	Sábado 23 de Julho de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Danilo 38 (2ºT)']	['Dodo 13 (2ºT)']	1	Figueirense - SC	316	Marielson Alves Silva	CBF
152	16	2016	Sábado 23 de Julho de 2016	18:30	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['K. Giacomazzi 32 (1ºT)']	1	Coritiba - PR	294	Wilton Pereira Sampaio	FIFA
153	16	2016	Domingo 24 de Julho de 2016	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Leandro Donizete 15 (2ºT)']	1	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
154	16	2016	Domingo 24 de Julho de 2016	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Roger 42 (1ºT)', ' Wendel 1 (2ºT)']	['Valdivia 25 (1ºT) ', 'Ariel 37 (2ºT)']	2	Internacional - RS	285	Leonardo Garcia Cavaleiro	CBF
155	16	2016	Domingo 24 de Julho de 2016	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Willian 45+2 (2ºT)']	['Rogerio 38 (1ºT) ', 'Rogerio 6 (2ºT)']	2	Sport - PE	292	Leandro Pedro Vuaden	CBF
156	16	2016	Domingo 24 de Julho de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Douglas 7 (2ºT)']	[]	0	São Paulo - SP	276	Heber Roberto Lopes	CBF
157	16	2016	Domingo 24 de Julho de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Hernani 33 (1ºT)']	[]	0	Fluminense - RJ	266	Francisco Carlos do Nascimento	CBF
158	16	2016	Domingo 24 de Julho de 2016	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Hyoran 24 (1ºT)', ' Lucas 42 (2ºT)']	['Camilo 41 (2ºT)']	1	Botafogo - RJ	296	Anderson Daronco	FIFA
159	16	2016	Domingo 24 de Julho de 2016	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Kanu 29 (1ºT)', ' Vander 25 (2ºT)']	['Vitor Bueno 19 (1ºT) ', 'Copete 31 (1ºT) ', 'Sousa 36 (2ºT)']	3	Santos - SP	277	Rodolpho Toski Marques	FIFA
160	16	2016	Segunda 25 de Julho de 2016	20:00	Kleber Andrade - Cariacica - ES	262	Flamengo - RJ	2	[' Guerrero 10 (2ºT)', ' Alan Patrick 14 (2ºT)']	['Juninho 31 (2ºT)']	1	América - MG	327	Rodrigo Batista Raposo	CBF
161	17	2016	Sábado 30 de Julho de 2016	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Dodo 15 (1ºT)']	[]	0	Vitória - BA	287	Leandro Pedro Vuaden	CBF
162	17	2016	Sábado 30 de Julho de 2016	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Diego Souza 16 (1ºT)', ' Edmilson dos Santos Silva 8 (2ºT)']	[]	0	Atlético - PR	293	Wilton Pereira Sampaio	FIFA
163	17	2016	Sábado 30 de Julho de 2016	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Robinho 21 (1ºT)', ' Fred 21 (2ºT)', ' Luan 25 (2ºT)']	[]	0	Santa Cruz - PE	344	Dewson Fernando Freitas da Silva	FIFA
164	17	2016	Domingo 31 de Julho de 2016	11:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	3	[' Cicero 19 (1ºT)', ' Cicero 10 (2ºT)', ' Wellington Silva 25 (2ºT)']	[]	0	Ponte Preta - SP	303	Igor Junio Benevenuto	CBF
165	17	2016	Domingo 31 de Julho de 2016	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Cueva 16 (2ºT)', ' Cueva 40 (2ºT)']	['Kempes 5 (1ºT) ', 'William 11 (1ºT)']	2	Chapecoense - SC	315	Wagner do Nascimento Magalhaes	FIFA
166	17	2016	Domingo 31 de Julho de 2016	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Vitor Bueno 16 (2ºT)', ' Lucas 29 (2ºT)']	[]	0	Cruzeiro - MG	283	Wagner Reway	FIFA
167	17	2016	Domingo 31 de Julho de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['Elias 41 (1ºT)']	1	Corinthians - SP	264	Elmo Alves Resende Cunha	CBF
168	17	2016	Domingo 31 de Julho de 2016	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Guerrero 7 (2ºT) ', 'Marcelo Cirino 43 (2ºT)']	2	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
169	17	2016	Domingo 31 de Julho de 2016	18:30	Independência - Belo Horizonte - MG	327	América - MG	0	[]	[]	0	Grêmio - RS	284	Raphael Claus	FIFA
170	17	2016	Domingo 31 de Julho de 2016	18:30	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Neilton 18 (1ºT)', ' Neilton 34 (1ºT)', ' Camilo 41 (2ºT)']	['Erik 32 (2ºT)']	1	Palmeiras - SP	275	Heber Roberto Lopes	CBF
171	18	2016	Quinta 04 de Agosto de 2016	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Chavez 2 (1ºT)']	['Maicosuel 10 (1ºT) ', 'Lucas Pratto 19 (1ºT)']	2	Atlético - MG	282	Leandro Pedro Vuaden	CBF
172	18	2016	Quinta 04 de Agosto de 2016	21:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	4	[' Rafael Sobis 13 (1ºT)', ' Ábila 16 (1ºT)', ' Rafael Sobis 41 (1ºT)', ' Rafael Sobis 7 (2ºT)']	['Seijas 2 (1ºT) ', 'Alex 28 (2ºT)']	2	Internacional - RS	285	Raphael Claus	FIFA
173	18	2016	Quarta 03 de Agosto de 2016	19:30	Jóia da Princesa - Feira de Santana - BA	287	Vitória - BA	3	[' Juninho 14 (2ºT)', ' Marinho 42 (2ºT)', ' Kieza 45+2 (2ºT)']	['Raphael Veiga 2 (2ºT)']	1	Coritiba - PR	294	Andre Luiz de Freitas Castro	CBF
174	18	2016	Sábado 03 de Setembro de 2016	16:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	3	[' Gustavo Scarpa 13 (1ºT)', ' Renato Chaves 19 (1ºT)', ' Magno Alves 34 (2ºT)']	['Carlos Alberto 3 (2ºT) ', 'Nirley 15 (2ºT)']	2	Figueirense - SC	316	Rodrigo Batista Raposo	CBF
175	18	2016	Quarta 03 de Agosto de 2016	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' M Gonzalez 45+2 (2ºT)']	['Danilo Barcelos 39 (1ºT)']	1	América - MG	327	Heber Roberto Lopes	CBF
176	18	2016	Quarta 03 de Agosto de 2016	21:45	Arena Pantanal - Cuiaba - MT	277	Santos - SP	0	[]	[]	0	Flamengo - RJ	262	Dewson Fernando Freitas da Silva	FIFA
177	18	2016	Quarta 03 de Agosto de 2016	21:45	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Walter 31 (2ºT)', ' Walter 41 (2ºT)']	[]	0	Corinthians - SP	264	Anderson Daronco	FIFA
178	18	2016	Quinta 04 de Agosto de 2016	19:15	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Pottker 29 (1ºT)', ' Reinaldo 40 (2ºT)']	[]	0	Botafogo - RJ	296	Ricardo Marques Ribeiro	FIFA
179	18	2016	Quinta 04 de Agosto de 2016	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Santa Cruz - PE	344	Luiz Flavio de Oliveira	FIFA
180	18	2016	Quinta 04 de Agosto de 2016	21:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Kempes 29 (1ºT)']	['Jean 40 (2ºT)']	1	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
181	19	2016	Segunda 08 de Agosto de 2016	21:00	Pacaembu - Sao Paulo - SP	264	Corinthians - SP	1	[' Giovanni Augusto 2 (1ºT)']	['Ábila 20 (2ºT)']	1	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	FIFA
182	19	2016	Sábado 06 de Agosto de 2016	18:30	Kleber Andrade - Cariacica - ES	262	Flamengo - RJ	1	[' Mancuello 15 (2ºT)']	[]	0	Atlético - PR	293	Emerson de Almeida Ferreira	CBF
183	19	2016	Domingo 07 de Agosto de 2016	11:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Juninho 45 (2ºT)']	[]	0	Santos - SP	277	Pablo dos Santos Alves	CBF
184	19	2016	Domingo 07 de Agosto de 2016	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Carlos Alberto 1 (2ºT)']	['Tulio de Melo 37 (2ºT)']	1	Sport - PE	292	Flavio Rodrigues de Souza	CBF
185	19	2016	Domingo 07 de Agosto de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Lucas Barrios 37 (1ºT)', ' Cleiton Xavier 4 (2ºT)']	['Thiago Martins 29 (2ºT)']	1	Vitória - BA	287	Braulio da Silva Machado	CBF
186	19	2016	Domingo 07 de Agosto de 2016	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' K. Giacomazzi 39 (1ºT)', ' Luccas Claro 18 (2ºT)', ' Juan 34 (2ºT)']	['Rhayner 42 (1ºT)']	1	Ponte Preta - SP	303	Anderson Daronco	FIFA
187	19	2016	Domingo 07 de Agosto de 2016	16:15	Beira Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Seijas 45+2 (1ºT)', ' Fernando 33 (2ºT)']	['Gustavo Scarpa 2 (1ºT) ', 'Gustavo Scarpa 18 (2ºT)']	2	Fluminense - RJ	266	Rafael Traci	CBF
188	19	2016	Domingo 07 de Agosto de 2016	16:15	Arruda - Recife - PE	344	Santa Cruz - PE	1	[' Keno 38 (2ºT)']	['Chavez 38 (1ºT) ', 'Chavez 19 (2ºT)']	2	São Paulo - SP	276	Bruno Arleu de Araujo	CBF
189	19	2016	Domingo 04 de Setembro de 2016	16:00	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Camilo 20 (1ºT)', ' Sassa 29 (1ºT)']	['Batista 35 (2ºT)']	1	Grêmio - RS	284	Wagner Reway	FIFA
190	19	2016	Segunda 08 de Agosto de 2016	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Carlos Cesar 20 (1ºT)', ' Robinho 43 (1ºT)', ' Maicosuel 34 (2ºT)']	['Bruno Rangel 45+1 (2ºT)']	1	Chapecoense - SC	315	Pericles Bassols Pegado Cortez	CBF
191	20	2016	Domingo 14 de Agosto de 2016	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Diego Renan 5 (1ºT)', ' Willian Farias 2 (2ºT)']	['Tiago Costa 36 (1ºT) ', 'Matias Pisano 37 (2ºT)']	2	Santa Cruz - PE	344	Emerson de Almeida Ferreira	CBF
192	20	2016	Sábado 13 de Agosto de 2016	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Wendel 5 (2ºT)', ' Roger 37 (2ºT)']	[]	0	Figueirense - SC	316	Eduardo Tomaz de Aquino Valadao	CBF
193	20	2016	Sábado 13 de Agosto de 2016	16:00	Arena Pernambuco - São Lourenço da Mata - PE	292	Sport - PE	1	[' Edmilson dos Santos Silva 24 (1ºT)']	[]	0	Flamengo - RJ	262	Rodolpho Toski Marques	FIFA
194	20	2016	Domingo 14 de Agosto de 2016	11:00	Kleber Andrade - Cariacica - ES	266	Fluminense - RJ	1	[' Henrique Dourado 1 (2ºT)']	[]	0	América - MG	327	Diego Almeida Real	CBF
195	20	2016	Domingo 14 de Agosto de 2016	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Pedro Rocha 16 (1ºT)', ' Everton 3 (2ºT)', ' Miller Bolaños 16 (2ºT)']	[]	0	Corinthians - SP	264	Braulio da Silva Machado	CBF
196	20	2016	Domingo 14 de Agosto de 2016	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Gustavo 12 (1ºT)', ' Ricardo Oliveira 23 (2ºT)', ' Ricardo Oliveira 45+3 (2ºT)']	[]	0	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
197	20	2016	Domingo 14 de Agosto de 2016	16:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Rafinha 2 (1ºT)', ' Ábila 4 (2ºT)']	['Kazim-richards 19 (1ºT) ', 'Juan 27 (1ºT)']	2	Coritiba - PR	294	Jailson Macedo Freitas	CBF
198	20	2016	Domingo 14 de Agosto de 2016	16:15	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Sassa 45+3 (2ºT)']	1	Botafogo - RJ	296	Caio Max Augusto Vieira	CBF
199	20	2016	Domingo 14 de Agosto de 2016	18:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Vitor Hugo 44 (1ºT)']	1	Palmeiras - SP	275	Jean Pierre Goncalves Lima	CBF
200	20	2016	Segunda 15 de Agosto de 2016	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Martinucio 45 (2ºT)']	[]	0	Internacional - RS	285	Joao Batista de Arruda	CBF
201	21	2016	Segunda 22 de Agosto de 2016	20:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Marlone 5 (2ºT)', ' Marquinhos Gabriel 26 (2ºT)']	['Yago 42 (1ºT)']	1	Vitória - BA	287	Bruno Arleu de Araujo	CBF
202	21	2016	Sexta 19 de Agosto de 2016	21:30	Independência - Belo Horizonte - MG	327	América - MG	1	[' Gilson 45 (1ºT)']	['Lucas 26 (2ºT) ', 'Alison 45+1 (2ºT)']	2	Chapecoense - SC	315	Flavio Rodrigues de Souza	CBF
203	21	2016	Sábado 20 de Agosto de 2016	21:00	Mário Helênio - Juiz de Fora - MG	296	Botafogo - RJ	3	[' Sassa 45+2 (1ºT)', ' Sassa 7 (2ºT)', ' Camilo 45+2 (2ºT)']	[]	0	Sport - PE	292	Jean Pierre Goncalves Lima	CBF
204	21	2016	Domingo 21 de Agosto de 2016	11:00	Mané Garrincha - Brasilia - DF	262	Flamengo - RJ	2	[' Leandro Damiao 29 (1ºT)', ' Diego 25 (2ºT)']	['H. Almeida 26 (2ºT)']	1	Grêmio - RS	284	Raphael Claus	FIFA
205	21	2016	Domingo 21 de Agosto de 2016	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Robinho 39 (1ºT)']	[]	0	Atlético - PR	293	Braulio da Silva Machado	CBF
206	21	2016	Domingo 21 de Agosto de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Rafael Marques 15 (1ºT)', ' Thiago Martins 24 (2ºT)']	['Wellington Paulista 7 (2ºT) ', 'Pottker 27 (2ºT)']	2	Ponte Preta - SP	303	Heber Roberto Lopes	CBF
207	21	2016	Domingo 21 de Agosto de 2016	16:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Mena 39 (2ºT)']	['Cueva 36 (1ºT)']	1	São Paulo - SP	276	Gilberto Rodrigues Castro Junior	CBF
208	21	2016	Domingo 21 de Agosto de 2016	16:00	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Henrique Dourado 30 (1ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
209	21	2016	Domingo 21 de Agosto de 2016	18:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Ferrugem 43 (2ºT)']	['Henrique 3 (1ºT) ', 'Ábila 2 (2ºT)']	2	Cruzeiro - MG	283	Joao Batista de Arruda	CBF
210	21	2016	Domingo 21 de Agosto de 2016	18:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' K. Giacomazzi 27 (2ºT)', ' Iago Dias 40 (2ºT)']	['Ricardo Oliveira 13 (2ºT)']	1	Santos - SP	277	Claudio Francisco Lima E Silva	CBF
211	22	2016	Sábado 27 de Agosto de 2016	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Roger 35 (1ºT)', ' Clayson 5 (2ºT)']	[]	0	Corinthians - SP	264	Luiz Flavio de Oliveira	FIFA
212	22	2016	Domingo 28 de Agosto de 2016	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Robinho 4 (2ºT)', ' Ábila 8 (2ºT)']	[]	0	Santa Cruz - PE	344	Sandro Meira Ricci	FIFA
213	22	2016	Domingo 28 de Agosto de 2016	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Rafael Moura 2 (2ºT)']	1	Figueirense - SC	316	Bruno Arleu de Araujo	CBF
214	22	2016	Domingo 28 de Agosto de 2016	16:00	Mané Garrincha - Brasilia - DF	266	Fluminense - RJ	0	[]	['Dudu 19 (1ºT) ', 'Jean 24 (1ºT)']	2	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
215	22	2016	Domingo 28 de Agosto de 2016	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Coritiba - PR	294	Francisco Carlos do Nascimento	CBF
216	22	2016	Domingo 28 de Agosto de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Luan 7 (2ºT)']	['Robinho 41 (2ºT)']	1	Atlético - MG	282	Claudio Francisco Lima E Silva	CBF
217	22	2016	Domingo 28 de Agosto de 2016	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Kempes 41 (1ºT)']	['Diego 9 (1ºT) ', 'Leandro Damiao 25 (2ºT) ', 'Mancuello 45 (2ºT)']	3	Flamengo - RJ	262	Caio Max Augusto Vieira	CBF
218	22	2016	Domingo 28 de Agosto de 2016	18:30	Arena Fonte Nova - Salvador - BA	287	Vitória - BA	2	[' Marcelo 37 (1ºT)', ' David 18 (2ºT)']	['Danilo Barcelos 40 (2ºT)']	1	América - MG	327	Anderson Daronco	FIFA
219	22	2016	Domingo 28 de Agosto de 2016	18:30	Arena Pernambuco - São Lourenço da Mata - PE	292	Sport - PE	1	[' Vinicius Araujo 44 (2ºT)']	['Seijas 9 (1ºT)']	1	Internacional - RS	285	Grazianni Maciel Rocha	CBF
220	22	2016	Segunda 29 de Agosto de 2016	20:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Hernani 7 (1ºT)']	[]	0	Botafogo - RJ	296	Leandro Pedro Vuaden	CBF
221	23	2016	Quarta 07 de Setembro de 2016	16:00	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Neilton 4 (2ºT)']	[]	0	Fluminense - RJ	266	Rodolpho Toski Marques	FIFA
222	23	2016	Quarta 07 de Setembro de 2016	16:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Lins 4 (1ºT)']	[]	0	Atlético - PR	293	Pablo dos Santos Alves	CBF
223	23	2016	Quarta 07 de Setembro de 2016	16:00	Arena Pernambuco - São Lourenço da Mata - PE	344	Santa Cruz - PE	2	[' Arthur Caike 11 (2ºT)', ' Bruno Moraes 18 (2ºT)']	['Kempes 27 (1ºT) ', 'Bruno Rangel 41 (2ºT)']	2	Chapecoense - SC	315	Savio Pereira Sampaio	CBF
224	23	2016	Quarta 07 de Setembro de 2016	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Fred 45 (1ºT)', ' Fred 18 (2ºT)']	['Kanu 13 (2ºT)']	1	Vitória - BA	287	Jean Pierre Goncalves Lima	CBF
225	23	2016	Quarta 07 de Setembro de 2016	21:45	Kleber Andrade - Cariacica - ES	262	Flamengo - RJ	2	[' Gabriel 13 (1ºT)', ' Fernandinho 43 (2ºT)']	['Pottker 21 (2ºT)']	1	Ponte Preta - SP	303	Francisco Carlos do Nascimento	CBF
226	23	2016	Quarta 07 de Setembro de 2016	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Yerri Mina 10 (2ºT)', ' Vitor Hugo 25 (2ºT)']	['Chavez 3 (2ºT)']	1	São Paulo - SP	276	Sandro Meira Ricci	FIFA
227	23	2016	Quarta 07 de Setembro de 2016	21:45	Couto Pereira - Curitiba - PR	294	Coritiba - PR	4	[' W. Maia 21 (1ºT)', ' Weverson 30 (1ºT)', ' Raphael Veiga 34 (1ºT)', ' Neto Berola 38 (1ºT)']	[]	0	Grêmio - RS	284	Wagner do Nascimento Magalhaes	FIFA
228	23	2016	Quinta 08 de Setembro de 2016	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Rodriguinho 2 (2ºT)', ' Leo Principe 9 (2ºT)', ' Vilson 16 (2ºT)']	[]	0	Sport - PE	292	Joao Batista de Arruda	CBF
229	23	2016	Quinta 08 de Setembro de 2016	21:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Seijas 42 (1ºT)', ' Aylon 16 (2ºT)']	['Ricardo Oliveira 27 (1ºT)']	1	Santos - SP	277	Rodrigo Batista Raposo	CBF
230	23	2016	Quinta 08 de Setembro de 2016	21:00	Independência - Belo Horizonte - MG	327	América - MG	0	[]	['De Arrascaeta 20 (1ºT) ', 'Ábila 24 (2ºT)']	2	Cruzeiro - MG	283	Igor Junio Benevenuto	CBF
231	24	2016	Sábado 10 de Setembro de 2016	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Ze Eduardo 21 (1ºT)']	['Fernandinho 43 (1ºT) ', 'Gabriel 14 (2ºT)']	2	Flamengo - RJ	262	Vinicius Furlan	CBF
232	24	2016	Domingo 11 de Setembro de 2016	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Chavez 30 (1ºT)', ' Cueva 21 (2ºT)', ' Kelvin 27 (2ºT)']	['Carlos Alberto 41 (2ºT)']	1	Figueirense - SC	316	Dewson Fernando Freitas da Silva	FIFA
233	24	2016	Domingo 11 de Setembro de 2016	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Kempes 25 (2ºT)']	[]	0	Coritiba - PR	294	Diego Almeida Real	CBF
234	24	2016	Domingo 11 de Setembro de 2016	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Vitor Bueno 25 (2ºT)', ' Renato 38 (2ºT)']	['Marlone 36 (1ºT)']	1	Corinthians - SP	264	Raphael Claus	FIFA
235	24	2016	Domingo 11 de Setembro de 2016	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Canales 21 (2ºT) ', 'Camilo 34 (2ºT)']	2	Botafogo - RJ	296	Rafael Traci	CBF
236	24	2016	Domingo 11 de Setembro de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Pablo 40 (1ºT)', ' Pablo 1 (2ºT)']	['Valdivia 1 (1ºT)']	1	Internacional - RS	285	Paulo H Schleich Vollkopf	CBF
237	24	2016	Domingo 11 de Setembro de 2016	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	5	[' Durval 7 (2ºT)', ' Rodney 24 (2ºT)', ' L. Ruiz 34 (2ºT)', ' Vinicius Araujo 45 (2ºT)', ' Everton Felipe 45+2 (2ºT)']	['Keno 6 (1ºT) ', 'Joao Paulo 5 (2ºT) ', 'Bruno Moraes 28 (2ºT)']	3	Santa Cruz - PE	344	Leandro Pedro Vuaden	CBF
238	24	2016	Domingo 11 de Setembro de 2016	18:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Palmeiras - SP	275	Emerson de Almeida Ferreira	CBF
239	24	2016	Domingo 11 de Setembro de 2016	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Pottker 43 (1ºT)']	['Jonas 13 (2ºT)']	1	América - MG	327	Wilton Pereira Sampaio	FIFA
240	24	2016	Segunda 12 de Setembro de 2016	20:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	4	[' Douglas Augusto 4 (2ºT)', ' Marquinho 27 (2ºT)', ' Gustavo Scarpa 32 (2ºT)', ' Maranhão 45+1 (2ºT)']	['Robinho 27 (1ºT) ', 'Otero 43 (2ºT)']	2	Atlético - MG	282	Eduardo Tomaz de Aquino Valadao	CBF
241	25	2016	Quarta 14 de Setembro de 2016	19:30	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Zeca 3 (1ºT)']	1	Santos - SP	277	Paulo H Schleich Vollkopf	CBF
242	25	2016	Quarta 14 de Setembro de 2016	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	2	[' Lins 15 (1ºT)', ' Dodo 37 (1ºT)']	['Jonas 43 (1ºT) ', 'Osman Junior 35 (2ºT)']	2	América - MG	327	Jose Claudio Rocha Filho	CBF
243	25	2016	Quarta 14 de Setembro de 2016	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Fabio 7 (2ºT)', ' Roger 20 (2ºT)', ' Pottker 45+4 (2ºT)']	[]	0	Grêmio - RS	284	Jailson Macedo Freitas	CBF
244	25	2016	Quarta 14 de Setembro de 2016	21:00	Arruda - Recife - PE	344	Santa Cruz - PE	1	[' Bruno Moraes 45 (2ºT)']	[]	0	Atlético - PR	293	Dewson Fernando Freitas da Silva	FIFA
245	25	2016	Quarta 14 de Setembro de 2016	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Gabriel Jesus 37 (2ºT)']	['Alan Patrick 18 (2ºT)']	1	Flamengo - RJ	262	Andre Luiz de Freitas Castro	CBF
246	25	2016	Quarta 14 de Setembro de 2016	21:45	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Weverson 27 (1ºT)']	['Marlone 14 (1ºT)']	1	Corinthians - SP	264	Grazianni Maciel Rocha	CBF
247	25	2016	Quinta 15 de Setembro de 2016	19:30	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	1	[' Cicero 4 (1ºT)']	['Dener 8 (2ºT) ', 'Lourency 43 (2ºT)']	2	Chapecoense - SC	315	Claudio Francisco Lima E Silva	CBF
248	25	2016	Quinta 15 de Setembro de 2016	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Junior Urso 13 (2ºT)']	[]	0	Sport - PE	292	Thiago Duarte Peixoto	CBF
249	25	2016	Quinta 15 de Setembro de 2016	21:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['Kanu 1 (2ºT)']	1	Vitória - BA	287	Emerson Luiz Sobral	CBF
250	25	2016	Quinta 15 de Setembro de 2016	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Wesley 42 (1ºT)']	[]	0	Cruzeiro - MG	283	Diego Almeida Real	CBF
251	26	2016	Sábado 17 de Setembro de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Moises 4 (1ºT) ', 'Yerri Mina 31 (2ºT)']	2	Palmeiras - SP	275	Heber Roberto Lopes	CBF
252	26	2016	Domingo 18 de Setembro de 2016	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Tiago Rocha 11 (1ºT)', ' Tiago Rocha 43 (1ºT)']	['Fabio 33 (1ºT) ', 'Roger 10 (2ºT)']	2	Ponte Preta - SP	303	Joao Batista de Arruda	CBF
253	26	2016	Domingo 18 de Setembro de 2016	18:30	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Copete 4 (1ºT)', ' Sousa 27 (2ºT)', ' Vitor Bueno 42 (2ºT)']	['Keno 10 (2ºT) ', 'Keno 40 (2ºT)']	2	Santa Cruz - PE	344	Francisco Carlos do Nascimento	CBF
254	26	2016	Domingo 18 de Setembro de 2016	18:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Pimpao 44 (1ºT)']	1	Botafogo - RJ	296	Rodrigo D Alonso Ferreira	CBF
255	26	2016	Domingo 18 de Setembro de 2016	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Robinho 31 (2ºT)']	['Clayton 30 (1ºT)']	1	Atlético - MG	282	Braulio da Silva Machado	CBF
256	26	2016	Domingo 18 de Setembro de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Gustavo Scarpa 39 (1ºT)']	1	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
257	26	2016	Domingo 18 de Setembro de 2016	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Pablo 34 (2ºT)']	[]	0	São Paulo - SP	276	Anderson Daronco	FIFA
258	26	2016	Domingo 18 de Setembro de 2016	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Amaral 15 (1ºT)']	1	Coritiba - PR	294	Marielson Alves Silva	CBF
259	26	2016	Domingo 18 de Setembro de 2016	11:00	Pacaembu - Sao Paulo - SP	262	Flamengo - RJ	2	[' Willian Arão 36 (1ºT)', ' Diego 25 (2ºT)']	[]	0	Figueirense - SC	316	Luiz Flavio de Oliveira	FIFA
260	26	2016	Segunda 19 de Setembro de 2016	20:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Michael 44 (2ºT)']	[]	0	Internacional - RS	285	Rafael Traci	CBF
261	27	2016	Sábado 24 de Setembro de 2016	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Leandro 5 (2ºT)', ' Yerri Mina 11 (2ºT)']	['Iago Dias 30 (2ºT)']	1	Coritiba - PR	294	Caio Max Augusto Vieira	CBF
262	27	2016	Sábado 24 de Setembro de 2016	18:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Rogerio 10 (1ºT)']	[]	0	Santos - SP	277	Elmo Alves Resende Cunha	CBF
263	27	2016	Sábado 24 de Setembro de 2016	21:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Jonas 19 (2ºT)']	[]	0	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
264	27	2016	Domingo 25 de Setembro de 2016	11:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	3	[' Ayrton 1 (1ºT)', ' Lins 37 (1ºT)', ' Danny Morais 15 (2ºT)']	['Keno 20 (2ºT)']	1	Santa Cruz - PE	344	Paulo H Schleich Vollkopf	CBF
265	27	2016	Domingo 25 de Setembro de 2016	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Thiago Heleno 45+1 (1ºT)', ' Léo 22 (2ºT)', ' Thiago Heleno 32 (2ºT)']	[]	0	Ponte Preta - SP	303	Nielson Nogueira Dias	CBF
266	27	2016	Domingo 25 de Setembro de 2016	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Marinho 6 (2ºT)', ' Lyanco 26 (2ºT)']	[]	0	São Paulo - SP	276	Francisco Carlos do Nascimento	CBF
267	27	2016	Domingo 25 de Setembro de 2016	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Cicero 45+4 (2ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
268	27	2016	Domingo 25 de Setembro de 2016	16:00	Kleber Andrade - Cariacica - ES	262	Flamengo - RJ	2	[' Guerrero 38 (2ºT)', ' Mancuello 44 (2ºT)']	['Rafinha 28 (2ºT)']	1	Cruzeiro - MG	283	Leandro Pedro Vuaden	CBF
269	27	2016	Domingo 25 de Setembro de 2016	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Pedro Rocha 10 (1ºT)']	[]	0	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
270	27	2016	Domingo 25 de Setembro de 2016	18:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Fred 15 (1ºT)', ' Clayton 29 (1ºT)', ' Lucas Pratto 36 (2ºT)']	['Gustavo Ferrareis 31 (1ºT)']	1	Internacional - RS	285	Pericles Bassols Pegado Cortez	CBF
271	28	2016	Sábado 01 de Outubro de 2016	16:30	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Neilton 22 (1ºT)', ' Diogo 38 (1ºT)']	[]	0	Corinthians - SP	264	Caio Max Augusto Vieira	CBF
273	28	2016	Sábado 01 de Outubro de 2016	16:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Roger 34 (2ºT)']	['Junior Urso 15 (1ºT) ', 'Clayton 37 (1ºT)']	2	Atlético - MG	282	Diego Almeida Real	CBF
274	28	2016	Sábado 01 de Outubro de 2016	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tiago Rocha 9 (2ºT)']	['Ze Eduardo 9 (1ºT) ', 'Marcelo 15 (1ºT) ', 'Ze Eduardo 25 (1ºT) ', 'Kieza 39 (1ºT)']	4	Vitória - BA	287	Pablo dos Santos Alves	CBF
275	28	2016	Sábado 01 de Outubro de 2016	11:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	3	[' Marcos Jr 8 (2ºT)', ' Richarlison 21 (2ºT)', ' Gustavo Scarpa 41 (2ºT)']	['Gum 11 (1ºT)']	1	Sport - PE	292	Leandro Pedro Vuaden	CBF
276	28	2016	Sábado 01 de Outubro de 2016	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Henrique 27 (2ºT)']	[]	0	Grêmio - RS	284	Elmo Alves Resende Cunha	CBF
277	28	2016	Segunda 03 de Outubro de 2016	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	3	[' Kazim-richards 12 (1ºT)', ' Juan 3 (2ºT)', ' Juan 27 (2ºT)']	[]	0	América - MG	327	Raphael Claus	FIFA
278	28	2016	Sábado 01 de Outubro de 2016	21:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 4 (1ºT)']	[]	0	Figueirense - SC	316	Luiz César de Oliveira Magalhães	CBF
279	28	2016	Sábado 01 de Outubro de 2016	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Ricardo Oliveira 30 (1ºT)', ' Paulinho 37 (2ºT)']	[]	0	Atlético - PR	293	Pericles Bassols Pegado Cortez	CBF
280	28	2016	Segunda 03 de Outubro de 2016	20:00	Arruda - Recife - PE	344	Santa Cruz - PE	2	[' Arthur Caike 9 (2ºT)', ' Grafite 24 (2ºT)']	['Ze Roberto 32 (1ºT) ', 'Leandro 20 (2ºT) ', 'Roger Guedes 34 (2ºT)']	3	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
281	29	2016	Quarta 05 de Outubro de 2016	21:45	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 42 (1ºT)']	['Thiago Mendes 24 (1ºT)']	1	São Paulo - SP	276	Rafael Traci	CBF
282	29	2016	Quarta 05 de Outubro de 2016	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Hernani 41 (1ºT)', ' Pablo 38 (2ºT)', ' Rossetto 42 (2ºT)']	['Filipe Jose Machado 18 (1ºT)']	1	Chapecoense - SC	315	Wagner Reway	FIFA
283	29	2016	Quarta 05 de Outubro de 2016	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Copete 3 (2ºT)', ' Ricardo Oliveira 35 (2ºT)']	['Wellington Silva 18 (2ºT)']	1	Fluminense - RJ	266	Igor Junio Benevenuto	CBF
284	29	2016	Sábado 08 de Outubro de 2016	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ábila 11 (1ºT)', ' Robinho 36 (2ºT)']	[]	0	Ponte Preta - SP	303	Anderson Daronco	FIFA
285	29	2016	Quarta 05 de Outubro de 2016	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Atlético - MG	282	Rodolpho Toski Marques	FIFA
286	29	2016	Quinta 06 de Outubro de 2016	19:30	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 41 (2ºT)']	[]	0	Coritiba - PR	294	Andre Luiz de Freitas Castro	CBF
287	29	2016	Domingo 09 de Outubro de 2016	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	['Bruno Silva 45+1 (2ºT)']	1	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
288	29	2016	Domingo 09 de Outubro de 2016	17:00	Do Café - Londrina - PR	327	América - MG	0	[]	['Tche Tche 2 (1ºT) ', 'Alecsandro 42 (2ºT)']	2	Palmeiras - SP	275	Wagner do Nascimento Magalhaes	FIFA
289	29	2016	Domingo 09 de Outubro de 2016	17:00	Pacaembu - Sao Paulo - SP	262	Flamengo - RJ	3	[' Felipe Vizeu 6 (1ºT)', ' Willian Arão 11 (2ºT)', ' Marcelo Cirino 41 (2ºT)']	[]	0	Santa Cruz - PE	344	Ricardo Marques Ribeiro	FIFA
290	29	2016	Quarta 05 de Outubro de 2016	19:30	Arena Fonte Nova - Salvador - BA	287	Vitória - BA	0	[]	['Jailson 7 (2ºT)']	1	Grêmio - RS	284	Emerson de Almeida Ferreira	CBF
291	30	2016	Quarta 12 de Outubro de 2016	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' William 44 (1ºT)', ' Ananias 12 (2ºT)', ' Kempes 45 (2ºT)']	[]	0	Sport - PE	292	Marcelo Aparecido R de Souza	CBF
292	30	2016	Quinta 13 de Outubro de 2016	21:00	Raulino de Oliveira - Volta Redonda - RJ	266	Fluminense - RJ	1	[]	[]	2	Flamengo - RJ	262	Sandro Meira Ricci	FIFA
293	30	2016	Quarta 12 de Outubro de 2016	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Figueirense - SC	316	Luiz Flavio de Oliveira	FIFA
294	30	2016	Quarta 12 de Outubro de 2016	21:45	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Sassa 40 (2ºT)']	[]	0	Internacional - RS	285	Marielson Alves Silva	CBF
295	30	2016	Quinta 13 de Outubro de 2016	19:30	Fonte Luminosa - Araraquara - SP	275	Palmeiras - SP	0	[]	[]	0	Cruzeiro - MG	283	Jailson Macedo Freitas	CBF
296	30	2016	Quarta 12 de Outubro de 2016	21:45	Arena Pantanal - Cuiaba - MT	344	Santa Cruz - PE	2	[' Grafite 30 (1ºT)', ' Keno 36 (2ºT)']	['Guilherme 38 (1ºT) ', 'Marlone 2 (2ºT) ', 'Guilherme 9 (2ºT) ', 'Lucca 45+1 (2ºT)']	4	Corinthians - SP	264	Grazianni Maciel Rocha	CBF
297	30	2016	Quinta 13 de Outubro de 2016	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Rhayner 24 (1ºT)', ' Wendel 36 (1ºT)']	[]	0	Vitória - BA	287	Wagner do Nascimento Magalhaes	FIFA
298	30	2016	Quinta 13 de Outubro de 2016	19:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Fred 36 (1ºT)', ' Carlos Cesar 20 (2ºT)', ' Lucas Pratto 39 (2ºT)']	[]	0	América - MG	327	Raphael Claus	FIFA
299	30	2016	Quinta 13 de Outubro de 2016	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Pedro Rocha 45+1 (1ºT)']	[]	0	Atlético - PR	293	Pericles Bassols Pegado Cortez	CBF
300	30	2016	Quinta 13 de Outubro de 2016	21:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Copete 1 (2ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
301	31	2016	Domingo 16 de Outubro de 2016	17:00	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Bruno Silva 4 (1ºT)', ' Pimpao 35 (1ºT)', ' Dudu Cearense 45+2 (2ºT)']	['Fred 5 (2ºT) ', 'Leo Silva 24 (2ºT)']	2	Atlético - MG	282	Wagner Reway	FIFA
302	31	2016	Domingo 16 de Outubro de 2016	17:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Eduardo Sasha 19 (2ºT)', ' Vitinho 35 (2ºT)']	['Rever 11 (2ºT)']	1	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
303	31	2016	Domingo 16 de Outubro de 2016	17:00	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Rafael Silva 40 (2ºT)']	['Jean 12 (2ºT) ', 'Jean 38 (2ºT)']	2	Palmeiras - SP	275	Igor Junio Benevenuto	CBF
304	31	2016	Domingo 16 de Outubro de 2016	17:00	Durival Britto - Curitiba - PR	293	Atlético - PR	2	[' Rossetto 20 (1ºT)', ' Pablo 23 (2ºT)']	[]	0	Coritiba - PR	294	Bruno Arleu de Araujo	CBF
305	31	2016	Domingo 16 de Outubro de 2016	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Chapecoense - SC	315	Luiz Flavio de Oliveira	FIFA
306	31	2016	Domingo 16 de Outubro de 2016	18:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Angel Romero 16 (1ºT)', ' Rodriguinho 39 (1ºT)']	[]	0	América - MG	327	Dewson Fernando Freitas da Silva	FIFA
307	31	2016	Domingo 16 de Outubro de 2016	18:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Roger 6 (2ºT)', ' Maycon 24 (2ºT)', ' Pottker 28 (2ºT)']	[]	0	Santa Cruz - PE	344	Ricardo Marques Ribeiro	FIFA
308	31	2016	Domingo 16 de Outubro de 2016	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Noguera 20 (1ºT)']	['Everton 9 (1ºT)']	1	Grêmio - RS	284	Pablo dos Santos Alves	CBF
309	31	2016	Domingo 16 de Outubro de 2016	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 5 (1ºT)']	[]	0	Vitória - BA	287	Andre Luiz de Freitas Castro	CBF
310	31	2016	Segunda 17 de Outubro de 2016	20:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	1	[' Wellington Silva 21 (1ºT)']	['Thiago Mendes 26 (2ºT) ', 'Rodrigo Caio 35 (2ºT)']	2	São Paulo - SP	276	Nielson Nogueira Dias	CBF
311	32	2016	Sábado 22 de Outubro de 2016	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Cueva 10 (1ºT)', ' David Neres 37 (2ºT)']	[]	0	Ponte Preta - SP	303	Marcelo de Lima Henrique	CBF
312	32	2016	Quarta 19 de Outubro de 2016	21:45	Arruda - Recife - PE	344	Santa Cruz - PE	0	[]	['Pimpao 42 (2ºT)']	1	Botafogo - RJ	296	Braulio da Silva Machado	CBF
313	32	2016	Segunda 24 de Outubro de 2016	20:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Eder 39 (2ºT)']	[]	0	Atlético - PR	293	Luiz Flavio de Oliveira	FIFA
314	32	2016	Domingo 23 de Outubro de 2016	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Ariel Cabral 40 (1ºT)']	1	Cruzeiro - MG	283	Thiago Duarte Peixoto	CBF
315	32	2016	Domingo 23 de Outubro de 2016	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Guerrero 15 (1ºT)', ' Guerrero 13 (2ºT)']	['Guilherme 5 (1ºT) ', 'Rodriguinho 45+1 (1ºT)']	2	Corinthians - SP	264	Anderson Daronco	FIFA
316	32	2016	Domingo 23 de Outubro de 2016	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Dudu 20 (1ºT)', ' Tche Tche 45+1 (1ºT)']	['Rogerio 32 (1ºT)']	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
317	32	2016	Domingo 23 de Outubro de 2016	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Internacional - RS	285	Francisco Carlos do Nascimento	CBF
318	32	2016	Domingo 23 de Outubro de 2016	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Otero 15 (1ºT)', ' Junior Urso 42 (2ºT)', ' Fred 45 (2ºT)']	[]	0	Figueirense - SC	316	Grazianni Maciel Rocha	CBF
319	32	2016	Domingo 23 de Outubro de 2016	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Lucas Lima 3 (1ºT)']	1	Santos - SP	277	Nielson Nogueira Dias	CBF
320	32	2016	Domingo 23 de Outubro de 2016	18:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Weverson 18 (2ºT)']	['Gum 14 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
321	33	2016	Quinta 27 de Outubro de 2016	20:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Rogerio 9 (2ºT)']	[]	0	Ponte Preta - SP	303	Jailson Macedo Freitas	CBF
322	33	2016	Sexta 28 de Outubro de 2016	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Richarlison 36 (1ºT)', ' Cicero 45+2 (1ºT)']	['Marcelo 30 (1ºT) ', 'Marinho 42 (2ºT)']	2	Vitória - BA	287	Nielson Nogueira Dias	CBF
323	33	2016	Sábado 29 de Outubro de 2016	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Copete 21 (2ºT)']	[]	0	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
324	33	2016	Sábado 29 de Outubro de 2016	16:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Robinho 36 (2ºT)', ' Lucas Pratto 42 (2ºT)']	['Diego 33 (1ºT) ', 'Guerrero 44 (2ºT)']	2	Flamengo - RJ	262	Braulio da Silva Machado	CBF
325	33	2016	Sábado 29 de Outubro de 2016	16:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Manoel 13 (1ºT)']	[]	0	Cruzeiro - MG	283	Marcelo Aparecido R de Souza	CBF
326	33	2016	Sábado 29 de Outubro de 2016	18:30	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Coritiba - PR	294	Luiz Flavio de Oliveira	FIFA
327	33	2016	Sábado 29 de Outubro de 2016	18:30	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Vitinho 6 (1ºT)']	['Leo Moura 32 (1ºT)']	1	Santa Cruz - PE	344	Wilton Pereira Sampaio	FIFA
328	33	2016	Sábado 29 de Outubro de 2016	16:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Giovanni Augusto 29 (2ºT)']	['Bruno Rangel 38 (2ºT)']	1	Chapecoense - SC	315	Jean Pierre Goncalves Lima	CBF
329	33	2016	Sábado 29 de Outubro de 2016	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	0	[]	[]	0	Grêmio - RS	284	Eduardo Tomaz de Aquino Valadao	CBF
330	33	2016	Segunda 31 de Outubro de 2016	20:00	Independência - Belo Horizonte - MG	327	América - MG	1	[' Michael 26 (1ºT)']	[]	0	São Paulo - SP	276	Joao Batista de Arruda	CBF
331	34	2016	Domingo 06 de Novembro de 2016	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Marinho 4 (1ºT)', ' David 23 (2ºT)', ' Marinho 37 (2ºT)']	['Pablo 29 (1ºT) ', 'Pablo 42 (1ºT)']	2	Atlético - PR	293	Marcelo de Lima Henrique	CBF
332	34	2016	Sábado 05 de Novembro de 2016	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	0	Botafogo - RJ	296	Jean Pierre Goncalves Lima	CBF
333	34	2016	Sábado 05 de Novembro de 2016	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[' Cueva 14 (1ºT)', ' David Neres 15 (2ºT)', ' Chavez 21 (2ºT)', ' Luiz 45+3 (2ºT)']	[]	0	Corinthians - SP	264	Claudio Francisco Lima E Silva	CBF
334	34	2016	Domingo 06 de Novembro de 2016	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Cleiton Xavier 17 (1ºT)']	[]	0	Internacional - RS	285	Pericles Bassols Pegado Cortez	CBF
335	34	2016	Domingo 06 de Novembro de 2016	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	4	[' Rafael Sobis 25 (1ºT)', ' Willian 44 (1ºT)', ' De Arrascaeta 1 (2ºT)', ' Alisson 5 (2ºT)']	['Richarlison 8 (1ºT) ', 'Ábila 45+2 (2ºT)']	2	Fluminense - RJ	266	Elmo Alves Resende Cunha	CBF
336	34	2016	Segunda 07 de Novembro de 2016	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Diego Souza 44 (1ºT) ', 'Rogerio 2 (2ºT) ', 'Diego Souza 43 (2ºT)']	3	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
337	34	2016	Domingo 06 de Novembro de 2016	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Raphael Veiga 7 (2ºT)', ' K. Giacomazzi 45+2 (2ºT)']	[]	0	Atlético - MG	282	Anderson Daronco	FIFA
338	34	2016	Domingo 06 de Novembro de 2016	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Kempes 30 (2ºT)']	[]	0	Figueirense - SC	316	Wagner do Nascimento Magalhaes	FIFA
339	34	2016	Domingo 06 de Novembro de 2016	11:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Pottker 21 (1ºT)']	['Ricardo Oliveira 21 (2ºT) ', 'Copete 43 (2ºT)']	2	Santos - SP	277	Braulio da Silva Machado	CBF
340	34	2016	Domingo 06 de Novembro de 2016	17:00	Arruda - Recife - PE	344	Santa Cruz - PE	1	[' Leo Moura 33 (1ºT)']	[]	0	América - MG	327	Luiz Flavio de Oliveira	FIFA
341	35	2016	Quarta 16 de Novembro de 2016	19:30	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Kempes 32 (1ºT) ', 'Sergio Manoel 19 (2ºT)']	2	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
342	35	2016	Terça 15 de Novembro de 2016	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Cicero 28 (1ºT)']	['Hernani 16 (2ºT)']	1	Atlético - PR	293	Luiz Flavio de Oliveira	FIFA
343	35	2016	Quinta 17 de Novembro de 2016	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Chavez 11 (1ºT)']	['Ramiro 21 (2ºT)']	1	Grêmio - RS	284	Jailson Macedo Freitas	CBF
344	35	2016	Quinta 17 de Novembro de 2016	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Copete 34 (1ºT)', ' Ricardo Oliveira 22 (2ºT)', ' Copete 38 (2ºT)']	['Marinho 16 (2ºT) ', 'Sergio 45+3 (2ºT)']	2	Vitória - BA	287	Wilton Pereira Sampaio	FIFA
345	35	2016	Quinta 17 de Novembro de 2016	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Lucas Pratto 14 (2ºT)']	['Gabriel Jesus 26 (1ºT)']	1	Palmeiras - SP	275	Braulio da Silva Machado	CBF
346	35	2016	Quinta 17 de Novembro de 2016	21:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Valdivia 12 (1ºT)']	['Antonio Carlos 12 (2ºT)']	1	Ponte Preta - SP	303	Heber Roberto Lopes	CBF
347	35	2016	Quarta 16 de Novembro de 2016	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Weverson 30 (2ºT)']	[]	0	Santa Cruz - PE	344	Jean Pierre Goncalves Lima	CBF
348	35	2016	Quarta 16 de Novembro de 2016	21:45	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Rafael Moura 45+2 (2ºT)']	['Camacho 43 (1ºT)']	1	Corinthians - SP	264	Anderson Daronco	FIFA
349	35	2016	Quarta 16 de Novembro de 2016	21:45	Mineirão - Belo Horizonte - MG	327	América - MG	0	[]	['Everton 33 (1ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
350	35	2016	Quarta 16 de Novembro de 2016	21:45	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Henrique 42 (1ºT)']	1	Cruzeiro - MG	283	Thiago Duarte Peixoto	CBF
351	36	2016	Domingo 20 de Novembro de 2016	17:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Andre Lima 21 (1ºT)', ' Thiago Heleno 34 (1ºT)']	[]	0	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
352	36	2016	Domingo 20 de Novembro de 2016	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	4	[' Willian Farias 23 (1ºT)', ' Ze Eduardo 1 (2ºT)', ' Kieza 11 (2ºT)', ' Marinho 16 (2ºT)']	[]	0	Figueirense - SC	316	Luiz Flavio de Oliveira	FIFA
353	36	2016	Domingo 20 de Novembro de 2016	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Dudu 17 (2ºT)']	[]	0	Botafogo - RJ	296	Elmo Alves Resende Cunha	CBF
354	36	2016	Domingo 20 de Novembro de 2016	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' De Arrascaeta 22 (1ºT)', ' Manoel 43 (2ºT)']	['Ricardo Oliveira 3 (2ºT) ', 'Ricardo Oliveira 16 (2ºT)']	2	Santos - SP	277	Heber Roberto Lopes	CBF
355	36	2016	Domingo 20 de Novembro de 2016	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Fred 11 (1ºT)', ' Negueba 24 (1ºT)', ' Miller Bolaños 19 (2ºT)']	[]	0	América - MG	327	Wilton Pereira Sampaio	FIFA
356	36	2016	Domingo 20 de Novembro de 2016	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Wendel 42 (1ºT)']	[]	0	Fluminense - RJ	266	Marielson Alves Silva	CBF
357	36	2016	Domingo 20 de Novembro de 2016	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Gabriel 2 (1ºT)', ' Diego 28 (1ºT)']	['Amaral 42 (1ºT) ', 'K. Giacomazzi 42 (2ºT)']	2	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
358	36	2016	Domingo 20 de Novembro de 2016	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Dener 39 (1ºT)', ' Tiago Rocha 45+1 (1ºT)']	[]	0	São Paulo - SP	276	Jean Pierre Goncalves Lima	CBF
359	36	2016	Domingo 20 de Novembro de 2016	19:30	Arruda - Recife - PE	344	Santa Cruz - PE	3	[' Grafite 13 (1ºT)', ' Keno 30 (1ºT)', ' Vitor 13 (2ºT)']	['Fred 6 (1ºT) ', 'Clayton 9 (2ºT) ', 'Hyuri 34 (2ºT)']	3	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
360	36	2016	Segunda 21 de Novembro de 2016	20:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Marlone 10 (2ºT)']	[]	0	Internacional - RS	285	Rodolpho Toski Marques	FIFA
361	37	2016	Sábado 26 de Novembro de 2016	20:00	Luso Brasileiro - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Sassa 17 (1ºT)']	['Pottker 20 (2ºT)']	1	Ponte Preta - SP	303	Wilton Pereira Sampaio	FIFA
362	37	2016	Sábado 26 de Novembro de 2016	20:00	Independência - Belo Horizonte - MG	327	América - MG	2	[' Danilo Barcelos 7 (2ºT)', ' Michael 18 (2ºT)']	['Rodney 11 (1ºT) ', 'Ronaldo 35 (2ºT)']	2	Sport - PE	292	Joao Batista de Arruda	CBF
363	37	2016	Sábado 26 de Novembro de 2016	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Atlético - PR	293	Leandro Pedro Vuaden	CBF
364	37	2016	Domingo 27 de Novembro de 2016	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Guerrero 5 (1ºT)', ' Diego 41 (2ºT)']	[]	0	Santos - SP	277	Eduardo Tomaz de Aquino Valadao	CBF
365	37	2016	Domingo 27 de Novembro de 2016	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Fabiano 25 (1ºT)']	[]	0	Chapecoense - SC	315	Anderson Daronco	FIFA
366	37	2016	Domingo 27 de Novembro de 2016	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Hyuri 23 (1ºT)']	['Maicon 25 (2ºT) ', 'Gilberto 45+1 (2ºT)']	2	São Paulo - SP	276	Dewson Fernando Freitas da Silva	FIFA
367	37	2016	Domingo 27 de Novembro de 2016	17:00	Beira Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Valdivia 30 (2ºT)']	[]	0	Cruzeiro - MG	283	Marcelo Aparecido R de Souza	CBF
368	37	2016	Domingo 27 de Novembro de 2016	19:30	Orlando Scarpelli - Florianopolis - SC	316	Figueirense - SC	1	[' Marquinhos Silva 18 (1ºT)']	[]	0	Fluminense - RJ	266	Jean Pierre Goncalves Lima	CBF
369	37	2016	Domingo 27 de Novembro de 2016	19:30	Arruda - Recife - PE	344	Santa Cruz - PE	5	[' Grafite 3 (2ºT)', ' Leo Moura 15 (2ºT)', ' Roberto 41 (2ºT)', ' Grafite 42 (2ºT)', ' Arthur Caike 45 (2ºT)']	['Miller Bolaños 8 (2ºT)']	1	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
370	37	2016	Segunda 28 de Novembro de 2016	20:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Marinho 11 (1ºT)']	1	Vitória - BA	287	Elmo Alves Resende Cunha	CBF
371	38	2016	Domingo 11 de Dezembro de 2016	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Marinho 13 (1ºT)']	['Gabriel 15 (1ºT) ', 'Alecsandro 45+1 (1ºT)']	2	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
372	38	2016	Domingo 11 de Dezembro de 2016	17:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	1	[' Douglas Augusto 26 (2ºT)']	['Gustavo Ferrareis 42 (2ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	CBF
373	38	2016	Domingo 11 de Dezembro de 2016	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	5	[' David Neres 1 (1ºT)', ' Gilberto 30 (1ºT)', ' Chavez 13 (2ºT)', ' Chavez 28 (2ºT)', ' Luiz 37 (2ºT)']	[]	0	Santa Cruz - PE	344	Paulo H Schleich Vollkopf	CBF
374	38	2016	Domingo 11 de Dezembro de 2016	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Ricardo Oliveira 3 (2ºT)']	[]	0	América - MG	327	Leandro Pedro Vuaden	CBF
375	38	2016	Domingo 11 de Dezembro de 2016	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' De Arrascaeta 24 (1ºT)', ' Ezequiel 11 (2ºT)', ' Robinho 13 (2ºT)']	['Guilherme 7 (1ºT) ', 'Marlone 9 (2ºT)']	2	Corinthians - SP	264	Wagner Reway	FIFA
376	38	2016	Domingo 11 de Dezembro de 2016	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Bruno Silva 17 (1ºT)']	1	Botafogo - RJ	296	Jailson Macedo Freitas	CBF
377	38	2016	Domingo 11 de Dezembro de 2016	17:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	[]	0	Flamengo - RJ	262	Elmo Alves Resende Cunha	CBF
379	38	2016	Domingo 11 de Dezembro de 2016	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Pottker 12 (2ºT)', ' Ravanelli 19 (2ºT)']	[]	0	Coritiba - PR	294	Francisco de Paula dos Santos Silva Neto	CBF
380	38	2016	Domingo 11 de Dezembro de 2016	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Rogerio 1 (2ºT)', ' Diego Souza 44 (2ºT)']	[]	0	Figueirense - SC	316	Wagner do Nascimento Magalhaes	FIFA
1	1	2017	Domingo 14 de Maio de 2017	11:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Henrique Dourado 3 (1ºT)', ' Henrique Dourado 45+3 (1ºT)', ' Sornoza 12 (2ºT)']	['Victor Ferraz 38 (1ºT) ', 'Vladimir Hernandez 42 (2ºT)']	2	Santos - SP	277	Wagner Reway	FIFA
2	1	2017	Sábado 13 de Maio de 2017	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Matheus Savio 23 (1ºT)']	['Elias 13 (2ºT)']	1	Atlético - MG	282	Jailson Macedo Freitas	AB
3	1	2017	Domingo 14 de Maio de 2017	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Jean 6 (1ºT)', ' Guerra 40 (1ºT)', ' Borja 1 (2ºT)', ' Borja 34 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Rodolpho Toski Marques	FIFA
4	1	2017	Sábado 13 de Maio de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jo 21 (1ºT)']	['Wellington Paulista 11 (2ºT)']	1	Chapecoense - SC	315	Elmo Alves Resende Cunha	AB
5	1	2017	Domingo 14 de Maio de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Ábila 2 (2ºT)']	[]	0	São Paulo - SP	276	Marcelo de Lima Henrique	AB
6	1	2017	Segunda 15 de Maio de 2017	20:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	4	[' H. Almeida 31 (1ºT)', ' Neto Berola 35 (1ºT)', ' Tomas Bastos 21 (2ºT)', ' Tomas Bastos 25 (2ºT)']	['Walter 17 (2ºT)']	1	Atlético - GO	373	Luiz César de Oliveira Magalhães	CBF
7	1	2017	Domingo 14 de Maio de 2017	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Ramiro 45 (1ºT)', ' Ramiro 9 (2ºT)']	[]	0	Botafogo - RJ	296	Braulio da Silva Machado	AB
8	1	2017	Domingo 14 de Maio de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	6	[' Tiago 33 (1ºT)', ' Ze Rafael 40 (1ºT)', ' Regis 42 (1ºT)', ' Edigar Junio 43 (1ºT)', ' Regis 45+1 (1ºT)', ' Edson 26 (2ºT)']	['Guilherme 14 (1ºT) ', 'Marcos 37 (1ºT)']	2	Atlético - PR	293	Flavio Rodrigues de Souza	AB
9	1	2017	Domingo 14 de Maio de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	4	[' Lucca 39 (1ºT)', ' Nino Paraiba 44 (1ºT)', ' Clayson 27 (2ºT)', ' Clayson 45+2 (2ºT)']	[]	0	Sport - PE	292	Marcos Mateus Pereira	AB
10	1	2017	Domingo 14 de Maio de 2017	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Vitória - BA	287	Felipe Gomes da Silva	AB
11	2	2017	Domingo 21 de Maio de 2017	18:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Bruno Silva 20 (1ºT)', ' Rodrigo 20 (2ºT)']	[]	0	Ponte Preta - SP	303	Rafael Traci	AB
12	2	2017	Domingo 21 de Maio de 2017	11:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Yago 8 (2ºT)', ' Luis Fabiano 30 (2ºT)']	['Gustavo 37 (2ºT)']	1	Bahia - BA	265	Leandro Bizzio Marinho	AB
13	2	2017	Sábado 20 de Maio de 2017	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' David Braz 7 (1ºT)']	[]	0	Coritiba - PR	294	Wagner do Nascimento Magalhaes	FIFA
14	2	2017	Segunda 22 de Maio de 2017	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Lucas Pratto 11 (1ºT)', ' Luiz 45 (2ºT)']	[]	0	Avaí - SC	314	Caio Max Augusto Vieira	AB
15	2	2017	Domingo 21 de Maio de 2017	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Gabriel Costa Franca 40 (1ºT)']	['Henrique Dourado 36 (1ºT) ', 'Richarlison 38 (1ºT)']	2	Fluminense - RJ	266	Jean Pierre Goncalves Lima	AB
16	2	2017	Domingo 21 de Maio de 2017	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Luan 1 (2ºT) ', 'Lucas Barrios 13 (2ºT)']	2	Grêmio - RS	284	Marcelo Aparecido R de Souza	AB
17	2	2017	Domingo 21 de Maio de 2017	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 33 (1ºT)']	['Alisson 19 (1ºT)']	1	Cruzeiro - MG	283	Joao Batista de Arruda	AB
18	2	2017	Domingo 21 de Maio de 2017	16:00	Arena Fonte Nova - Salvador - BA	287	Vitória - BA	0	[]	['Jo 29 (2ºT)']	1	Corinthians - SP	264	Pericles Bassols Pegado Cortez	AB
19	2	2017	Sábado 20 de Maio de 2017	19:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	['Everton 40 (1ºT) ', 'Leandro Damiao 5 (2ºT) ', 'Rodinei 20 (2ºT)']	3	Flamengo - RJ	262	Igor Junio Benevenuto	AB
20	2	2017	Sábado 20 de Maio de 2017	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Luiz Antonio 27 (2ºT)']	[]	0	Palmeiras - SP	275	Andre Luiz de Freitas Castro	AB
21	3	2017	Domingo 28 de Maio de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Bruno Silva 43 (1ºT)']	[]	0	Bahia - BA	265	Rodolpho Toski Marques	FIFA
22	3	2017	Sábado 27 de Maio de 2017	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[' Luis Fabiano 24 (1ºT)', ' Manga 29 (2ºT)', ' Nenê 45+3 (2ºT)']	['Henrique Dourado 13 (2ºT) ', 'Henrique Dourado 20 (2ºT)']	2	Fluminense - RJ	266	Raphael Claus	FIFA
23	3	2017	Domingo 28 de Maio de 2017	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Thiago Neves 37 (2ºT)']	1	Cruzeiro - MG	283	Eduardo Tomaz de Aquino Valadao	AB
24	3	2017	Sábado 27 de Maio de 2017	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Lucas Pratto 16 (2ºT)', ' Luiz 38 (2ºT)']	[]	0	Palmeiras - SP	275	Anderson Daronco	FIFA
25	3	2017	Domingo 28 de Maio de 2017	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Robinho 36 (1ºT)', ' Rafael Moura 35 (2ºT)']	['Lucca 3 (2ºT) ', 'Lucca 5 (2ºT)']	2	Ponte Preta - SP	303	Wagner do Nascimento Magalhaes	FIFA
26	3	2017	Domingo 28 de Maio de 2017	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Thiago Heleno 10 (2ºT)']	['Mancuello 24 (1ºT)']	1	Flamengo - RJ	262	Braulio da Silva Machado	AB
27	3	2017	Domingo 28 de Maio de 2017	18:00	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Andre Felipe 34 (1ºT)', ' Matheus Ferraz 19 (2ºT)', ' Andre Felipe 28 (2ºT)', ' Andre Felipe 38 (2ºT)']	['Fernandinho 5 (1ºT) ', 'R. Thyere 17 (1ºT) ', 'Fernandinho 41 (2ºT)']	3	Grêmio - RS	284	Jailson Macedo Freitas	AB
28	3	2017	Sábado 27 de Maio de 2017	21:00	Arena Fonte Nova - Salvador - BA	287	Vitória - BA	0	[]	['Rildo 26 (2ºT)']	1	Coritiba - PR	294	Vinicius Goncalves Dias Araujo	AB
29	3	2017	Domingo 28 de Maio de 2017	16:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	['Rodrigo Sam 27 (1ºT)']	1	Corinthians - SP	264	Paulo H Schleich Vollkopf	AB
30	3	2017	Segunda 29 de Maio de 2017	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Wellington Paulista 16 (1ºT)', ' Reinaldo 37 (1ºT)']	[]	0	Avaí - SC	314	Marcelo de Lima Henrique	AB
31	4	2017	Sábado 03 de Junho de 2017	18:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Richarlison 32 (1ºT)', ' Henrique Dourado 5 (2ºT)']	['Kieza 20 (2ºT)']	1	Vitória - BA	287	Ricardo Marques Ribeiro	FIFA
32	4	2017	Domingo 04 de Junho de 2017	11:00	Raulino de Oliveira - Volta Redonda - RJ	262	Flamengo - RJ	0	[]	[]	0	Botafogo - RJ	296	Dewson Fernando Freitas da Silva	FIFA
33	4	2017	Domingo 04 de Junho de 2017	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	[]	0	Atlético - MG	282	Marcelo de Lima Henrique	AB
34	4	2017	Sábado 03 de Junho de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Angel Romero 24 (2ºT)', ' Jo 29 (2ºT)']	[]	0	Santos - SP	277	Anderson Daronco	FIFA
35	4	2017	Domingo 04 de Junho de 2017	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Wellington Paulista 27 (1ºT) ', 'Douglas Groli 2 (2ºT)']	2	Chapecoense - SC	315	Claudio Francisco Lima E Silva	AB
37	4	2017	Domingo 04 de Junho de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Lucas Barrios 38 (1ºT)', ' Luan 45+2 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Sandro Meira Ricci	FIFA
38	4	2017	Segunda 05 de Junho de 2017	20:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Rene Junior 15 (1ºT)', ' Vinicius 41 (1ºT)', ' Gustavo Ferrareis 27 (2ºT)']	[]	0	Atlético - GO	373	Rodrigo Batista Raposo	AB
39	4	2017	Domingo 04 de Junho de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Lucca 5 (2ºT)']	[]	0	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
40	4	2017	Domingo 04 de Junho de 2017	11:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Romulo 33 (1ºT)']	[]	0	Sport - PE	292	Wagner Reway	FIFA
41	5	2017	Terça 06 de Junho de 2017	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Reginaldo 32 (1ºT)']	['Pablo 7 (1ºT)']	1	Atlético - PR	293	Igor Junio Benevenuto	AB
42	5	2017	Quarta 07 de Junho de 2017	21:45	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Luis Fabiano 1 (2ºT)', ' Luis Fabiano 2 (2ºT)']	['Marquinhos Gabriel 3 (1ºT) ', 'Jo 38 (1ºT) ', 'Maycon 13 (2ºT) ', 'Clayton 39 (2ºT) ', 'Clayton 45+2 (2ºT)']	5	Corinthians - SP	264	Wagner Reway	FIFA
43	5	2017	Quarta 07 de Junho de 2017	21:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	1	[' Victor Ferraz 45+5 (2ºT)']	[]	0	Botafogo - RJ	296	Jailson Macedo Freitas	AB
44	5	2017	Quinta 08 de Junho de 2017	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Antonio 19 (2ºT)', ' Lucas Pratto 45+2 (2ºT)']	[]	0	Vitória - BA	287	Rafael Traci	AB
45	5	2017	Quarta 07 de Junho de 2017	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Fred 16 (1ºT)']	[]	0	Avaí - SC	314	Bruno Arleu de Araujo	AB
46	5	2017	Quarta 07 de Junho de 2017	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' M. Galdezani 6 (2ºT)']	[]	0	Palmeiras - SP	275	Braulio da Silva Machado	AB
47	5	2017	Quarta 07 de Junho de 2017	21:45	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Osvaldo 10 (2ºT)', ' Thomas 38 (2ºT)']	[]	0	Flamengo - RJ	262	Anderson Daronco	FIFA
48	5	2017	Quinta 08 de Junho de 2017	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Edigar Junio 18 (1ºT)']	[]	0	Cruzeiro - MG	283	Wagner do Nascimento Magalhaes	FIFA
49	5	2017	Quinta 08 de Junho de 2017	19:30	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	3	[' Everaldo 36 (1ºT)', ' Everaldo 44 (1ºT)', ' Luiz Fernando 31 (2ºT)']	[]	0	Ponte Preta - SP	303	Pericles Bassols Pegado Cortez	AB
50	5	2017	Quinta 08 de Junho de 2017	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Luiz Antonio 34 (1ºT)', ' Reinaldo 27 (2ºT)', ' Arthur Caike 44 (2ºT)']	['Michel 20 (1ºT) ', 'Michel 26 (1ºT) ', 'Everton 14 (2ºT) ', 'Everton 15 (2ºT) ', 'Everton 35 (2ºT) ', 'Luan 45 (2ºT)']	6	Grêmio - RS	284	Rodolpho Toski Marques	FIFA
51	6	2017	Domingo 11 de Junho de 2017	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Roger 22 (1ºT)', ' Carli 20 (2ºT)']	['K. Giacomazzi 7 (1ºT) ', 'H. Almeida 9 (2ºT)']	2	Coritiba - PR	294	Flavio Rodrigues de Souza	AB
52	6	2017	Sábado 10 de Junho de 2017	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Luis Fabiano 17 (2ºT)', ' Douglas Luiz 45 (2ºT)']	['Andre Felipe 45+3 (2ºT)']	1	Sport - PE	292	Caio Max Augusto Vieira	AB
53	6	2017	Sábado 10 de Junho de 2017	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Guerra 9 (1ºT)', ' Keno 40 (1ºT)', ' Roger Guedes 45+3 (2ºT)']	['Henrique Dourado 18 (1ºT)']	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	AB
54	6	2017	Domingo 11 de Junho de 2017	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Angel Romero 6 (1ºT)', ' Gabriel 40 (1ºT)', ' Jadson 18 (2ºT)']	['Gilberto 17 (1ºT) ', 'Wellington Nem 38 (2ºT)']	2	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
55	6	2017	Domingo 11 de Junho de 2017	18:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Ábila 16 (2ºT)', ' Ábila 34 (2ºT)']	[]	0	Atlético - GO	373	Joao Batista de Arruda	AB
56	6	2017	Domingo 11 de Junho de 2017	19:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Kayke 27 (1ºT) ', 'Kayke 36 (1ºT)']	2	Santos - SP	277	Marcelo de Lima Henrique	AB
57	6	2017	Segunda 12 de Junho de 2017	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Cortez 40 (2ºT)']	[]	0	Bahia - BA	265	Eduardo Tomaz de Aquino Valadao	AB
58	6	2017	Domingo 11 de Junho de 2017	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Kieza 19 (1ºT)', ' Neilton 20 (2ºT)']	[]	0	Atlético - MG	282	Raphael Claus	FIFA
59	6	2017	Domingo 11 de Junho de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	3	[' Renato Caja 15 (1ºT)', ' Lucca 25 (1ºT)', ' Naldo 15 (2ºT)']	['Osman Junior 26 (2ºT) ', 'Rossi 27 (2ºT)']	2	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
60	6	2017	Domingo 11 de Junho de 2017	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Romulo 11 (2ºT)']	['Leandro Damiao 15 (2ºT)']	1	Flamengo - RJ	262	Paulo H Schleich Vollkopf	AB
61	7	2017	Quinta 15 de Junho de 2017	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Edilson 7 (1ºT) ', 'Luan 34 (2ºT)']	2	Grêmio - RS	284	Elmo Alves Resende Cunha	AB
62	7	2017	Quarta 14 de Junho de 2017	21:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Rever 45+2 (1ºT)', ' Leandro Damiao 14 (2ºT)']	[]	0	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
63	7	2017	Quarta 14 de Junho de 2017	21:45	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Kayke 6 (2ºT)']	[]	0	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
64	7	2017	Quarta 14 de Junho de 2017	21:45	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Balbuena 42 (1ºT)']	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	AB
65	7	2017	Quarta 14 de Junho de 2017	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Sidcley 45 (2ºT)']	1	Atlético - PR	293	Pericles Bassols Pegado Cortez	AB
66	7	2017	Quinta 15 de Junho de 2017	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Bahia - BA	265	Wagner Reway	FIFA
67	7	2017	Quarta 14 de Junho de 2017	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	São Paulo - SP	276	Heber Roberto Lopes	AB
68	7	2017	Quarta 14 de Junho de 2017	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Gabriel Xavier 4 (2ºT)', ' Kieza 30 (2ºT)']	['Bruno Silva 30 (1ºT) ', 'Bruno Silva 41 (1ºT)']	2	Botafogo - RJ	296	Anderson Daronco	FIFA
69	7	2017	Quarta 14 de Junho de 2017	19:30	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	3	[' Jorginho 17 (1ºT)', ' Everaldo 45+2 (1ºT)', ' Everaldo 45+1 (2ºT)']	['Juan 25 (1ºT)']	1	Avaí - SC	314	Leandro Bizzio Marinho	AB
70	7	2017	Quarta 14 de Junho de 2017	21:45	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Andrei 28 (1ºT)', ' Arthur Caike 15 (2ºT)']	['Jean 41 (1ºT)']	1	Vasco da Gama - RJ	267	Jailson Macedo Freitas	AB
71	8	2017	Domingo 18 de Junho de 2017	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Wendel 36 (1ºT)', ' Henrique Dourado 35 (2ºT)']	['Diego 10 (2ºT) ', 'Trauco 45+4 (2ºT)']	2	Flamengo - RJ	262	Vinicius Goncalves Dias Araujo	AB
72	8	2017	Sábado 17 de Junho de 2017	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Yago 20 (1ºT)']	[]	0	Avaí - SC	314	Rafael Traci	AB
73	8	2017	Sábado 17 de Junho de 2017	21:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	0	[]	[]	0	Ponte Preta - SP	303	Igor Junio Benevenuto	AB
74	8	2017	Domingo 18 de Junho de 2017	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Marcinho 1 (2ºT)']	['Cazares 7 (1ºT) ', 'Rafael Moura 35 (2ºT)']	2	Atlético - MG	282	Braulio da Silva Machado	AB
75	8	2017	Segunda 19 de Junho de 2017	20:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Thiago Neves 45 (1ºT)', ' Rafael Sobis 3 (2ºT)', ' Robinho 17 (2ºT)']	['Everton 16 (1ºT) ', 'Michel 41 (1ºT) ', 'Ramiro 15 (2ºT)']	3	Grêmio - RS	284	Raphael Claus	FIFA
76	8	2017	Domingo 18 de Junho de 2017	11:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Corinthians - SP	264	Marcelo de Lima Henrique	AB
77	8	2017	Domingo 18 de Junho de 2017	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 45 (1ºT)']	['Uillian Correia 17 (1ºT) ', 'Kanu 37 (1ºT) ', 'Andre Lima 33 (2ºT)']	3	Vitória - BA	287	Andre Luiz de Freitas Castro	AB
78	8	2017	Domingo 18 de Junho de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Vinicius 44 (1ºT)', ' Joao Paulo 38 (2ºT)']	['Roger Guedes 17 (1ºT) ', 'Keno 2 (2ºT) ', 'Yerri Mina 37 (2ºT) ', 'Willian 45+1 (2ºT)']	4	Palmeiras - SP	275	Rodolpho Toski Marques	FIFA
79	8	2017	Sábado 17 de Junho de 2017	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	0	[]	['Sidcley 3 (1ºT)']	1	Atlético - PR	293	Bruno Arleu de Araujo	AB
80	8	2017	Domingo 18 de Junho de 2017	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Roger 28 (1ºT) ', 'Pimpao 8 (2ºT)']	2	Botafogo - RJ	296	Marcelo Aparecido R de Souza	AB
81	9	2017	Quarta 21 de Junho de 2017	21:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Roger 4 (1ºT)', ' Victor 45+3 (1ºT)', ' Roger 15 (2ºT)']	['Caio Monteiro 39 (2ºT)']	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	AB
82	9	2017	Quinta 22 de Junho de 2017	21:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	5	[' Diego 13 (1ºT)', ' Guerrero 18 (1ºT)', ' Guerrero 29 (2ºT)', ' Diego 33 (2ºT)', ' Guerrero 36 (2ºT)']	['Victor Ramos 10 (2ºT)']	1	Chapecoense - SC	315	Leandro Bizzio Marinho	AB
83	9	2017	Quarta 21 de Junho de 2017	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Borja 45+1 (1ºT)']	[]	0	Atlético - GO	373	Antonio Dib Moraes de Sousa	AB
84	9	2017	Quinta 22 de Junho de 2017	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Jo 24 (1ºT)', ' Balbuena 34 (2ºT)', ' Marquinhos Gabriel 45+3 (2ºT)']	[]	0	Bahia - BA	265	Dewson Fernando Freitas da Silva	FIFA
85	9	2017	Quarta 21 de Junho de 2017	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Felipe 21 (1ºT)', ' Fred 39 (1ºT)']	['Osvaldo 16 (1ºT) ', 'Diego Souza 19 (2ºT)']	2	Sport - PE	292	Wilton Pereira Sampaio	FIFA
86	9	2017	Quarta 21 de Junho de 2017	21:45	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Wanderson 4 (1ºT)']	[]	0	São Paulo - SP	276	Wagner do Nascimento Magalhaes	FIFA
87	9	2017	Quinta 22 de Junho de 2017	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Pedro Rocha 9 (1ºT)', ' Fernandinho 40 (2ºT)']	[]	0	Coritiba - PR	294	Pericles Bassols Pegado Cortez	AB
88	9	2017	Quarta 21 de Junho de 2017	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Copete 33 (1ºT) ', 'Copete 31 (2ºT)']	2	Santos - SP	277	Heber Roberto Lopes	AB
89	9	2017	Quinta 22 de Junho de 2017	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Lucca 36 (1ºT)']	[]	0	Cruzeiro - MG	283	Grazianni Maciel Rocha	AB
90	9	2017	Quarta 21 de Junho de 2017	21:45	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Henrique Dourado 28 (1ºT) ', 'Maicon 33 (1ºT) ', 'Mascarenhas 13 (2ºT)']	3	Fluminense - RJ	266	Marielson Alves Silva	AB
91	10	2017	Segunda 26 de Junho de 2017	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Joel 5 (1ºT) ', 'Joel 16 (1ºT)']	2	Avaí - SC	314	Caio Max Augusto Vieira	AB
92	10	2017	Domingo 25 de Junho de 2017	11:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Nenê 27 (1ºT)']	[]	0	Atlético - GO	373	Dyorgines Jose Padovani de Andrade	AB
93	10	2017	Sábado 24 de Junho de 2017	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Osvaldo 35 (2ºT)']	1	Sport - PE	292	Rafael Traci	AB
94	10	2017	Domingo 25 de Junho de 2017	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Jucilei 6 (1ºT)']	['Wendel 6 (2ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
95	10	2017	Domingo 25 de Junho de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Thiago Neves 38 (1ºT)', ' Rafael Sobis 19 (2ºT)']	[]	0	Coritiba - PR	294	Marcelo Aparecido R de Souza	AB
96	10	2017	Domingo 25 de Junho de 2017	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	4	[' Wanderson 42 (1ºT)', ' Nikao 8 (2ºT)', ' Ederson 11 (2ºT)', ' Rossetto 35 (2ºT)']	['Fred 17 (1ºT)']	1	Vitória - BA	287	Rodrigo Batista Raposo	AB
97	10	2017	Domingo 25 de Junho de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Jadson 6 (2ºT)']	1	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
98	10	2017	Domingo 25 de Junho de 2017	18:30	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Berrio 28 (2ºT)']	1	Flamengo - RJ	262	Igor Junio Benevenuto	AB
99	10	2017	Domingo 25 de Junho de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Lucca 40 (1ºT)']	['Guerra 39 (1ºT) ', 'Guerra 45 (1ºT)']	2	Palmeiras - SP	275	Wagner Reway	FIFA
100	10	2017	Domingo 25 de Junho de 2017	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Marlone 11 (1ºT)']	1	Atlético - MG	282	Joao Batista de Arruda	AB
101	11	2017	Segunda 03 de Julho de 2017	20:00	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	3	[' Richarlison 1 (1ºT)', ' Pedro 24 (2ºT)', ' Marcos Jr 45+2 (2ºT)']	['Rossi 13 (1ºT) ', 'Arthur Caike 41 (1ºT) ', 'Arthur Caike 36 (2ºT)']	3	Chapecoense - SC	315	Eduardo Tomaz de Aquino Valadao	AB
102	11	2017	Domingo 02 de Julho de 2017	16:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Guerrero 37 (1ºT)', ' Diego 41 (1ºT)']	[]	0	São Paulo - SP	276	Leandro Pedro Vuaden	AB
103	11	2017	Sábado 01 de Julho de 2017	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Machado 33 (2ºT)']	[]	0	Grêmio - RS	284	Wagner do Nascimento Magalhaes	FIFA
104	11	2017	Domingo 02 de Julho de 2017	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jo 34 (2ºT)']	[]	0	Botafogo - RJ	296	Rodolpho Toski Marques	FIFA
105	11	2017	Domingo 02 de Julho de 2017	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Cazares 45+2 (1ºT)', ' Fred 45+5 (1ºT)', ' Fred 34 (2ºT)']	['Thiago Neves 6 (1ºT)']	1	Cruzeiro - MG	283	Anderson Daronco	FIFA
106	11	2017	Domingo 02 de Julho de 2017	19:00	Durival Britto - Curitiba - PR	294	Coritiba - PR	2	[' K. Giacomazzi 22 (2ºT)', ' K. Giacomazzi 43 (2ºT)']	['Thalles 20 (1ºT) ', 'Wagner 45+1 (2ºT)']	2	Vasco da Gama - RJ	267	Emerson de Almeida Ferreira	AB
107	11	2017	Domingo 02 de Julho de 2017	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Diego Souza 30 (2ºT)']	[]	0	Atlético - PR	293	Grazianni Maciel Rocha	AB
108	11	2017	Domingo 02 de Julho de 2017	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Bahia - BA	265	Raphael Claus	FIFA
109	11	2017	Sábado 01 de Julho de 2017	19:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Andrigo 12 (1ºT)']	['Thiago Maia 24 (2ºT)']	1	Santos - SP	277	Claudio Francisco Lima E Silva	AB
110	11	2017	Domingo 02 de Julho de 2017	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Ponte Preta - SP	303	Marcelo de Lima Henrique	AB
111	12	2017	Domingo 09 de Julho de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Roger 45+3 (2ºT)']	['Marlone 22 (1ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
112	12	2017	Sábado 08 de Julho de 2017	18:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Everton 19 (2ºT)']	1	Flamengo - RJ	262	Anderson Daronco	FIFA
113	12	2017	Domingo 09 de Julho de 2017	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Copete 44 (1ºT)', ' Copete 8 (2ºT)', ' Copete 21 (2ºT)']	['Shaylon 30 (2ºT) ', 'Arboleda 41 (2ºT)']	2	São Paulo - SP	276	Sandro Meira Ricci	FIFA
114	12	2017	Sábado 08 de Julho de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 45+1 (1ºT)', ' Jo 2 (2ºT)']	[]	0	Ponte Preta - SP	303	Ricardo Marques Ribeiro	FIFA
115	12	2017	Domingo 09 de Julho de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Thiago Neves 32 (1ºT)', ' Hudson 42 (1ºT)', ' Elber 45+2 (2ºT)']	['Willian 17 (2ºT)']	1	Palmeiras - SP	275	Pericles Bassols Pegado Cortez	AB
116	12	2017	Segunda 10 de Julho de 2017	20:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Mena 18 (1ºT) ', 'Rogerio 39 (2ºT) ', 'W. Maia 45+1 (2ºT)']	3	Sport - PE	292	Jailson Macedo Freitas	AB
117	12	2017	Domingo 09 de Julho de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Simião 28 (2ºT) ', 'Junior Dutra 39 (2ºT)']	2	Avaí - SC	314	Wagner Reway	FIFA
118	12	2017	Domingo 09 de Julho de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Joao Paulo 40 (2ºT)']	['Wellington Silva 11 (1ºT)']	1	Fluminense - RJ	266	Flavio Rodrigues de Souza	AB
119	12	2017	Sábado 08 de Julho de 2017	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Andrigo 24 (2ºT)']	['Andre Lima 36 (1ºT) ', 'Uillian Correia 42 (2ºT)']	2	Vitória - BA	287	Rafael Traci	AB
120	12	2017	Domingo 09 de Julho de 2017	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Lucas Marques 16 (1ºT)']	['Sidcley 1 (1ºT)']	1	Atlético - PR	293	Caio Max Augusto Vieira	AB
121	13	2017	Quarta 12 de Julho de 2017	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Roger 38 (1ºT)']	1	Botafogo - RJ	296	Wagner Reway	FIFA
122	13	2017	Quinta 13 de Julho de 2017	19:30	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Luan 25 (1ºT)']	1	Grêmio - RS	284	Marcelo Aparecido R de Souza	AB
123	13	2017	Quarta 12 de Julho de 2017	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Jadson 23 (1ºT) ', 'Guilherme Arana 19 (2ºT)']	2	Corinthians - SP	264	Leandro Pedro Vuaden	AB
124	13	2017	Quinta 13 de Julho de 2017	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Lucas Pratto 12 (2ºT)', ' Marcinho 39 (2ºT)']	['Niltinho 20 (2ºT) ', 'Everaldo 40 (2ºT)']	2	Atlético - GO	373	Marielson Alves Silva	AB
125	13	2017	Quarta 12 de Julho de 2017	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Daniel Guedes 45+4 (2ºT)']	1	Santos - SP	277	Marcelo de Lima Henrique	AB
126	13	2017	Quarta 12 de Julho de 2017	21:45	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Lucas Romero 27 (1ºT) ', 'Rafael Marques 40 (2ºT)']	2	Cruzeiro - MG	283	Braulio da Silva Machado	AB
127	13	2017	Quinta 13 de Julho de 2017	19:30	Arena Pernambuco - São Lourenço da Mata - PE	292	Sport - PE	3	[' Andre Felipe 17 (2ºT)', ' Diego Souza 45 (2ºT)', ' Andre Felipe 45+4 (2ºT)']	[]	0	Chapecoense - SC	315	Dyorgines Jose Padovani de Andrade	AB
128	13	2017	Quarta 12 de Julho de 2017	21:45	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Kanu 24 (2ºT)']	['Kanu 13 (1ºT) ', 'Thalles 29 (2ºT) ', 'Paulo Vitor 43 (2ºT) ', 'Guilherme 45+4 (2ºT)']	4	Vasco da Gama - RJ	267	Antonio Dib Moraes de Sousa	AB
129	13	2017	Quarta 12 de Julho de 2017	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Rodrigao 3 (1ºT) ', 'Rodrigao 9 (2ºT) ', 'Rene Junior 39 (2ºT)']	3	Bahia - BA	265	Rafael Traci	AB
130	13	2017	Quinta 13 de Julho de 2017	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Marquinhos 18 (1ºT)']	['K. Giacomazzi 10 (1ºT) ', 'Rildo 20 (1ºT) ', 'Rildo 34 (2ºT) ', 'H. Almeida 45+3 (2ºT)']	4	Coritiba - PR	294	Raphael Claus	FIFA
131	14	2017	Segunda 17 de Julho de 2017	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Rodrigo 1 (1ºT)', ' Guilherme Augusto 8 (2ºT)']	['Rithely 8 (1ºT)']	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
132	14	2017	Domingo 16 de Julho de 2017	16:00	Nilton Santos - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
133	14	2017	Domingo 16 de Julho de 2017	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Roger Guedes 36 (1ºT)', ' Dudu 45+1 (1ºT)', ' Mayke 25 (2ºT)', ' Dudu 31 (2ºT)']	['Uillian Correia 9 (1ºT) ', 'David 40 (2ºT)']	2	Vitória - BA	287	Bruno Arleu de Araujo	AB
134	14	2017	Sábado 15 de Julho de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jo 44 (1ºT)', ' Jo 5 (2ºT)']	['Jonathan 37 (1ºT) ', 'Otavio 37 (2ºT)']	2	Atlético - PR	293	Sandro Meira Ricci	FIFA
135	14	2017	Domingo 16 de Julho de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Sassa 14 (2ºT)']	['Everton 8 (2ºT)']	1	Flamengo - RJ	262	Rodolpho Toski Marques	FIFA
136	14	2017	Domingo 16 de Julho de 2017	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' H. Almeida 45+1 (1ºT)']	['Richarlison 31 (1ºT) ', 'Léo 38 (1ºT)']	2	Fluminense - RJ	266	Leandro Bizzio Marinho	AB
137	14	2017	Domingo 16 de Julho de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Lucas Barrios 11 (2ºT)', ' Lucas Barrios 25 (2ºT)', ' Everton 43 (2ºT)']	['R. Thyere 35 (1ºT)']	1	Ponte Preta - SP	303	Claudio Francisco Lima E Silva	AB
138	14	2017	Domingo 16 de Julho de 2017	19:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Rene Junior 29 (2ºT)']	['Junior Dutra 38 (2ºT)']	1	Avaí - SC	314	Eduardo Tomaz de Aquino Valadao	AB
139	14	2017	Domingo 16 de Julho de 2017	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Igor 26 (1ºT)']	['Fred 12 (2ºT) ', 'Elias 28 (2ºT)']	2	Atlético - MG	282	Pablo dos Santos Alves	AB
140	14	2017	Domingo 16 de Julho de 2017	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Tulio de Melo 17 (2ºT)', ' Lucas Marques 45+1 (2ºT)']	[]	0	São Paulo - SP	276	Wagner do Nascimento Magalhaes	FIFA
141	15	2017	Quinta 20 de Julho de 2017	19:30	Giulite Coutinho - Mesquita - RJ	266	Fluminense - RJ	1	[' Richarlison 41 (1ºT)']	['Sassa 35 (1ºT)']	1	Cruzeiro - MG	283	Leandro Pedro Vuaden	AB
142	15	2017	Quarta 19 de Julho de 2017	21:45	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Para 7 (1ºT)', ' Guerrero 44 (1ºT)']	['Willian 32 (1ºT) ', 'Roger Guedes 42 (1ºT)']	2	Palmeiras - SP	275	Jailson Macedo Freitas	AB
143	15	2017	Quarta 19 de Julho de 2017	19:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Vecchio 15 (2ºT)']	[]	0	Chapecoense - SC	315	Elmo Alves Resende Cunha	AB
144	15	2017	Quarta 19 de Julho de 2017	21:45	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Lucas Pratto 1 (1ºT)']	[]	0	Vasco da Gama - RJ	267	Wagner Reway	FIFA
145	15	2017	Quarta 19 de Julho de 2017	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Juninho 10 (1ºT) ', 'Juninho 42 (2ºT)']	2	Bahia - BA	265	Marcelo Aparecido R de Souza	AB
146	15	2017	Quinta 20 de Julho de 2017	21:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	[]	0	Botafogo - RJ	296	Anderson Daronco	FIFA
147	15	2017	Quinta 20 de Julho de 2017	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	4	[' Patrick 6 (1ºT)', ' Diego Souza 18 (1ºT)', ' Andre Felipe 41 (1ºT)', ' Andre Felipe 35 (2ºT)']	[]	0	Atlético - GO	373	Dewson Fernando Freitas da Silva	FIFA
148	15	2017	Quarta 19 de Julho de 2017	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' David 12 (2ºT)']	['Fernandinho 7 (1ºT) ', 'Arthur 43 (1ºT) ', 'Ramiro 17 (2ºT)']	3	Grêmio - RS	284	Pericles Bassols Pegado Cortez	AB
149	15	2017	Quarta 19 de Julho de 2017	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	4	[' Léo Artur 16 (1ºT)', ' Emerson Sheik 15 (2ºT)', ' Lucca 38 (2ºT)', ' Emerson Sheik 42 (2ºT)']	[]	0	Coritiba - PR	294	Rodrigo Batista Raposo	AB
151	16	2017	Sábado 22 de Julho de 2017	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Neilton 16 (2ºT)']	['Reinaldo 27 (1ºT) ', 'Lourency 18 (2ºT)']	2	Chapecoense - SC	315	Marcelo de Lima Henrique	AB
152	16	2017	Domingo 23 de Julho de 2017	11:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Bruno Henrique 29 (1ºT)', ' Bruno Henrique 45+1 (1ºT)', ' Bruno Henrique 31 (2ºT)']	[]	0	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
153	16	2017	Sábado 22 de Julho de 2017	19:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Berrio 6 (1ºT)', ' Everton Ribeiro 45+1 (2ºT)']	['H. Almeida 1 (2ºT)']	1	Coritiba - PR	294	Braulio da Silva Machado	AB
154	16	2017	Domingo 23 de Julho de 2017	19:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Lucca 6 (2ºT) ', 'Lucca 45+3 (2ºT)']	2	Ponte Preta - SP	303	Pablo dos Santos Alves	AB
155	16	2017	Domingo 23 de Julho de 2017	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Balbuena 4 (2ºT)']	1	Corinthians - SP	264	Rafael Traci	AB
156	16	2017	Domingo 23 de Julho de 2017	16:00	Arena Pernambuco - São Lourenço da Mata - PE	292	Sport - PE	0	[]	['Bruno 34 (1ºT) ', 'Keno 45+3 (1ºT)']	2	Palmeiras - SP	275	Eduardo Tomaz de Aquino Valadao	AB
157	16	2017	Domingo 23 de Julho de 2017	19:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Paulinho 30 (2ºT)']	['Vinicius 23 (2ºT)']	1	Botafogo - RJ	296	Caio Max Augusto Vieira	AB
158	16	2017	Domingo 23 de Julho de 2017	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Junior Dutra 21 (1ºT)']	[]	0	Cruzeiro - MG	283	Flavio Rodrigues de Souza	AB
159	16	2017	Domingo 23 de Julho de 2017	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Yago Henrique Severino dos Santos 17 (1ºT)']	['Paulinho 13 (1ºT) ', 'Paulinho 22 (2ºT)']	2	Vasco da Gama - RJ	267	Raphael Claus	FIFA
160	16	2017	Segunda 24 de Julho de 2017	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Lucas 18 (2ºT)']	['Pedro Rocha 19 (1ºT)']	1	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
161	17	2017	Sábado 29 de Julho de 2017	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Marcos Vinicius 19 (1ºT)', ' Marcos Vinicius 25 (1ºT)', ' Guilherme Augusto 23 (2ºT)']	['Cueva 17 (1ºT) ', 'Marcos Guilherme 38 (2ºT) ', 'Hernanes 41 (2ºT) ', 'Marcos Guilherme 45+1 (2ºT)']	4	São Paulo - SP	276	Andre Luiz de Freitas Castro	AB
162	17	2017	Sábado 29 de Julho de 2017	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Dudu 11 (1ºT)', ' Deyverson 36 (1ºT)']	[]	0	Avaí - SC	314	Anderson Daronco	FIFA
163	17	2017	Domingo 30 de Julho de 2017	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Vitória - BA	287	Dewson Fernando Freitas da Silva	FIFA
164	17	2017	Domingo 30 de Julho de 2017	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Luiz Otavio 40 (1ºT)']	['Diego Rosa 22 (2ºT) ', 'Gilvan 38 (2ºT)']	2	Atlético - GO	373	Marcelo Aparecido R de Souza	AB
165	17	2017	Domingo 30 de Julho de 2017	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jo 22 (1ºT)']	['Rever 26 (2ºT)']	1	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
166	17	2017	Domingo 30 de Julho de 2017	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Fabio Santos 7 (1ºT) ', 'Rafael Moura 27 (2ºT)']	2	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
167	17	2017	Domingo 30 de Julho de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Rodrigao 13 (2ºT)']	['Everton Felipe 18 (1ºT) ', 'Ronaldo 20 (2ºT) ', 'R. Lenis 45+1 (2ºT)']	3	Sport - PE	292	Elmo Alves Resende Cunha	AB
168	17	2017	Quarta 09 de Agosto de 2017	20:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Fluminense - RJ	266	Heber Roberto Lopes	AB
169	17	2017	Domingo 30 de Julho de 2017	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Fernandinho 45+2 (1ºT)']	['David Braz 44 (1ºT)']	1	Santos - SP	277	Braulio da Silva Machado	AB
170	17	2017	Segunda 31 de Julho de 2017	20:00	Raulino de Oliveira - Volta Redonda - RJ	267	Vasco da Gama - RJ	0	[]	['Lucas Ribamar 15 (2ºT)']	1	Atlético - PR	293	Claudio Francisco Lima E Silva	AB
171	18	2017	Quarta 02 de Agosto de 2017	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Andre Felipe 32 (1ºT)', ' Patrick 3 (2ºT)']	['Gustavo Scarpa 8 (1ºT) ', 'Renato Chaves 13 (1ºT)']	2	Fluminense - RJ	266	Marcelo Aparecido R de Souza	AB
172	18	2017	Quarta 02 de Agosto de 2017	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tulio de Melo 19 (1ºT)']	['Rodrigao 38 (1ºT)']	1	Bahia - BA	265	Flavio Rodrigues de Souza	AB
173	18	2017	Quarta 02 de Agosto de 2017	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Jo 31 (1ºT) ', 'Rodriguinho 37 (2ºT)']	2	Corinthians - SP	264	Anderson Daronco	FIFA
174	18	2017	Quarta 02 de Agosto de 2017	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Santiago 2 (1ºT)', ' Neilton 12 (1ºT)', ' Santiago 36 (1ºT)']	['Elton 3 (2ºT)']	1	Ponte Preta - SP	303	Andre Luiz de Freitas Castro	AB
175	18	2017	Quarta 02 de Agosto de 2017	21:45	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Pimpao 9 (2ºT)']	['Igor 45 (1ºT) ', 'Deyverson 41 (2ºT)']	2	Palmeiras - SP	275	Rafael Traci	AB
176	18	2017	Quarta 02 de Agosto de 2017	21:45	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Bruno Henrique 8 (2ºT)', ' Alison 39 (2ºT)', ' Ricardo Oliveira 42 (2ºT)']	['Everton Ribeiro 11 (2ºT) ', 'Felipe Vizeu 21 (2ºT)']	2	Flamengo - RJ	262	Eduardo Tomaz de Aquino Valadao	AB
177	18	2017	Quarta 02 de Agosto de 2017	21:45	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	0	[]	['Michel 37 (2ºT)']	1	Grêmio - RS	284	Igor Junio Benevenuto	AB
178	18	2017	Quinta 03 de Agosto de 2017	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Denilson 43 (2ºT)']	['Carleto 12 (2ºT) ', 'Filigrana 22 (2ºT)']	2	Coritiba - PR	294	Pericles Bassols Pegado Cortez	AB
179	18	2017	Quinta 03 de Agosto de 2017	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	5	[' Guilherme 34 (1ºT)', ' Guilherme 10 (2ºT)', ' Edson 12 (2ºT)', ' Eduardo 25 (2ºT)', ' Eduardo 33 (2ºT)']	[]	0	Avaí - SC	314	Leandro Bizzio Marinho	AB
180	18	2017	Quinta 03 de Agosto de 2017	20:00	Raulino de Oliveira - Volta Redonda - RJ	267	Vasco da Gama - RJ	0	[]	['Thiago Neves 2 (1ºT) ', 'Sassa 16 (1ºT) ', 'Robinho 43 (2ºT)']	3	Cruzeiro - MG	283	Vinicius Goncalves Dias Araujo	AB
181	19	2017	Sábado 05 de Agosto de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Guilherme Arana 9 (1ºT)', ' Rodriguinho 1 (2ºT)', ' Pedro Henrique 21 (2ºT)']	['Thallyson 37 (2ºT)']	1	Sport - PE	292	Wagner Reway	FIFA
182	19	2017	Domingo 06 de Agosto de 2017	11:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Yago Felipe 44 (1ºT) ', 'Neilton 20 (2ºT)']	2	Vitória - BA	287	Raphael Claus	FIFA
183	19	2017	Domingo 06 de Agosto de 2017	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Thiago Heleno 17 (1ºT)']	1	Atlético - PR	293	Rodrigo Batista Raposo	AB
184	19	2017	Domingo 06 de Agosto de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Botafogo - RJ	296	Claudio Francisco Lima E Silva	AB
185	19	2017	Domingo 06 de Agosto de 2017	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Alecsandro 22 (1ºT)', ' Rildo 43 (1ºT)']	[]	0	Chapecoense - SC	315	Wilton Pereira Sampaio	FIFA
186	19	2017	Domingo 06 de Agosto de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Pedro Rocha 5 (1ºT)', ' Fernandinho 27 (1ºT)']	[]	0	Atlético - MG	282	Flavio Rodrigues de Souza	AB
187	19	2017	Domingo 06 de Agosto de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Regis 40 (1ºT)', ' Mendoza 43 (1ºT)']	['Hernanes 45+1 (1ºT)']	1	São Paulo - SP	276	Joao Batista de Arruda	AB
188	19	2017	Domingo 06 de Agosto de 2017	19:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	[]	0	Vasco da Gama - RJ	267	Sandro Meira Ricci	FIFA
189	19	2017	Domingo 06 de Agosto de 2017	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Santos - SP	277	Pablo dos Santos Alves	AB
190	19	2017	Sábado 05 de Agosto de 2017	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Wendel 14 (1ºT)', ' Wellington Silva 33 (1ºT)', ' Henrique Dourado 12 (2ºT)']	['Paulinho 23 (1ºT)']	1	Atlético - GO	373	Paulo Roberto Alves Junior	AB
191	20	2017	Sábado 12 de Agosto de 2017	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Jorginho 17 (2ºT)']	[]	0	Coritiba - PR	294	Grazianni Maciel Rocha	AB
192	20	2017	Sábado 12 de Agosto de 2017	19:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Junior Dutra 28 (2ºT)']	1	Avaí - SC	314	Ricardo Marques Ribeiro	FIFA
193	20	2017	Domingo 13 de Agosto de 2017	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Hernanes 45+1 (1ºT)', ' Hernanes 1+1 (2ºT)', ' Arboleda 26 (2ºT)']	['Sassa 6 (2ºT) ', 'Sassa 12 (2ºT)']	2	Cruzeiro - MG	283	Rafael Traci	AB
194	20	2017	Domingo 13 de Agosto de 2017	16:00	Raulino de Oliveira - Volta Redonda - RJ	267	Vasco da Gama - RJ	1	[' Manga 42 (2ºT)']	['Guerra 32 (2ºT)']	1	Palmeiras - SP	275	Paulo Roberto Alves Junior	AB
195	20	2017	Segunda 14 de Agosto de 2017	20:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	0	[]	[]	0	Fluminense - RJ	266	Andre Luiz de Freitas Castro	AB
196	20	2017	Domingo 13 de Agosto de 2017	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Fabio Santos 15 (1ºT)', ' Rafael Moura 8 (2ºT)']	[]	0	Flamengo - RJ	262	Elmo Alves Resende Cunha	AB
197	20	2017	Domingo 13 de Agosto de 2017	19:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	4	[' Nikao 25 (1ºT)', ' Thiago Heleno 7 (2ºT)', ' Eder 14 (2ºT)', ' Sidcley 41 (2ºT)']	['Mendoza 20 (1ºT)']	1	Bahia - BA	265	Sandro Meira Ricci	FIFA
198	20	2017	Domingo 13 de Agosto de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Leandro 6 (1ºT)']	[]	0	Grêmio - RS	284	Wagner Reway	FIFA
199	20	2017	Domingo 13 de Agosto de 2017	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Ponte Preta - SP	303	Leandro Pedro Vuaden	AB
200	20	2017	Quarta 23 de Agosto de 2017	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Jo 44 (2ºT)']	1	Corinthians - SP	264	Paulo Roberto Alves Junior	AB
201	21	2017	Sábado 19 de Agosto de 2017	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Santiago 11 (1ºT)']	1	Vitória - BA	287	Eduardo Tomaz de Aquino Valadao	AB
202	21	2017	Sábado 19 de Agosto de 2017	19:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Vinicius Jr. 10 (2ºT)', ' Vinicius Jr. 29 (2ºT)']	[]	0	Atlético - GO	373	Rodolpho Toski Marques	FIFA
203	21	2017	Domingo 20 de Agosto de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Emerson Sheik 13 (1ºT)', ' Emerson Sheik 43 (2ºT)']	['Brenner 20 (1ºT)']	1	Botafogo - RJ	296	Dewson Fernando Freitas da Silva	FIFA
204	21	2017	Domingo 20 de Agosto de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Sassa 34 (1ºT)', ' Raniel 36 (2ºT)']	[]	0	Sport - PE	292	Caio Max Augusto Vieira	AB
205	21	2017	Domingo 20 de Agosto de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Tiago 23 (1ºT)', ' Mendoza 45+3 (1ºT)', ' Mendoza 1 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Raphael Claus	FIFA
206	21	2017	Domingo 20 de Agosto de 2017	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Junior Dutra 24 (2ºT)']	['Hernanes 34 (2ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	AB
207	21	2017	Domingo 20 de Agosto de 2017	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Atlético - PR	293	Jailson Macedo Freitas	AB
208	21	2017	Domingo 20 de Agosto de 2017	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Fabricio Bruno 39 (1ºT) ', 'Tulio de Melo 45+4 (2ºT)']	2	Chapecoense - SC	315	Dyorgines Jose Padovani de Andrade	AB
209	21	2017	Domingo 20 de Agosto de 2017	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Santos - SP	277	Sandro Meira Ricci	FIFA
210	21	2017	Segunda 21 de Agosto de 2017	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Henrique Dourado 37 (1ºT)', ' Henrique Dourado 42 (2ºT)']	['Valdivia 11 (2ºT)']	1	Atlético - MG	282	Vinicius Goncalves Dias Araujo	AB
211	22	2017	Sábado 26 de Agosto de 2017	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Ramon 31 (1ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
212	22	2017	Sábado 26 de Agosto de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Gilvan 1 (2ºT)']	1	Atlético - GO	373	Pericles Bassols Pegado Cortez	AB
213	22	2017	Sábado 02 de Setembro de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	5	[' Edilson 20 (1ºT)', ' Everton 34 (1ºT)', ' Fernandinho 22 (2ºT)', ' Fernandinho 24 (2ºT)', ' Dionatha 38 (2ºT)']	[]	0	Sport - PE	292	Andre Luiz de Freitas Castro	AB
214	22	2017	Domingo 27 de Agosto de 2017	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Joel 31 (1ºT)']	[]	0	Chapecoense - SC	315	Braulio da Silva Machado	AB
215	22	2017	Domingo 27 de Agosto de 2017	16:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Diego 17 (1ºT)', ' Willian Arão 31 (1ºT)']	[]	0	Atlético - PR	293	Marcelo Aparecido R de Souza	AB
216	22	2017	Domingo 27 de Agosto de 2017	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Willian 35 (1ºT)', ' Willian 39 (1ºT)', ' Keno 33 (2ºT)', ' Hyoran 45+1 (2ºT)']	['Marcos Guilherme 12 (1ºT) ', 'Hernanes 45+6 (1ºT)']	2	São Paulo - SP	276	Sandro Meira Ricci	FIFA
217	22	2017	Domingo 27 de Agosto de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Rene Junior 16 (1ºT)']	['Roger 12 (1ºT) ', 'Bruno Silva 45+1 (2ºT)']	2	Botafogo - RJ	296	Heber Roberto Lopes	AB
218	22	2017	Domingo 27 de Agosto de 2017	16:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Leo Gamalho 44 (1ºT)']	['Elias 15 (2ºT) ', 'Otero 43 (2ºT)']	2	Atlético - MG	282	Rodolpho Toski Marques	FIFA
219	22	2017	Domingo 27 de Agosto de 2017	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Rafinha 10 (2ºT)']	['Bruno Henrique 21 (1ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
220	22	2017	Segunda 28 de Agosto de 2017	20:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Kanu 23 (2ºT)']	1	Vitória - BA	287	Flavio Rodrigues de Souza	AB
221	23	2017	Sábado 09 de Setembro de 2017	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Fabio Santos 43 (1ºT)']	['Deyverson 33 (1ºT)']	1	Palmeiras - SP	275	Leandro Pedro Vuaden	AB
222	23	2017	Sábado 09 de Setembro de 2017	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Hernanes 34 (1ºT)', ' Bruno Alves 12 (2ºT)']	['Danilo Barcelos 19 (2ºT) ', 'Leo Gamalho 30 (2ºT)']	2	Ponte Preta - SP	303	Marcelo de Lima Henrique	AB
223	23	2017	Domingo 10 de Setembro de 2017	11:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	1	[' Gedoz 41 (2ºT)']	['Werley 44 (1ºT)']	1	Coritiba - PR	294	Anderson Daronco	FIFA
224	23	2017	Sábado 09 de Setembro de 2017	18:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Mateus 42 (1ºT)']	[]	0	Grêmio - RS	284	Heber Roberto Lopes	AB
225	23	2017	Domingo 10 de Setembro de 2017	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Lucas Lima 12 (2ºT)', ' Ricardo Oliveira 45+2 (2ºT)']	[]	0	Corinthians - SP	264	Raphael Claus	FIFA
226	23	2017	Domingo 10 de Setembro de 2017	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Junior Dutra 26 (1ºT)']	1	Avaí - SC	314	Wagner do Nascimento Magalhaes	FIFA
227	23	2017	Domingo 10 de Setembro de 2017	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Neilton 45 (1ºT)', ' Kanu 45+3 (2ºT)']	['Wendel 2 (2ºT) ', 'Henrique Dourado 44 (2ºT)']	2	Fluminense - RJ	266	Wagner Reway	FIFA
228	23	2017	Domingo 10 de Setembro de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Roger 10 (2ºT)', ' Roger 23 (2ºT)']	[]	0	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
229	23	2017	Domingo 10 de Setembro de 2017	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Tulio de Melo 38 (2ºT)']	['Rafinha 45 (1ºT) ', 'Raniel 18 (2ºT)']	2	Cruzeiro - MG	283	Leandro Bizzio Marinho	AB
230	23	2017	Segunda 11 de Setembro de 2017	20:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Luiz Fernando 32 (1ºT)']	['Ze Rafael 9 (2ºT)']	1	Bahia - BA	265	Thiago Duarte Peixoto	AB
231	24	2017	Sábado 16 de Setembro de 2017	21:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Willian 1 (2ºT)']	['Luiz Fernando 41 (1ºT) ', 'Walter 23 (2ºT) ', 'Ronaldo 45+2 (2ºT)']	3	Atlético - GO	373	Braulio da Silva Machado	AB
232	24	2017	Sábado 16 de Setembro de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Rodrigo 41 (1ºT)', ' Guilherme Augusto 44 (1ºT)']	[]	0	Santos - SP	277	Igor Junio Benevenuto	AB
233	24	2017	Segunda 18 de Setembro de 2017	20:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Jean 39 (1ºT)']	[]	0	Coritiba - PR	294	Dewson Fernando Freitas da Silva	FIFA
234	24	2017	Domingo 17 de Setembro de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Arthur Caike 1 (2ºT)']	1	Chapecoense - SC	315	Marcelo de Lima Henrique	AB
235	24	2017	Domingo 17 de Setembro de 2017	16:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Guerrero 9 (1ºT)', ' Everton Ribeiro 45+3 (2ºT)']	[]	0	Sport - PE	292	Vinicius Goncalves Dias Araujo	AB
236	24	2017	Domingo 17 de Setembro de 2017	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jo 28 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Elmo Alves Resende Cunha	AB
237	24	2017	Domingo 17 de Setembro de 2017	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Santiago 44 (2ºT)']	['Éder Militão 7 (2ºT) ', 'Cueva 36 (2ºT)']	2	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
238	24	2017	Domingo 17 de Setembro de 2017	11:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Simião 45 (1ºT)']	['Otero 37 (2ºT)']	1	Atlético - MG	282	Andre Luiz de Freitas Castro	AB
239	24	2017	Domingo 17 de Setembro de 2017	16:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Gedoz 11 (2ºT)', ' Lucas Ribamar 34 (2ºT)', ' Jonathan 45 (2ºT)']	['Henrique Dourado 45+1 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
240	24	2017	Domingo 17 de Setembro de 2017	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Leo 17 (2ºT)']	[]	0	Bahia - BA	265	Wagner Reway	FIFA
241	25	2017	Sábado 23 de Setembro de 2017	19:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Rodinei 35 (2ºT)']	['Pedro Castro 17 (1ºT)']	1	Avaí - SC	314	Claudio Francisco Lima E Silva	AB
242	25	2017	Sábado 23 de Setembro de 2017	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Bruno Henrique 35 (1ºT)']	[]	0	Atlético - PR	293	Ricardo Marques Ribeiro	FIFA
243	25	2017	Domingo 24 de Setembro de 2017	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Petros 27 (1ºT)']	['Clayson 33 (2ºT)']	1	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
244	25	2017	Domingo 24 de Setembro de 2017	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Egidio 42 (1ºT)']	1	Palmeiras - SP	275	Anderson Daronco	FIFA
245	25	2017	Domingo 24 de Setembro de 2017	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	2	[' Werley 36 (1ºT)', ' Carleto 37 (2ºT)']	['Roger 11 (2ºT) ', 'Guilherme Augusto 19 (2ºT) ', 'Joao Paulo 39 (2ºT)']	3	Botafogo - RJ	296	Braulio da Silva Machado	AB
246	25	2017	Domingo 24 de Setembro de 2017	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Luiz Fernando 2 (2ºT)']	['De Arrascaeta 4 (1ºT) ', 'Rafael Sobis 22 (1ºT)']	2	Cruzeiro - MG	283	Heber Roberto Lopes	AB
247	25	2017	Domingo 24 de Setembro de 2017	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Lucas Marques 42 (1ºT)']	[]	0	Ponte Preta - SP	303	Jean Pierre Goncalves Lima	AB
248	25	2017	Domingo 24 de Setembro de 2017	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Cazares 17 (1ºT)']	['Neilton 2 (1ºT) ', 'Yago Felipe 24 (2ºT) ', 'Santiago 45+2 (2ºT)']	3	Vitória - BA	287	Wilton Pereira Sampaio	FIFA
249	25	2017	Domingo 24 de Setembro de 2017	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Rodrigao 45+3 (2ºT)']	[]	0	Grêmio - RS	284	Luiz Flavio de Oliveira	FIFA
250	25	2017	Segunda 25 de Setembro de 2017	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Andre Felipe 39 (2ºT)']	['Nenê 38 (1ºT)']	1	Vasco da Gama - RJ	267	Sandro Meira Ricci	FIFA
251	26	2017	Sábado 30 de Setembro de 2017	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andy 24 (1ºT)']	['Reinaldo 19 (2ºT)']	1	Chapecoense - SC	315	Wilton Pereira Sampaio	FIFA
252	26	2017	Sábado 30 de Setembro de 2017	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Ze Rafael 45 (1ºT)']	['Rildo 18 (2ºT)']	1	Coritiba - PR	294	Pericles Bassols Pegado Cortez	AB
253	26	2017	Sábado 30 de Setembro de 2017	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Ricardo Oliveira 30 (2ºT)']	1	Santos - SP	277	Marcelo Aparecido R de Souza	AB
254	26	2017	Domingo 01 de Outubro de 2017	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Brenner 25 (1ºT)', ' Brenner 15 (2ºT)']	['David 14 (1ºT) ', 'Andre Lima 44 (2ºT) ', 'Danilinho 45+4 (2ºT)']	3	Vitória - BA	287	Eduardo Tomaz de Aquino Valadao	AB
255	26	2017	Domingo 01 de Outubro de 2017	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Marcos Guilherme 36 (1ºT)']	[]	0	Sport - PE	292	Anderson Daronco	FIFA
256	26	2017	Domingo 01 de Outubro de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Rafinha 20 (1ºT)']	['Clayson 39 (2ºT)']	1	Corinthians - SP	264	Rodolpho Toski Marques	FIFA
257	26	2017	Domingo 01 de Outubro de 2017	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Luiz Fernando 13 (2ºT) ', 'Walter 19 (2ºT)']	2	Atlético - GO	373	Raphael Claus	FIFA
258	26	2017	Domingo 01 de Outubro de 2017	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Beto da Silva 41 (2ºT)']	[]	0	Fluminense - RJ	266	Rafael Traci	AB
259	26	2017	Domingo 01 de Outubro de 2017	19:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Robinho 21 (1ºT) ', 'Robinho 37 (2ºT)']	2	Atlético - MG	282	Wagner Reway	FIFA
260	26	2017	Segunda 02 de Outubro de 2017	20:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Jean 8 (2ºT)']	[]	0	Flamengo - RJ	262	Igor Junio Benevenuto	AB
261	27	2017	Sábado 07 de Outubro de 2017	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Thiago Neves 28 (2ºT)', ' Manoel 30 (2ºT)']	['Danilo Barcelos 12 (1ºT)']	1	Ponte Preta - SP	303	Paulo Roberto Alves Junior	AB
262	27	2017	Quarta 11 de Outubro de 2017	19:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Brenner 21 (2ºT)', ' Vinicius 45+4 (2ºT)']	['Apodi 14 (2ºT)']	1	Chapecoense - SC	315	Leandro Pedro Vuaden	AB
263	27	2017	Quarta 11 de Outubro de 2017	19:30	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Guilherme 32 (1ºT)', ' Lucho Gonzalez 41 (1ºT)']	['Luiz Fernando 25 (1ºT) ', 'Walter 37 (2ºT)']	2	Atlético - GO	373	Dyorgines Jose Padovani de Andrade	AB
292	30	2017	Domingo 22 de Outubro de 2017	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Lucas Pratto 13 (1ºT)', ' Hernanes 39 (1ºT)']	[]	0	Flamengo - RJ	262	Rafael Traci	AB
264	27	2017	Quarta 11 de Outubro de 2017	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Jo 9 (1ºT)', ' Clayson 34 (2ºT)', ' Clayson 43 (2ºT)']	['H. Almeida 39 (1ºT)']	1	Coritiba - PR	294	Claudio Francisco Lima E Silva	AB
265	27	2017	Quarta 11 de Outubro de 2017	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Fabio Santos 6 (2ºT)']	[]	0	São Paulo - SP	276	Heber Roberto Lopes	AB
266	27	2017	Quarta 11 de Outubro de 2017	21:45	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Rafael Sobis 23 (2ºT)']	1	Cruzeiro - MG	283	Rodrigo Batista Raposo	AB
267	27	2017	Quarta 11 de Outubro de 2017	21:45	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Betão 17 (2ºT)']	['Wagner 2 (1ºT) ', 'Andy 23 (1ºT)']	2	Vasco da Gama - RJ	267	Wagner Reway	FIFA
268	27	2017	Quinta 12 de Outubro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Rever 23 (2ºT)']	['Para 8 (2ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
269	27	2017	Quinta 12 de Outubro de 2017	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Santiago 36 (2ºT)']	['Diego Souza 45 (1ºT) ', 'R. Lenis 19 (2ºT)']	2	Sport - PE	292	Marcelo Aparecido R de Souza	AB
270	27	2017	Quinta 12 de Outubro de 2017	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Naldo 4 (1ºT)']	['Ricardo Oliveira 45+1 (1ºT)']	1	Santos - SP	277	Raphael Claus	FIFA
271	28	2017	Quinta 12 de Outubro de 2017	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Willian 2 (1ºT)', ' Bruno 38 (1ºT)']	['Edigar Junio 45+2 (1ºT) ', 'Edigar Junio 43 (2ºT)']	2	Bahia - BA	265	Rafael Traci	AB
272	28	2017	Sábado 14 de Outubro de 2017	19:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Nenê 23 (2ºT)']	[]	0	Botafogo - RJ	296	Vinicius Goncalves Dias Araujo	AB
273	28	2017	Sábado 14 de Outubro de 2017	21:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Lucas Pratto 15 (2ºT)', ' Maicosuel 39 (2ºT)']	['Douglas 4 (2ºT)']	1	Atlético - PR	293	Marcelo de Lima Henrique	AB
274	28	2017	Domingo 15 de Outubro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Henrique Dourado 13 (1ºT)']	[]	0	Avaí - SC	314	Flavio Rodrigues de Souza	AB
275	28	2017	Domingo 15 de Outubro de 2017	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Patrick 9 (1ºT)']	['Fred 37 (1ºT)']	1	Atlético - MG	282	Leandro Bizzio Marinho	AB
276	28	2017	Domingo 15 de Outubro de 2017	17:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Walter 30 (2ºT)']	['Willian 20 (1ºT) ', 'Moises 43 (1ºT) ', 'Dudu 14 (2ºT)']	3	Palmeiras - SP	275	Rodolpho Toski Marques	FIFA
277	28	2017	Domingo 15 de Outubro de 2017	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Diego 35 (2ºT)']	1	Flamengo - RJ	262	Dewson Fernando Freitas da Silva	FIFA
278	28	2017	Domingo 15 de Outubro de 2017	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Ramiro 45+1 (2ºT)']	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	AB
279	28	2017	Domingo 15 de Outubro de 2017	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Vinicius 26 (2ºT)', ' Regis 45+3 (2ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
280	28	2017	Segunda 16 de Outubro de 2017	20:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	2	[' Sousa 35 (1ºT)', ' Ramon 23 (2ºT)']	['David 23 (1ºT) ', 'Wallace Reis 20 (2ºT)']	2	Vitória - BA	287	Braulio da Silva Machado	AB
281	29	2017	Quarta 18 de Outubro de 2017	19:30	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	['Jonathan 30 (1ºT)']	1	Vasco da Gama - RJ	267	Claudio Francisco Lima E Silva	AB
282	29	2017	Quarta 18 de Outubro de 2017	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Diogo 33 (1ºT)']	[]	0	Cruzeiro - MG	283	Marcelo de Lima Henrique	AB
283	29	2017	Quarta 18 de Outubro de 2017	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Valdivia 8 (1ºT)', ' Fred 22 (2ºT)']	['Wellington Paulista 30 (1ºT) ', 'Hector 42 (1ºT) ', 'Luiz Antonio 34 (2ºT)']	3	Chapecoense - SC	315	Vinicius Goncalves Dias Araujo	AB
284	29	2017	Quarta 18 de Outubro de 2017	21:45	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Grêmio - RS	284	Heber Roberto Lopes	AB
285	29	2017	Quarta 18 de Outubro de 2017	21:45	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Henrique Dourado 22 (1ºT)', ' Sornoza 24 (1ºT)', ' Robinho 39 (2ºT)']	['Shaylon 43 (2ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	AB
286	29	2017	Quarta 18 de Outubro de 2017	21:45	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Marquinhos 20 (2ºT)']	['Marcos Vinicius 45+5 (2ºT)']	1	Botafogo - RJ	296	Rafael Traci	AB
287	29	2017	Quinta 19 de Outubro de 2017	20:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Keno 27 (1ºT)', ' Borja 27 (2ºT)']	[]	0	Ponte Preta - SP	303	Leandro Bizzio Marinho	AB
288	29	2017	Quinta 19 de Outubro de 2017	20:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Neilton 23 (1ºT)', ' Santiago 4 (2ºT)']	['Lucas Ribamar 3 (1ºT) ', 'Douglas 20 (2ºT) ', 'Lucas Ribamar 33 (2ºT)']	3	Atlético - PR	293	Andre Luiz de Freitas Castro	AB
289	29	2017	Quinta 19 de Outubro de 2017	21:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Rever 5 (2ºT)', ' Rever 31 (2ºT)', ' Diego 39 (2ºT)', ' Diego 41 (2ºT)']	['Mendoza 23 (2ºT)']	1	Bahia - BA	265	Marcelo Aparecido R de Souza	AB
290	29	2017	Quinta 19 de Outubro de 2017	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Rogerio 38 (2ºT)']	['Ricardo Oliveira 3 (1ºT)']	1	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
291	30	2017	Segunda 23 de Outubro de 2017	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Brenner 7 (2ºT)', ' Igor 30 (2ºT)']	['Jo 14 (2ºT)']	1	Corinthians - SP	264	Rodrigo Batista Raposo	AB
293	30	2017	Domingo 22 de Outubro de 2017	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 30 (1ºT)']	['Otero 15 (2ºT) ', 'Robinho 21 (2ºT) ', 'Robinho 35 (2ºT)']	3	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
294	30	2017	Domingo 22 de Outubro de 2017	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Michel 33 (2ºT)']	['Dudu 2 (2ºT) ', 'Moises 9 (2ºT) ', 'Dudu 18 (2ºT)']	3	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
295	30	2017	Sábado 21 de Outubro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' M. Galdezani 15 (1ºT)']	['Rildo 22 (2ºT)']	1	Coritiba - PR	294	Raphael Claus	FIFA
296	30	2017	Domingo 22 de Outubro de 2017	17:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Mendoza 1 (2ºT)', ' Edigar Junio 44 (2ºT)']	['Wallace Reis 38 (2ºT)']	1	Vitória - BA	287	Marcelo de Lima Henrique	AB
297	30	2017	Domingo 22 de Outubro de 2017	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Ricardo Oliveira 30 (1ºT)']	[]	0	Atlético - GO	373	Pericles Bassols Pegado Cortez	AB
298	30	2017	Domingo 22 de Outubro de 2017	19:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Danilo Barcelos 38 (1ºT)']	['Romulo 6 (1ºT) ', 'Junior Dutra 36 (1ºT)']	2	Avaí - SC	314	Leandro Pedro Vuaden	AB
299	30	2017	Domingo 22 de Outubro de 2017	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Arthur Caike 3 (1ºT)', ' Wellington Paulista 1 (2ºT)']	[]	0	Fluminense - RJ	266	Claudio Francisco Lima E Silva	AB
300	30	2017	Domingo 22 de Outubro de 2017	17:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	2	[' Lucho Gonzalez 15 (2ºT)', ' Gedoz 42 (2ºT)']	['Diego Souza 24 (2ºT)']	1	Sport - PE	292	Thiago Duarte Peixoto	AB
301	31	2017	Sábado 28 de Outubro de 2017	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Marcos Guilherme 17 (1ºT)', ' Cueva 21 (1ºT)']	['Alison 33 (1ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
302	31	2017	Sábado 28 de Outubro de 2017	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	0	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
303	31	2017	Sábado 28 de Outubro de 2017	21:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	[]	0	Chapecoense - SC	315	Jailson Macedo Freitas	AB
304	31	2017	Domingo 29 de Outubro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Gustavo Scarpa 32 (1ºT)']	['Edigar Junio 2 (1ºT)']	1	Bahia - BA	265	Wilton Pereira Sampaio	FIFA
305	31	2017	Domingo 29 de Outubro de 2017	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Botafogo - RJ	296	Sandro Meira Ricci	FIFA
306	31	2017	Domingo 29 de Outubro de 2017	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	1	[' Lucca 39 (1ºT)']	[]	0	Corinthians - SP	264	Marcelo Aparecido R de Souza	AB
307	31	2017	Domingo 29 de Outubro de 2017	18:00	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Diego Souza 29 (1ºT)', ' Andre Felipe 42 (1ºT)', ' Diego Souza 17 (2ºT)']	['Werley 6 (1ºT) ', 'H. Almeida 39 (1ºT) ', 'Jonas 33 (2ºT) ', 'Yan Sasse 45 (2ºT)']	4	Coritiba - PR	294	Leandro Pedro Vuaden	AB
308	31	2017	Domingo 29 de Outubro de 2017	18:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Welison 21 (2ºT)']	['Luiz Fernando 10 (1ºT)']	1	Atlético - GO	373	Luiz Flavio de Oliveira	FIFA
309	31	2017	Domingo 29 de Outubro de 2017	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Pedro Castro 28 (1ºT)', ' Leandro Silva 17 (2ºT)']	['R. Thyere 11 (1ºT) ', 'Kaio 36 (1ºT)']	2	Grêmio - RS	284	Dewson Fernando Freitas da Silva	FIFA
310	31	2017	Segunda 30 de Outubro de 2017	20:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Borja 34 (1ºT)', ' Borja 40 (2ºT)']	['Juninho 5 (1ºT) ', 'Robinho 19 (2ºT)']	2	Cruzeiro - MG	283	Heber Roberto Lopes	AB
311	32	2017	Sábado 04 de Novembro de 2017	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Arthur Gomes 45 (1ºT)', ' David Braz 15 (2ºT)', ' Ricardo Oliveira 34 (2ºT)']	['Fred 5 (2ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
312	32	2017	Sábado 04 de Novembro de 2017	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Marcos Vinicius 1 (1ºT)']	['Marcos Jr 16 (2ºT) ', 'Matheus Alessandro 42 (2ºT)']	2	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
313	32	2017	Sábado 04 de Novembro de 2017	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	4	[' Alan Santos 17 (1ºT)', ' Wilson 41 (1ºT)', ' Tiago Real 6 (2ºT)', ' Jonas 40 (2ºT)']	[]	0	Avaí - SC	314	Marcelo de Lima Henrique	AB
314	32	2017	Domingo 05 de Novembro de 2017	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Angel Romero 27 (1ºT)', ' Balbuena 29 (1ºT)', ' Jo 38 (1ºT)']	['Yerri Mina 34 (1ºT) ', 'Moises 22 (2ºT)']	2	Palmeiras - SP	275	Anderson Daronco	FIFA
315	32	2017	Domingo 05 de Novembro de 2017	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Everton 24 (2ºT)', ' Everton 26 (2ºT)', ' Luan 37 (2ºT)']	['Everton Ribeiro 1 (2ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
316	32	2017	Domingo 05 de Novembro de 2017	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Wellington Paulista 21 (2ºT)']	['Andre Felipe 45+6 (2ºT)']	1	Sport - PE	292	Ricardo Marques Ribeiro	FIFA
317	32	2017	Domingo 05 de Novembro de 2017	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' De Arrascaeta 40 (1ºT)']	[]	0	Atlético - PR	293	Marcelo Aparecido R de Souza	AB
318	32	2017	Domingo 05 de Novembro de 2017	18:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Mendoza 26 (1ºT)', ' Edigar Junio 45+3 (2ºT)']	[]	0	Ponte Preta - SP	303	Wagner do Nascimento Magalhaes	FIFA
319	32	2017	Domingo 05 de Novembro de 2017	19:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Breno 10 (1ºT)']	['Andre Lima 45+1 (2ºT)']	1	Vitória - BA	287	Heber Roberto Lopes	AB
320	32	2017	Sábado 04 de Novembro de 2017	19:00	Serra Dourada - Goiania - GO	373	Atlético - GO	0	[]	['Hernanes 21 (1ºT)']	1	São Paulo - SP	276	Braulio da Silva Machado	AB
321	33	2017	Quarta 08 de Novembro de 2017	19:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Marquinhos 17 (1ºT)']	['Edigar Junio 33 (1ºT) ', 'Edigar Junio 33 (2ºT)']	2	Bahia - BA	265	Pericles Bassols Pegado Cortez	AB
322	33	2017	Quarta 08 de Novembro de 2017	19:30	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	0	[]	['Ramiro 4 (2ºT)']	1	Grêmio - RS	284	Sandro Meira Ricci	FIFA
323	33	2017	Quarta 08 de Novembro de 2017	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Andre Felipe 40 (2ºT)']	['Bruno Silva 14 (1ºT) ', 'Marcos Vinicius 18 (1ºT)']	2	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
324	33	2017	Quarta 08 de Novembro de 2017	21:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	0	[]	['Giovanni Augusto 32 (2ºT)']	1	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
325	33	2017	Quarta 08 de Novembro de 2017	21:45	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Everton 36 (1ºT)', ' Vinicius Jr. 45+3 (2ºT)']	[]	0	Cruzeiro - MG	283	Leandro Bizzio Marinho	AB
326	33	2017	Quarta 08 de Novembro de 2017	21:45	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Ricardo Oliveira 19 (2ºT)']	['Evander 39 (2ºT) ', 'Nenê 45+3 (2ºT)']	2	Vasco da Gama - RJ	267	Rafael Traci	AB
327	33	2017	Quarta 08 de Novembro de 2017	21:45	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Yago Felipe 6 (1ºT)', ' Santiago 14 (1ºT)', ' Yago Felipe 39 (1ºT)']	['Dudu 20 (1ºT)']	1	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
328	33	2017	Quinta 09 de Novembro de 2017	20:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Gilberto 27 (2ºT)', ' Arboleda 37 (2ºT)']	['Wellington Paulista 26 (1ºT) ', 'Reinaldo 14 (2ºT)']	2	Chapecoense - SC	315	Marcelo de Lima Henrique	AB
329	33	2017	Quinta 09 de Novembro de 2017	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Fabio Santos 17 (1ºT)', ' Luan 5 (2ºT)', ' Fred 20 (2ºT)']	['Diego Rosa 5 (1ºT) ', 'Andrigo 26 (1ºT)']	2	Atlético - GO	373	Rodolpho Toski Marques	FIFA
330	33	2017	Quinta 09 de Novembro de 2017	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Cleber 9 (2ºT)', ' Henrique Dourado 11 (2ºT)']	['Werley 43 (1ºT) ', 'Cleber 23 (2ºT)']	2	Coritiba - PR	294	Ricardo Marques Ribeiro	FIFA
331	34	2017	Sábado 11 de Novembro de 2017	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Guilherme 31 (1ºT)']	1	Atlético - PR	293	Anderson Daronco	FIFA
332	34	2017	Sábado 11 de Novembro de 2017	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Kazim-richards 4 (2ºT)']	[]	0	Avaí - SC	314	Dewson Fernando Freitas da Silva	FIFA
333	34	2017	Domingo 12 de Novembro de 2017	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Caio Monteiro 30 (2ºT)']	['Marcos Guilherme 40 (1ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	AB
334	34	2017	Domingo 12 de Novembro de 2017	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Deyverson 13 (1ºT)', ' Deyverson 35 (1ºT)']	[]	0	Flamengo - RJ	262	Braulio da Silva Machado	AB
335	34	2017	Domingo 12 de Novembro de 2017	17:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	2	[' Diego Rosa 41 (1ºT)', ' Diego Rosa 31 (2ºT)']	[]	0	Sport - PE	292	Luiz Flavio de Oliveira	FIFA
336	34	2017	Domingo 12 de Novembro de 2017	17:00	Alfredo Jaconi - Caxias do Sul - RS	284	Grêmio - RS	1	[' Fernandinho 19 (1ºT)']	['Patric 16 (1ºT)']	1	Vitória - BA	287	Marcelo Aparecido R de Souza	AB
337	34	2017	Domingo 12 de Novembro de 2017	18:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Edigar Junio 9 (2ºT)', ' Edigar Junio 18 (2ºT)']	['Robinho 4 (1ºT) ', 'Robinho 28 (2ºT)']	2	Atlético - MG	282	Raphael Claus	FIFA
338	34	2017	Domingo 12 de Novembro de 2017	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Lucas Romero 16 (1ºT)', ' Diogo 13 (2ºT)', ' Thiago Neves 27 (2ºT)']	['Pedro 7 (1ºT)']	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	AB
339	34	2017	Domingo 12 de Novembro de 2017	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Yan Sasse 20 (2ºT)']	['Leo Gamalho 19 (2ºT)']	1	Ponte Preta - SP	303	Elmo Alves Resende Cunha	AB
340	34	2017	Segunda 13 de Novembro de 2017	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Wellington Paulista 13 (1ºT)', ' Arthur Caike 22 (2ºT)']	[]	0	Santos - SP	277	Jailson Macedo Freitas	AB
341	35	2017	Quarta 15 de Novembro de 2017	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Danilo Barcelos 38 (1ºT)', ' Danilo Barcelos 21 (2ºT)']	['Sidcley 33 (2ºT)']	1	Atlético - PR	293	Wilton Pereira Sampaio	FIFA
342	35	2017	Quarta 15 de Novembro de 2017	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Kannemann 33 (1ºT)']	[]	0	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
343	35	2017	Quarta 15 de Novembro de 2017	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Thiago Neves 13 (2ºT)', ' Judivan 33 (2ºT)']	['Junior Dutra 22 (1ºT) ', 'Junior Dutra 45+2 (2ºT)']	2	Avaí - SC	314	Leandro Pedro Vuaden	AB
344	35	2017	Quarta 15 de Novembro de 2017	21:45	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andy 25 (1ºT)']	['Fred 7 (2ºT)']	1	Atlético - MG	282	Flavio Rodrigues de Souza	AB
345	35	2017	Quarta 15 de Novembro de 2017	21:45	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Jo 1 (2ºT)', ' Jo 3 (2ºT)', ' Jadson 39 (2ºT)']	['Henrique 1 (1ºT)']	1	Fluminense - RJ	266	Braulio da Silva Machado	AB
346	35	2017	Quinta 16 de Novembro de 2017	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Joao Paulo 43 (1ºT)']	['Jorginho 40 (1ºT) ', 'Luiz Fernando 14 (2ºT)']	2	Atlético - GO	373	Claudio Francisco Lima E Silva	AB
347	35	2017	Quinta 16 de Novembro de 2017	20:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	5	[' Deyverson 12 (2ºT)', ' Luan Garcia 18 (2ºT)', ' Deyverson 34 (2ºT)', ' Dudu 44 (2ºT)', ' Keno 45+1 (2ºT)']	['Diego Souza 38 (2ºT)']	1	Sport - PE	292	Rafael Traci	AB
348	35	2017	Quinta 16 de Novembro de 2017	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Arthur Caike 24 (1ºT)', ' Tulio de Melo 32 (2ºT)']	['David 19 (1ºT)']	1	Vitória - BA	287	Anderson Daronco	FIFA
349	35	2017	Quinta 16 de Novembro de 2017	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Cleber 8 (1ºT)']	[]	0	Flamengo - RJ	262	Raphael Claus	FIFA
350	35	2017	Quinta 16 de Novembro de 2017	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Mendoza 22 (1ºT)', ' Alison 9 (2ºT)', ' Edigar Junio 33 (2ºT)']	['Bruno Henrique 16 (1ºT)']	1	Santos - SP	277	Sandro Meira Ricci	FIFA
351	36	2017	Segunda 20 de Novembro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Douglas Augusto 13 (2ºT)', ' Henrique Dourado 41 (2ºT)']	[]	0	Ponte Preta - SP	303	Anderson Daronco	FIFA
352	36	2017	Domingo 19 de Novembro de 2017	17:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Mancuello 20 (1ºT)', ' Diego 33 (1ºT)', ' Felipe Vizeu 45 (1ºT)']	[]	0	Corinthians - SP	264	Wagner Reway	FIFA
353	36	2017	Domingo 19 de Novembro de 2017	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
354	36	2017	Domingo 19 de Novembro de 2017	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' David 20 (1ºT)']	['Alisson 31 (2ºT)']	1	Cruzeiro - MG	283	Luiz Flavio de Oliveira	FIFA
355	36	2017	Domingo 19 de Novembro de 2017	17:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Luiz Fernando 45 (2ºT)']	['Tulio de Melo 35 (1ºT)']	1	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
356	36	2017	Domingo 19 de Novembro de 2017	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Marquinhos 38 (1ºT)']	[]	0	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
357	36	2017	Domingo 19 de Novembro de 2017	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Otero 4 (1ºT)', ' Leo Silva 14 (1ºT)', ' Otero 32 (1ºT)']	[]	0	Coritiba - PR	294	Sandro Meira Ricci	FIFA
358	36	2017	Domingo 19 de Novembro de 2017	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Copete 32 (1ºT)']	[]	0	Grêmio - RS	284	Pericles Bassols Pegado Cortez	AB
359	36	2017	Domingo 19 de Novembro de 2017	19:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Thiago Heleno 14 (1ºT)', ' Douglas 18 (2ºT)', ' Fabricio 23 (2ºT)']	['Wanderson 16 (1ºT)']	1	Vasco da Gama - RJ	267	Leandro Bizzio Marinho	AB
360	36	2017	Segunda 20 de Novembro de 2017	20:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Marquinhos 13 (2ºT)', ' Lourenço 16 (2ºT)']	['Keno 30 (2ºT)']	1	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
361	37	2017	Sábado 25 de Novembro de 2017	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Marcos Jr 37 (1ºT)']	['Andre Felipe 11 (1ºT) ', 'Andre Felipe 23 (1ºT)']	2	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
362	37	2017	Domingo 26 de Novembro de 2017	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Lucas Poletto 27 (2ºT)']	['Andrigo 25 (2ºT)']	1	Atlético - GO	373	Bruno Arleu de Araujo	AB
363	37	2017	Domingo 26 de Novembro de 2017	17:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Maicon 15 (1ºT)']	[]	0	Atlético - PR	293	Wilton Pereira Sampaio	FIFA
364	37	2017	Domingo 26 de Novembro de 2017	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 35 (1ºT)', ' Marquinhos Gabriel 12 (2ºT)']	['Otero 28 (1ºT) ', 'Fred 19 (2ºT)']	2	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
365	37	2017	Domingo 26 de Novembro de 2017	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Paulão 20 (1ºT)']	1	Vasco da Gama - RJ	267	Raphael Claus	FIFA
366	37	2017	Domingo 26 de Novembro de 2017	17:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Wilson 42 (1ºT)']	['Éder Militão 22 (2ºT) ', 'M. Galdezani 26 (2ºT)']	2	São Paulo - SP	276	Anderson Daronco	FIFA
367	37	2017	Domingo 26 de Novembro de 2017	17:00	Moisés Lucarelli - Campinas - SP	303	Ponte Preta - SP	2	[' Lucca 6 (1ºT)', ' Danilo Barcelos 16 (1ºT)']	['Andre Lima 12 (2ºT) ', 'Santiago 13 (2ºT) ', 'Santiago 36 (2ºT)']	3	Vitória - BA	287	Ricardo Marques Ribeiro	FIFA
368	37	2017	Domingo 26 de Novembro de 2017	19:00	Luso Brasileiro - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Lucas Paquetá 7 (1ºT)']	['Bruno Henrique 10 (1ºT) ', 'Arthur Gomes 28 (2ºT)']	2	Santos - SP	277	Braulio da Silva Machado	AB
369	37	2017	Domingo 26 de Novembro de 2017	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Wellington Paulista 45 (1ºT)']	1	Chapecoense - SC	315	Pericles Bassols Pegado Cortez	AB
370	37	2017	Segunda 27 de Novembro de 2017	20:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Dudu 9 (2ºT)', ' Keno 18 (2ºT)']	[]	0	Botafogo - RJ	296	Elmo Alves Resende Cunha	AB
371	38	2017	Domingo 03 de Dezembro de 2017	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Brenner 25 (1ºT)', ' Ezequiel 24 (2ºT)']	['Thiago Neves 37 (1ºT) ', 'De Arrascaeta 5 (2ºT)']	2	Cruzeiro - MG	283	Leandro Bizzio Marinho	AB
372	38	2017	Domingo 03 de Dezembro de 2017	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Paulinho 28 (1ºT)', ' Mateus 28 (2ºT)']	['Lucca 44 (2ºT)']	1	Ponte Preta - SP	303	Rafael Traci	AB
373	38	2017	Domingo 03 de Dezembro de 2017	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Copete 30 (1ºT)']	['Pedro Castro 32 (1ºT)']	1	Avaí - SC	314	Wagner do Nascimento Magalhaes	FIFA
374	38	2017	Domingo 03 de Dezembro de 2017	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Brenner 18 (2ºT)']	['Eder 43 (2ºT)']	1	Bahia - BA	265	Elmo Alves Resende Cunha	AB
375	38	2017	Domingo 03 de Dezembro de 2017	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Elias 36 (1ºT)', ' Otero 45+2 (1ºT)', ' Fred 20 (2ºT)', ' Otero 42 (2ºT)']	['Jean Pyerre 34 (1ºT) ', 'Pepe 43 (1ºT) ', 'Batista 15 (2ºT)']	3	Grêmio - RS	284	Marcelo Aparecido R de Souza	AB
376	38	2017	Domingo 03 de Dezembro de 2017	17:00	Arena da Baixada - Curitiba - PR	293	Atlético - PR	3	[' Lucas Ribamar 5 (1ºT)', ' Ederson 17 (1ºT)', ' Sidcley 33 (1ºT)']	[]	0	Palmeiras - SP	275	Claudio Francisco Lima E Silva	AB
377	38	2017	Domingo 03 de Dezembro de 2017	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Andre Felipe 17 (2ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
378	38	2017	Domingo 03 de Dezembro de 2017	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Carlos Eduardo 39 (1ºT)']	['Rafael Vaz 30 (2ºT) ', 'Diego 45+4 (2ºT)']	2	Flamengo - RJ	262	Dewson Fernando Freitas da Silva	FIFA
379	38	2017	Domingo 03 de Dezembro de 2017	17:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Diego Rosa 21 (1ºT)']	['Wendel 18 (1ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
380	38	2017	Domingo 03 de Dezembro de 2017	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Elicarlos 37 (1ºT)', ' Tulio de Melo 45+4 (2ºT)']	['K. Giacomazzi 13 (1ºT)']	1	Coritiba - PR	294	Luiz Flavio de Oliveira	FIFA
1	1	2018	Sábado 14 de Abril de 2018	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Andre Felipe 9 (2ºT)']	1	Grêmio - RS	284	Rodolpho Toski Marques	FIFA
2	1	2018	Domingo 15 de Abril de 2018	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	5	[' Pablo 6 (2ºT)', ' Nikao 13 (2ºT)', ' Carleto 23 (2ºT)', ' Rossetto 42 (2ºT)', ' Ederson 45+2 (2ºT)']	['Wellington Paulista 2 (2ºT)']	1	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
3	1	2018	Domingo 15 de Abril de 2018	11:00	Independência - Belo Horizonte - MG	327	America Fc - MG	3	[' Sergio 1 (1ºT)', ' Carlinho 37 (1ºT)', ' Sergio 40 (1ºT)']	[]	0	Sport - PE	292	Savio Pereira Sampaio	AB
4	1	2018	Sábado 14 de Abril de 2018	19:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Yago Felipe 13 (1ºT)', ' Denilson 30 (2ºT)']	['Lucas Paquetá 1 (1ºT) ', 'Rever 27 (2ºT)']	2	Flamengo - RJ	262	Wagner Reway	FIFA
5	1	2018	Domingo 15 de Abril de 2018	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Wagner 41 (2ºT)', ' Yago 45+7 (2ºT)']	['Otero 12 (1ºT)']	1	Atlético - MG	282	Andre Luiz de Freitas Castro	MTR
6	1	2018	Segunda 16 de Abril de 2018	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Igor 36 (2ºT)']	['Guerra 8 (2ºT)']	1	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
7	1	2018	Segunda 16 de Abril de 2018	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Bruno Alves 37 (1ºT)']	[]	0	Paraná - PR	289	Braulio da Silva Machado	FIFA
8	1	2018	Sábado 14 de Abril de 2018	21:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	2	[' Pio 43 (1ºT)', ' Rodrygo 4 (2ºT)']	[]	0	Ceará - CE	354	Rodrigo Dalonso Ferreira	AB
9	1	2018	Domingo 15 de Abril de 2018	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Rodriguinho 44 (1ºT)', ' Rodriguinho 41 (2ºT)']	['Richard 3 (2ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
10	1	2018	Domingo 15 de Abril de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Nico Lopez 37 (1ºT)', ' Nico Lopez 15 (2ºT)']	[]	0	Bahia - BA	265	Eduardo Tomaz de Aquino Valadao	AB
11	2	2018	Domingo 22 de Abril de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Ricardo Oliveira 19 (1ºT)', ' Roger Guedes 27 (2ºT)']	['Gabriel Costa Franca 42 (2ºT)']	1	Vitória - BA	287	Grazianni Maciel Rocha	AB
12	2	2018	Domingo 22 de Abril de 2018	11:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	['Rodriguinho 25 (1ºT) ', 'Sidcley 26 (1ºT) ', 'Clayson 34 (2ºT) ', 'Gabriel 40 (2ºT)']	4	Corinthians - SP	264	Pericles Bassols Pegado Cortez	MTR
13	2	2018	Domingo 22 de Abril de 2018	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Wellington Paulista 19 (1ºT)']	['Andy 9 (2ºT)']	1	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
14	2	2018	Sábado 21 de Abril de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Junior Brumado 45+4 (2ºT)']	[]	0	Santos - SP	277	Claudio Francisco Lima E Silva	AB
15	2	2018	Domingo 22 de Abril de 2018	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Pedro 3 (2ºT)']	[]	0	Cruzeiro - MG	283	Flavio Rodrigues de Souza	AB
16	2	2018	Sábado 21 de Abril de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Henrique Dourado 28 (1ºT)', ' Henrique Dourado 35 (1ºT)']	[]	0	America Fc - MG	327	Leandro Bizzio Marinho	AB
17	2	2018	Domingo 22 de Abril de 2018	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	São Paulo - SP	276	Paulo Roberto Alves Junior	AB
18	2	2018	Segunda 23 de Abril de 2018	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Everton Felipe 40 (2ºT)']	['Rodrigo 45+2 (2ºT)']	1	Botafogo - RJ	296	Rafael Traci	AB
19	2	2018	Domingo 22 de Abril de 2018	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Dudu 39 (1ºT)']	[]	0	Internacional - RS	285	Marcelo de Lima Henrique	MTR
20	2	2018	Domingo 22 de Abril de 2018	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Athletico Paranaense - PR	293	Raphael Claus	FIFA
21	3	2018	Domingo 29 de Abril de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Roger Guedes 41 (2ºT)']	[]	0	Corinthians - SP	264	Dewson Fernando Freitas da Silva	FIFA
22	3	2018	Domingo 29 de Abril de 2018	16:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Jhonny 44 (2ºT)']	['Rogerio 7 (1ºT) ', 'Marlone 3 (2ºT)']	2	Sport - PE	292	Daniel Nobre Bins	AB
23	3	2018	Segunda 30 de Abril de 2018	20:00	Independência - Belo Horizonte - MG	327	America Fc - MG	2	[' Marquinhos 7 (1ºT)', ' Rafael Moura 35 (1ºT)']	['Pedro Botelho 31 (2ºT)']	1	Vitória - BA	287	Vinicius Furlan	AB
24	3	2018	Domingo 29 de Abril de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Athletico Paranaense - PR	293	Ricardo Marques Ribeiro	FIFA
25	3	2018	Domingo 29 de Abril de 2018	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Pedro 43 (2ºT)']	['Éder Militão 23 (1ºT)']	1	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
26	3	2018	Sábado 28 de Abril de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Brenner 35 (1ºT)', ' Gilson 45+1 (2ºT)']	['Igor 37 (1ºT)']	1	Grêmio - RS	284	Vinicius Gonçalves Dias Araujo	AB
27	3	2018	Domingo 29 de Abril de 2018	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Vinicius Jr. 42 (1ºT) ', 'Vinicius Jr. 8 (2ºT) ', 'Diego 25 (2ºT)']	3	Flamengo - RJ	262	Anderson Daronco	FIFA
28	3	2018	Quinta 27 de Setembro de 2018	20:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	1	[' Diego 44 (1ºT)']	['Andy 33 (2ºT)']	1	Vasco da Gama - RJ	267	Wagner Reway	FIFA
29	3	2018	Domingo 29 de Abril de 2018	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	[]	0	Chapecoense - SC	315	Igor Junio Benevenuto de Oliveira	AB
30	3	2018	Domingo 29 de Abril de 2018	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Cruzeiro - MG	283	Wagner do Nascimento Magalhaes	FIFA
31	4	2018	Domingo 06 de Maio de 2018	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Dedé 26 (2ºT)']	[]	0	Botafogo - RJ	296	Leandro Bizzio Marinho	AB
32	4	2018	Domingo 06 de Maio de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Pablo 44 (2ºT)']	['Bruno 43 (1ºT) ', 'Marcos Rocha 14 (2ºT) ', 'Willian 39 (2ºT)']	3	Palmeiras - SP	275	Claudio Francisco Lima E Silva	AB
33	4	2018	Segunda 07 de Maio de 2018	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Arthur Caike 17 (2ºT)']	['Carlos Alberto Carvalho 22 (2ºT)']	1	Paraná - PR	289	Raphael Claus	FIFA
34	4	2018	Domingo 06 de Maio de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Neilton 21 (1ºT)']	['Pablo Dyego 28 (2ºT) ', 'Gilberto 40 (2ºT)']	2	Fluminense - RJ	266	Rodrigo Dalonso Ferreira	AB
35	4	2018	Sábado 05 de Maio de 2018	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	4	[' Bruno 11 (2ºT)', ' Caio Monteiro 18 (2ºT)', ' Andy 34 (2ºT)', ' Kelvin 45+1 (2ºT)']	['Rafael Moura 31 (1ºT)']	1	America Fc - MG	327	Flavio Rodrigues de Souza	AB
36	4	2018	Domingo 06 de Maio de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Lucas Paquetá 25 (2ºT)', ' Everton Ribeiro 41 (2ºT)']	[]	0	Internacional - RS	285	Luiz Flavio de Oliveira	FIFA
37	4	2018	Sábado 05 de Maio de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Everton 24 (1ºT)', ' Diego Souza 36 (2ºT)']	['Roger Guedes 25 (2ºT) ', 'Ricardo Oliveira 33 (2ºT)']	2	Atlético - MG	282	Rafael Traci	AB
38	4	2018	Domingo 06 de Maio de 2018	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Douglas Friedrich 44 (1ºT)', ' Claudio Winck 4 (2ºT)']	[]	0	Bahia - BA	265	Grazianni Maciel Rocha	AB
39	4	2018	Domingo 06 de Maio de 2018	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Henrique 39 (1ºT)']	['Wescley 8 (1ºT)']	1	Ceará - CE	354	Savio Pereira Sampaio	AB
40	4	2018	Domingo 06 de Maio de 2018	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	5	[' Maicon 31 (1ºT)', ' Everton 45+1 (1ºT)', ' Maicon 9 (2ºT)', ' Andre Felipe 24 (2ºT)', ' Arthur 35 (2ºT)']	['Sousa 32 (1ºT)']	1	Santos - SP	277	Pericles Bassols Pegado Cortez	MTR
41	5	2018	Domingo 13 de Maio de 2018	11:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Dedé 45+1 (1ºT)', ' De Arrascaeta 9 (2ºT)']	[]	0	Sport - PE	292	Bruno Arleu de Araujo	AB
42	5	2018	Domingo 13 de Maio de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Pablo 31 (1ºT)']	['Gleison Bremer Silva Nascimento 8 (2ºT) ', 'Roger Guedes 19 (2ºT)']	2	Atlético - MG	282	Luiz Flavio de Oliveira	FIFA
43	5	2018	Domingo 13 de Maio de 2018	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Hector 22 (1ºT)', ' Guilherme Augusto 23 (2ºT)', ' Leandro 45 (2ºT)']	['Guerrero 3 (2ºT) ', 'Vinicius Jr. 33 (2ºT)']	2	Flamengo - RJ	262	Leandro Pedro Vuaden	MTR
44	5	2018	Domingo 13 de Maio de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Edigar Junio 11 (1ºT)', ' Edigar Junio 38 (1ºT)']	['Santiago 30 (1ºT) ', 'Shaylon 45+3 (2ºT)']	2	São Paulo - SP	276	Dewson Fernando Freitas da Silva	FIFA
45	5	2018	Domingo 13 de Maio de 2018	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Yago 39 (1ºT)', ' Andy 37 (2ºT)']	['Andre Lima 17 (1ºT) ', 'Lucas Fernandes 25 (2ºT) ', 'Werley 29 (2ºT)']	3	Vitória - BA	287	Jean Pierre Goncalves Lima	AB
46	5	2018	Segunda 14 de Maio de 2018	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Rodrigo 28 (1ºT)', ' Kieza 18 (2ºT)']	['Pedro 33 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
47	5	2018	Segunda 14 de Maio de 2018	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Elton 37 (1ºT)', ' Pio 45+2 (2ºT)']	['Giovanni Palmieri 2 (1ºT) ', 'Giovanni Palmieri 29 (1ºT)']	2	America Fc - MG	327	Eduardo Tomaz de Aquino Valadao	AB
48	5	2018	Domingo 13 de Maio de 2018	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Rodrygo 1 (2ºT)', ' Gabriel Barbosa 13 (2ºT)', ' Gabriel Barbosa 31 (2ºT)']	['Silvinho 45+2 (2ºT)']	1	Paraná - PR	289	Wagner Reway	FIFA
49	5	2018	Domingo 13 de Maio de 2018	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Rodriguinho 18 (1ºT)']	[]	0	Palmeiras - SP	275	Anderson Daronco	FIFA
50	5	2018	Sábado 12 de Maio de 2018	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
51	6	2018	Sábado 19 de Maio de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Roger Guedes 16 (2ºT)']	[]	0	Cruzeiro - MG	283	Raphael Claus	FIFA
52	6	2018	Domingo 20 de Maio de 2018	16:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	[]	0	Grêmio - RS	284	Rodrigo Batista Raposo	AB
53	6	2018	Domingo 20 de Maio de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Juninho 32 (2ºT)']	[]	0	Botafogo - RJ	296	Rodolpho Toski Marques	FIFA
54	6	2018	Domingo 20 de Maio de 2018	11:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Wallyson 20 (1ºT)', ' Neilton 39 (2ºT)']	['Wescley 30 (2ºT)']	1	Ceará - CE	354	Marcelo de Lima Henrique	MTR
55	6	2018	Domingo 20 de Maio de 2018	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Thiago Heleno 23 (1ºT)', ' Marcos Jr 35 (1ºT)']	[]	0	Athletico Paranaense - PR	293	Igor Junio Benevenuto de Oliveira	AB
56	6	2018	Sábado 19 de Maio de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Vinicius Jr. 13 (1ºT)']	['Wagner 18 (1ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
57	6	2018	Domingo 20 de Maio de 2018	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Diego Souza 10 (2ºT)']	[]	0	Santos - SP	277	Braulio da Silva Machado	FIFA
58	6	2018	Domingo 20 de Maio de 2018	16:00	Arena Pernambuco - São Lourenço da Mata - PE	292	Sport - PE	1	[' Carlos 17 (2ºT)']	['Roger 10 (2ºT)']	1	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
59	6	2018	Sábado 19 de Maio de 2018	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Willian 3 (1ºT)', ' Antonio Carlos 32 (1ºT)', ' Borja 41 (1ºT)']	[]	0	Bahia - BA	265	Rafael Traci	AB
60	6	2018	Segunda 21 de Maio de 2018	20:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Lucca 38 (1ºT)', ' Moledo 15 (2ºT)', ' Patrick 38 (2ºT)']	[]	0	Chapecoense - SC	315	Flavio Rodrigues de Souza	AB
61	7	2018	Sábado 26 de Maio de 2018	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Everton Ribeiro 34 (2ºT)']	1	Flamengo - RJ	262	Anderson Daronco	FIFA
62	7	2018	Domingo 27 de Maio de 2018	11:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	[]	0	Athletico Paranaense - PR	293	Vinicius Gonçalves Dias Araujo	AB
63	7	2018	Domingo 27 de Maio de 2018	19:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Rafael Moura 11 (1ºT)']	['Diego Souza 8 (1ºT) ', 'Nenê 45+2 (1ºT) ', 'Nenê 15 (2ºT)']	3	São Paulo - SP	276	Bruno Arleu de Araujo	AB
64	7	2018	Domingo 27 de Maio de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Elber 21 (2ºT)', ' Ze Rafael 42 (2ºT)', ' Regis 45+1 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Rodolpho Toski Marques	FIFA
65	7	2018	Sábado 26 de Maio de 2018	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Pedro 21 (1ºT)', ' Marcos Jr 25 (1ºT)', ' Pedro 41 (2ºT)']	['Arthur Caike 5 (2ºT)']	1	Chapecoense - SC	315	Rafael Traci	AB
66	7	2018	Domingo 27 de Maio de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Kieza 43 (1ºT)']	['Denilson 38 (1ºT)']	1	Vitória - BA	287	Flavio Rodrigues de Souza	AB
67	7	2018	Domingo 27 de Maio de 2018	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Thonny Anderson 35 (2ºT)']	1	Grêmio - RS	284	Wagner Reway	FIFA
68	7	2018	Domingo 27 de Maio de 2018	16:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	0	[]	['Bruno Silva 30 (2ºT)']	1	Cruzeiro - MG	283	Paulo Roberto Alves Junior	AB
69	7	2018	Sábado 26 de Maio de 2018	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Keno 32 (1ºT)', ' Hyoran 36 (2ºT)']	['Anselmo 5 (2ºT) ', 'Anselmo 27 (2ºT) ', 'Rafael Marques 41 (2ºT)']	3	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
70	7	2018	Domingo 27 de Maio de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Leandro Damiao 18 (2ºT)', ' Rossi 45+2 (2ºT)']	['Mateus 4 (1ºT)']	1	Corinthians - SP	264	Pericles Bassols Pegado Cortez	MTR
71	8	2018	Quarta 30 de Maio de 2018	21:45	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Rafael Sobis 23 (2ºT)']	[]	0	Palmeiras - SP	275	Braulio da Silva Machado	FIFA
72	8	2018	Quinta 31 de Maio de 2018	21:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Thiago Heleno 17 (1ºT)', ' Guilherme 8 (2ºT)']	[]	0	Santos - SP	277	Savio Pereira Sampaio	AB
73	8	2018	Quarta 30 de Maio de 2018	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Arthur Caike 17 (2ºT)', ' Hector 33 (2ºT)']	[]	0	Ceará - CE	354	Igor Junio Benevenuto de Oliveira	AB
74	8	2018	Quarta 30 de Maio de 2018	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Wallyson 45 (1ºT)', ' Aderllan 13 (2ºT)']	['Patrick 25 (1ºT) ', 'Aderllan 39 (1ºT) ', 'Nico Lopez 45+3 (2ºT)']	3	Internacional - RS	285	Raphael Claus	FIFA
75	8	2018	Quarta 30 de Maio de 2018	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Yago 43 (1ºT)']	[]	0	Paraná - PR	289	Leandro Pedro Vuaden	MTR
76	8	2018	Quinta 31 de Maio de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Diego 41 (1ºT)', ' Lucas Paquetá 45 (1ºT)']	[]	0	Bahia - BA	265	Jean Pierre Goncalves Lima	AB
77	8	2018	Quarta 30 de Maio de 2018	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Nenê 20 (1ºT)', ' Diego Souza 30 (1ºT)', ' Everton 45+4 (1ºT)']	['Leo Valencia 15 (1ºT) ', 'Pimpao 38 (2ºT)']	2	Botafogo - RJ	296	Wilton Pereira Sampaio	FIFA
78	8	2018	Quarta 30 de Maio de 2018	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Rogerio 29 (1ºT)', ' Gabriel 22 (2ºT)', ' Michel Bastos 26 (2ºT)']	['Cazares 3 (2ºT) ', 'Ricardo Oliveira 20 (2ºT)']	2	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
79	8	2018	Quinta 31 de Maio de 2018	18:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Jadson 4 (2ºT)']	[]	0	America Fc - MG	327	Grazianni Maciel Rocha	AB
80	8	2018	Quarta 30 de Maio de 2018	21:45	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
81	9	2018	Sábado 02 de Junho de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Ricardo Oliveira 20 (1ºT)', ' Fabio Santos 35 (1ºT)', ' Roger Guedes 13 (2ºT)']	['Leandro 19 (1ºT) ', 'Arthur Caike 45+5 (1ºT) ', 'Wellington Paulista 19 (2ºT)']	3	Chapecoense - SC	315	Bruno Arleu de Araujo	AB
82	9	2018	Segunda 04 de Junho de 2018	20:00	Durival Britto - Curitiba - PR	289	Paraná - PR	2	[' Thiago Santos 9 (2ºT)', ' Guilherme Biteco 43 (2ºT)']	['Pablo Dyego 45+2 (2ºT)']	1	Fluminense - RJ	266	Leandro Bizzio Marinho	AB
83	9	2018	Domingo 03 de Junho de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	3	[' Sergio 39 (1ºT)', ' Sergio 31 (2ºT)', ' Ademir 44 (2ºT)']	['Carleto 38 (1ºT)']	1	Athletico Paranaense - PR	293	Rodrigo Batista Raposo	AB
84	9	2018	Domingo 03 de Junho de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Maicon 10 (1ºT) ', 'Thaciano 45+3 (2ºT)']	2	Grêmio - RS	284	Pericles Bassols Pegado Cortez	MTR
85	9	2018	Sábado 02 de Junho de 2018	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andrey 7 (2ºT)']	['Kieza 4 (1ºT) ', 'Igor 35 (1ºT)']	2	Botafogo - RJ	296	Raphael Claus	FIFA
86	9	2018	Domingo 03 de Junho de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Felipe Vizeu 35 (2ºT)']	[]	0	Corinthians - SP	264	Anderson Daronco	FIFA
87	9	2018	Domingo 03 de Junho de 2018	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Sassa 18 (1ºT)']	1	Cruzeiro - MG	283	Rodrigo Carvalhaes de Miranda	AB
88	9	2018	Domingo 03 de Junho de 2018	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	5	[' Rodrygo 22 (1ºT)', ' Rodrygo 26 (1ºT)', ' Rodrygo 31 (1ºT)', ' Renato 44 (1ºT)', ' Gabriel Barbosa 29 (2ºT)']	['Neilton 18 (2ºT) ', 'Ramon 38 (2ºT)']	2	Vitória - BA	287	Rodrigo Dalonso Ferreira	AB
89	9	2018	Sábado 02 de Junho de 2018	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Willian 9 (2ºT)', ' Willian 21 (2ºT)', ' Dudu 24 (2ºT)']	['Edu Dracena 29 (1ºT)']	1	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
90	9	2018	Sábado 02 de Junho de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Sport - PE	292	Marcelo Aparecido Ribeiro de Souza	AB
91	10	2018	Quarta 06 de Junho de 2018	21:45	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Raniel 15 (2ºT)']	['Andrey 21 (1ºT)']	1	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
92	10	2018	Quinta 07 de Junho de 2018	20:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Silvinho 21 (2ºT)']	[]	0	Bahia - BA	265	Marcelo de Lima Henrique	MTR
93	10	2018	Quinta 07 de Junho de 2018	21:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Messias 6 (2ºT)']	['Ricardo Oliveira 12 (1ºT) ', 'Cazares 39 (1ºT) ', 'Tomas Andrade 43 (2ºT)']	3	Atlético - MG	282	Braulio da Silva Machado	FIFA
94	10	2018	Quarta 06 de Junho de 2018	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Neilton 17 (2ºT)']	[]	0	Chapecoense - SC	315	Dyorgines Jose Padovani de Andrade	AB
95	10	2018	Quinta 07 de Junho de 2018	20:00	Mané Garrincha - Brasilia - DF	266	Fluminense - RJ	0	[]	['Henrique Dourado 29 (1ºT) ', 'Felipe Vizeu 33 (2ºT)']	2	Flamengo - RJ	262	Dewson Fernando Freitas da Silva	FIFA
96	10	2018	Quarta 06 de Junho de 2018	19:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Ceará - CE	354	Leandro Pedro Vuaden	MTR
97	10	2018	Terça 05 de Junho de 2018	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Internacional - RS	285	Paulo Roberto Alves Junior	AB
98	10	2018	Quarta 06 de Junho de 2018	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Fellipe 1 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Igor Junio Benevenuto de Oliveira	AB
99	10	2018	Quarta 06 de Junho de 2018	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Roger 6 (2ºT)']	['Victor Ferraz 30 (2ºT)']	1	Santos - SP	277	Ricardo Marques Ribeiro	FIFA
100	10	2018	Quarta 06 de Junho de 2018	21:45	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Willian 21 (2ºT) ', 'Willian 41 (2ºT)']	2	Palmeiras - SP	275	Rafael Traci	AB
101	11	2018	Domingo 10 de Junho de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	5	[' Leo Silva 34 (1ºT)', ' Roger Guedes 45 (1ºT)', ' Tomas Andrade 18 (2ºT)', ' Ricardo Oliveira 41 (2ºT)', ' Roger Guedes 45+3 (2ºT)']	['Gilberto 28 (1ºT) ', 'Pedro 45+2 (1ºT)']	2	Fluminense - RJ	266	Flavio Rodrigues de Souza	AB
102	11	2018	Sábado 09 de Junho de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Nenê 16 (2ºT)']	1	São Paulo - SP	276	Anderson Daronco	FIFA
103	11	2018	Sábado 09 de Junho de 2018	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Bruno 34 (2ºT)', ' Elicarlos 45+4 (2ºT)']	[]	0	Cruzeiro - MG	283	Grazianni Maciel Rocha	AB
104	11	2018	Domingo 10 de Junho de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Regis 45+2 (1ºT)', ' Vinicius 28 (2ºT)', ' Allione 45+3 (2ºT)']	['Kieza 12 (1ºT) ', 'Kieza 5 (2ºT) ', 'Leo Valencia 38 (2ºT)']	3	Botafogo - RJ	296	Leandro Bizzio Marinho	AB
105	11	2018	Sábado 09 de Junho de 2018	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[' Yago 18 (1ºT)', ' Yago 45+1 (1ºT)', ' Ramon 45 (2ºT)']	['Paulão 42 (1ºT) ', 'Michel Bastos 29 (2ºT)']	2	Sport - PE	292	Savio Pereira Sampaio	AB
106	11	2018	Domingo 10 de Junho de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Diego 20 (1ºT)', ' Felipe Vizeu 20 (2ºT)']	[]	0	Paraná - PR	289	Marcelo Aparecido Ribeiro de Souza	AB
107	11	2018	Domingo 10 de Junho de 2018	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Felipe Azevedo 25 (1ºT)', ' Elton 42 (2ºT)']	['Thiago Santos 5 (1ºT) ', 'Dudu 22 (1ºT)']	2	Palmeiras - SP	275	Jean Pierre Goncalves Lima	AB
108	11	2018	Domingo 10 de Junho de 2018	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Gabriel Barbosa 5 (2ºT)']	['Leandro Damiao 33 (1ºT) ', 'Victor Cuesta 7 (2ºT)']	2	Internacional - RS	285	Wagner do Nascimento Magalhaes	FIFA
109	11	2018	Sábado 09 de Junho de 2018	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Vitória - BA	287	Pericles Bassols Pegado Cortez	MTR
110	11	2018	Domingo 10 de Junho de 2018	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Everton 31 (1ºT)']	[]	0	America Fc - MG	327	Rodrigo Dalonso Ferreira	AB
111	12	2018	Quarta 13 de Junho de 2018	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Roger Guedes 35 (2ºT)', ' Luan 45+1 (2ºT)']	['Naldo 32 (2ºT)']	1	Ceará - CE	354	Vinicius Furlan	AB
112	12	2018	Quarta 13 de Junho de 2018	19:30	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Silvinho 30 (2ºT)']	['Rafael Sobis 19 (2ºT)']	1	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	FIFA
113	12	2018	Quarta 13 de Junho de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	[]	0	Chapecoense - SC	315	Paulo Roberto Alves Junior	AB
114	12	2018	Quarta 13 de Junho de 2018	21:45	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Mena 45 (2ºT)']	[]	0	Corinthians - SP	264	Leandro Pedro Vuaden	MTR
115	12	2018	Quarta 13 de Junho de 2018	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Bruno Henrique 41 (2ºT)']	1	Santos - SP	277	Rafael Traci	AB
116	12	2018	Quarta 13 de Junho de 2018	21:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Rodrigo 34 (1ºT)', ' Renan Lodi 26 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Rodrigo Batista Raposo	AB
117	12	2018	Terça 12 de Junho de 2018	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Nenê 21 (1ºT)', ' Nenê 41 (1ºT)', ' Everton 8 (2ºT)']	[]	0	Vitória - BA	287	Igor Junio Benevenuto de Oliveira	AB
118	12	2018	Quarta 13 de Junho de 2018	19:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
119	12	2018	Quarta 13 de Junho de 2018	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Willian 6 (1ºT)']	['Thuler 9 (2ºT)']	1	Flamengo - RJ	262	Braulio da Silva Machado	FIFA
120	12	2018	Quarta 13 de Junho de 2018	21:45	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Nico Lopez 11 (1ºT)', ' Patrick 45 (1ºT)', ' Victor Cuesta 23 (2ºT)']	['Andrey 20 (2ºT)']	1	Vasco da Gama - RJ	267	Raphael Claus	FIFA
121	13	2018	Quinta 19 de Julho de 2018	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' De Arrascaeta 34 (1ºT)', ' Robinho 14 (2ºT)', ' Raniel 19 (2ºT)']	['Christian 31 (1ºT)']	1	America Fc - MG	327	Raphael Claus	FIFA
122	13	2018	Quinta 19 de Julho de 2018	21:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Raphael Veiga 43 (1ºT)', ' Paulo Andre 14 (2ºT)']	['Pottker 13 (1ºT) ', 'Wellington Silva 34 (2ºT)']	2	Internacional - RS	285	Ricardo Marques Ribeiro	FIFA
123	13	2018	Quinta 19 de Julho de 2018	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Osman Junior 39 (2ºT)']	['Gilberto 33 (2ºT)']	1	Bahia - BA	265	Rodolpho Toski Marques	FIFA
124	13	2018	Quarta 18 de Julho de 2018	21:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Andre Lima 35 (1ºT)']	[]	0	Paraná - PR	289	Savio Pereira Sampaio	AB
125	13	2018	Quinta 19 de Julho de 2018	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andy 15 (2ºT)']	['Pedro 44 (2ºT)']	1	Fluminense - RJ	266	Marcelo Aparecido Ribeiro de Souza	AB
126	13	2018	Quarta 18 de Julho de 2018	21:45	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Everton 25 (2ºT)']	1	São Paulo - SP	276	Paulo Roberto Alves Junior	AB
127	13	2018	Quarta 18 de Julho de 2018	19:30	Presidente Vargas - Fortaleza - CE	354	Ceará - CE	1	[' Arthur 8 (2ºT)']	[]	0	Sport - PE	292	Grazianni Maciel Rocha	AB
128	13	2018	Quinta 19 de Julho de 2018	20:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	1	[' Gustavo 30 (2ºT)']	['Lucas Lima 6 (1ºT)']	1	Palmeiras - SP	275	Dewson Fernando Freitas da Silva	FIFA
129	13	2018	Quarta 18 de Julho de 2018	21:45	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Rodriguinho 2 (1ºT)', ' Angel Romero 30 (2ºT)']	[]	0	Botafogo - RJ	296	Rodrigo Dalonso Ferreira	AB
130	13	2018	Quarta 18 de Julho de 2018	21:45	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Bressan 6 (2ºT)', ' Andre Felipe 13 (2ºT)']	[]	0	Atlético - MG	282	Flavio Rodrigues de Souza	AB
131	14	2018	Domingo 22 de Julho de 2018	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' De Arrascaeta 20 (2ºT)', ' Barcos 35 (2ºT)']	['Guilherme 39 (1ºT)']	1	Athletico Paranaense - PR	293	Jean Pierre Goncalves Lima	AB
132	14	2018	Domingo 22 de Julho de 2018	16:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Rodolfo 15 (1ºT)']	[]	0	America Fc - MG	327	Anderson Daronco	FIFA
133	14	2018	Domingo 22 de Julho de 2018	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Santos - SP	277	Wagner Reway	FIFA
134	14	2018	Domingo 22 de Julho de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	4	[' Ze Rafael 15 (1ºT)', ' Vinicius 26 (1ºT)', ' Tiago 20 (2ºT)', ' Gilberto 21 (2ºT)']	['Lucas 27 (2ºT)']	1	Vitória - BA	287	Wagner do Nascimento Magalhaes	FIFA
135	14	2018	Domingo 22 de Julho de 2018	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Andy 2 (1ºT)']	[]	0	Grêmio - RS	284	Igor Junio Benevenuto de Oliveira	AB
136	14	2018	Sábado 21 de Julho de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Matheus Savio 5 (1ºT)', ' Lucas Paquetá 7 (1ºT)']	[]	0	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
137	14	2018	Sábado 21 de Julho de 2018	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Anderson 11 (2ºT)', ' Reinaldo 25 (2ºT)', ' Reinaldo 33 (2ºT)']	['Jonathas 45+1 (2ºT)']	1	Corinthians - SP	264	Marcelo de Lima Henrique	MTR
138	14	2018	Domingo 22 de Julho de 2018	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Gabriel 19 (1ºT)']	['Pedro 17 (1ºT) ', 'Pedro 40 (2ºT)']	2	Fluminense - RJ	266	Braulio da Silva Machado	FIFA
139	14	2018	Domingo 22 de Julho de 2018	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Moises 2 (1ºT)', ' Bruno 30 (2ºT)', ' Bruno 45+4 (2ºT)']	['Luan 6 (2ºT) ', 'Chará 35 (2ºT)']	2	Atlético - MG	282	Pericles Bassols Pegado Cortez	MTR
140	14	2018	Segunda 23 de Julho de 2018	20:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Pottker 31 (2ºT)']	[]	0	Ceará - CE	354	Bruno Arleu de Araujo	AB
141	15	2018	Quarta 25 de Julho de 2018	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Leo Silva 38 (1ºT)', ' Elias 27 (2ºT)']	[]	0	Paraná - PR	289	Leandro Pedro Vuaden	MTR
142	15	2018	Quarta 29 de Agosto de 2018	19:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Raphael Veiga 19 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Rodrigo Dalonso Ferreira	AB
143	15	2018	Quinta 26 de Julho de 2018	20:00	Independência - Belo Horizonte - MG	327	America Fc - MG	2	[' Juninho 5 (1ºT)', ' Giovanni Palmieri 34 (1ºT)']	['JONATAN ALVEZ 43 (2ºT)']	1	Internacional - RS	285	Flavio Rodrigues de Souza	AB
144	15	2018	Quinta 26 de Julho de 2018	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Erick 15 (2ºT)']	[]	0	Sport - PE	292	Vinicius Gonçalves Dias Araujo	AB
145	15	2018	Quarta 25 de Julho de 2018	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Gilberto 43 (1ºT)']	[]	0	Palmeiras - SP	275	Rodrigo Dalonso Ferreira	AB
146	15	2018	Quinta 26 de Julho de 2018	19:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Marcinho 10 (2ºT)']	[]	0	Chapecoense - SC	315	Savio Pereira Sampaio	AB
147	15	2018	Quarta 29 de Agosto de 2018	19:30	Presidente Vargas - Fortaleza - CE	354	Ceará - CE	0	[]	['Lucas Fonseca 28 (1ºT) ', 'Gilberto 41 (2ºT)']	2	Bahia - BA	265	Dyorgines Jose Padovani de Andrade	AB
148	15	2018	Quarta 25 de Julho de 2018	21:45	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Gabriel Barbosa 33 (1ºT)']	['Bruno Henrique 2 (1ºT)']	1	Flamengo - RJ	262	Jailson Macedo Freitas	CBF
149	15	2018	Quarta 25 de Julho de 2018	21:45	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Angel Romero 16 (2ºT)', ' Angel Romero 34 (2ºT)']	[]	0	Cruzeiro - MG	283	Paulo Roberto Alves Junior	AB
150	15	2018	Quinta 26 de Julho de 2018	19:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Everton 45+2 (1ºT)', ' Everton 15 (2ºT)']	['Diego Souza 3 (1ºT)']	1	São Paulo - SP	276	Grazianni Maciel Rocha	AB
151	16	2018	Domingo 29 de Julho de 2018	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Diego Souza 26 (1ºT) ', 'Everton 31 (2ºT)']	2	São Paulo - SP	276	Wagner do Nascimento Magalhaes	FIFA
152	16	2018	Domingo 29 de Julho de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Marcelo Cirino 11 (1ºT)', ' Marcinho 21 (1ºT)', ' Wellington 45+1 (1ºT)', ' Pablo 24 (2ºT)']	[]	0	Vitória - BA	287	Anderson Daronco	FIFA
153	16	2018	Domingo 29 de Julho de 2018	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Elicarlos 17 (2ºT)']	['Pepe 2 (1ºT)']	1	Grêmio - RS	284	Rodrigo Carvalhaes de Miranda	AB
154	16	2018	Segunda 30 de Julho de 2018	20:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Gilberto 38 (2ºT)', ' Regis 45+3 (2ºT)']	['M. Galdezani 4 (1ºT) ', 'Ricardo Oliveira 45+1 (2ºT)']	2	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
155	16	2018	Domingo 29 de Julho de 2018	11:00	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	1	[' Yago 45+1 (1ºT)']	['Angel Romero 3 (2ºT) ', 'Angel Romero 12 (2ºT) ', 'Jadson 34 (2ºT) ', 'Angel Romero 45+2 (2ºT)']	4	Corinthians - SP	264	Dewson Fernando Freitas da Silva	FIFA
156	16	2018	Domingo 29 de Julho de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Rever 13 (1ºT)', ' Lucas Paquetá 2 (2ºT)', ' Everton Ribeiro 5 (2ºT)', ' Uribe 18 (2ºT)']	['Claudio Winck 43 (1ºT)']	1	Sport - PE	292	Marcelo Aparecido Ribeiro de Souza	AB
157	16	2018	Sábado 28 de Julho de 2018	16:00	Presidente Vargas - Fortaleza - CE	354	Ceará - CE	1	[' Leandro 41 (1ºT)']	[]	0	Fluminense - RJ	266	Leandro Bizzio Marinho	AB
158	16	2018	Domingo 29 de Julho de 2018	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Ruy 38 (1ºT)']	1	America Fc - MG	327	Rafael Traci	AB
159	16	2018	Domingo 29 de Julho de 2018	11:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Bruno 17 (1ºT)', ' Bruno 40 (1ºT)', ' Lucas Lima 33 (2ºT)']	[]	0	Paraná - PR	289	Wagner Reway	FIFA
160	16	2018	Domingo 29 de Julho de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Pottker 27 (1ºT)', ' Pottker 44 (1ºT)', ' Leandro Damiao 12 (2ºT)']	[]	0	Botafogo - RJ	296	Igor Junio Benevenuto de Oliveira	AB
161	17	2018	Segunda 06 de Agosto de 2018	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Edenilson 33 (2ºT)']	1	Internacional - RS	285	Jailson Macedo Freitas	CBF
162	17	2018	Domingo 05 de Agosto de 2018	16:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	['Juninho Quixadá 14 (1ºT)']	1	Ceará - CE	354	Grazianni Maciel Rocha	AB
163	17	2018	Domingo 05 de Agosto de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	[]	0	Palmeiras - SP	275	Andre Luiz de Freitas Castro	MTR
164	17	2018	Domingo 05 de Agosto de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Neilton 27 (2ºT)']	['Manoel 30 (2ºT)']	1	Cruzeiro - MG	283	Eduardo Tomaz de Aquino Valadao	AB
165	17	2018	Domingo 05 de Agosto de 2018	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Pedro 20 (1ºT)']	['Edigar Junio 36 (2ºT)']	1	Bahia - BA	265	Luiz Flavio de Oliveira	FIFA
166	17	2018	Sábado 04 de Agosto de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Santos - SP	277	Paulo Roberto Alves Junior	AB
167	17	2018	Domingo 05 de Agosto de 2018	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Joao Rojas 1 (1ºT)', ' Santiago 35 (2ºT)']	['Yago 9 (2ºT)']	1	Vasco da Gama - RJ	267	Braulio da Silva Machado	FIFA
168	17	2018	Domingo 05 de Agosto de 2018	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Carlos 45+2 (2ºT)']	['Wellington Paulista 12 (1ºT)']	1	Chapecoense - SC	315	Ricardo Marques Ribeiro	FIFA
169	17	2018	Sábado 04 de Agosto de 2018	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Athletico Paranaense - PR	293	Pericles Bassols Pegado Cortez	MTR
170	17	2018	Sábado 04 de Agosto de 2018	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Jael 45 (1ºT)', ' Marinho 2 (2ºT)']	[]	0	Flamengo - RJ	262	Rafael Traci	AB
171	18	2018	Domingo 12 de Agosto de 2018	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Elias 7 (1ºT)', ' Ricardo Oliveira 25 (2ºT)', ' Ricardo Oliveira 45+4 (2ºT)']	['Gabriel Barbosa 26 (1ºT)']	1	Santos - SP	277	Rodrigo Dalonso Ferreira	AB
172	18	2018	Domingo 12 de Agosto de 2018	11:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Alex 45+5 (2ºT)']	['Rodrigo 27 (2ºT)']	1	Botafogo - RJ	296	Raphael Claus	FIFA
173	18	2018	Domingo 12 de Agosto de 2018	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Diego Torres 25 (2ºT)', ' Agustin 45+4 (2ºT)']	['Marquinhos Gabriel 5 (1ºT)']	1	Corinthians - SP	264	Grazianni Maciel Rocha	AB
174	18	2018	Sábado 11 de Agosto de 2018	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Gilberto 9 (2ºT)']	[]	0	America Fc - MG	327	Pericles Bassols Pegado Cortez	MTR
175	18	2018	Segunda 13 de Agosto de 2018	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Nico Lopez 23 (1ºT) ', 'JONATAN ALVEZ 38 (1ºT) ', 'Nico Lopez 45 (1ºT)']	3	Internacional - RS	285	Savio Pereira Sampaio	AB
176	18	2018	Domingo 12 de Agosto de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Henrique Dourado 22 (1ºT)']	[]	0	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	FIFA
177	18	2018	Sábado 11 de Agosto de 2018	16:00	Presidente Vargas - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Athletico Paranaense - PR	293	Luiz Flavio de Oliveira	FIFA
178	18	2018	Domingo 12 de Agosto de 2018	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Marlone 41 (2ºT)']	['Diego Souza 30 (1ºT) ', 'Nenê 7 (2ºT) ', 'Santiago 44 (2ºT)']	3	São Paulo - SP	276	Anderson Daronco	FIFA
179	18	2018	Domingo 12 de Agosto de 2018	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Deyverson 15 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
180	18	2018	Domingo 12 de Agosto de 2018	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Douglas 12 (1ºT)', ' Jailson 21 (1ºT)', ' Pepe 12 (2ºT)', ' Everton 36 (2ºT)']	[]	0	Vitória - BA	287	Bruno Arleu de Araujo	AB
181	19	2018	Domingo 19 de Agosto de 2018	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 18 (2ºT)']	['Douglas Groli 14 (2ºT)']	1	Bahia - BA	265	Bruno Arleu de Araujo	AB
182	19	2018	Domingo 19 de Agosto de 2018	11:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	3	[' Pablo 9 (1ºT)', ' Raphael Veiga 16 (1ºT)', ' Ze Ivaldo 20 (1ºT)']	[]	0	Flamengo - RJ	262	Igor Junio Benevenuto de Oliveira	AB
183	19	2018	Domingo 19 de Agosto de 2018	19:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	[]	0	Fluminense - RJ	266	Caio Max Augusto Vieira	AB
184	19	2018	Domingo 19 de Agosto de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Deyverson 10 (1ºT) ', 'Deyverson 28 (1ºT) ', 'Dudu 13 (2ºT)']	3	Palmeiras - SP	275	Rodrigo Batista Raposo	AB
185	19	2018	Segunda 20 de Agosto de 2018	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Wagner 15 (2ºT)']	['Tiago 20 (2ºT)']	1	Ceará - CE	354	Vinicius Gonçalves Dias Araujo	AB
186	19	2018	Domingo 19 de Agosto de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Luan 17 (2ºT) ', 'Cazares 35 (2ºT) ', 'Tomas Andrade 45 (2ºT)']	3	Atlético - MG	282	Marcelo Aparecido Ribeiro de Souza	AB
187	19	2018	Domingo 19 de Agosto de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Shaylon 2 (1ºT)', ' Hudson 37 (2ºT)']	[]	0	Chapecoense - SC	315	Rafael Traci	AB
188	19	2018	Sábado 18 de Agosto de 2018	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Eduardo Sasha 1 (1ºT)', ' Rodrygo 37 (2ºT)', ' Victor Ferraz 39 (2ºT)']	[]	0	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
189	19	2018	Sábado 18 de Agosto de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Everton 9 (2ºT)']	1	Grêmio - RS	284	Wagner Reway	FIFA
190	19	2018	Domingo 19 de Agosto de 2018	11:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Camilo 45+6 (2ºT)']	[]	0	Paraná - PR	289	Leandro Bizzio Marinho	AB
191	20	2018	Quinta 23 de Agosto de 2018	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	MTR
192	20	2018	Quarta 22 de Agosto de 2018	19:30	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Junior 36 (1ºT)']	['Nenê 7 (1ºT)']	1	São Paulo - SP	276	Pericles Bassols Pegado Cortez	MTR
193	20	2018	Quinta 13 de Setembro de 2018	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Bruno Guimarães 32 (2ºT)', ' Leandro 43 (2ºT)']	['Pablo 15 (2ºT)']	1	Athletico Paranaense - PR	293	Flavio Rodrigues de Souza	AB
194	20	2018	Quarta 22 de Agosto de 2018	19:30	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Patrick 22 (1ºT)']	1	Internacional - RS	285	Rodrigo Dalonso Ferreira	AB
195	20	2018	Quarta 22 de Agosto de 2018	21:45	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Gum 17 (1ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
196	20	2018	Quinta 23 de Agosto de 2018	19:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Diego 40 (1ºT)']	[]	0	Vitória - BA	287	Wilton Pereira Sampaio	FIFA
197	20	2018	Quarta 08 de Agosto de 2018	19:30	Presidente Vargas - Fortaleza - CE	354	Ceará - CE	1	[' Arthur 33 (2ºT)']	['Sousa 41 (2ºT)']	1	Santos - SP	277	Marcelo de Lima Henrique	MTR
198	20	2018	Quarta 22 de Agosto de 2018	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Luan 2 (2ºT) ', 'Rafael Moura 22 (2ºT)']	2	America Fc - MG	327	Jailson Macedo Freitas	CBF
199	20	2018	Quarta 22 de Agosto de 2018	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Lucas Lima 32 (2ºT)', ' Lucas Lima 41 (2ºT)']	[]	0	Botafogo - RJ	296	Anderson Daronco	FIFA
200	20	2018	Quarta 22 de Agosto de 2018	21:45	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Everton 14 (2ºT)']	['Bruno Silva 44 (1ºT)']	1	Cruzeiro - MG	283	Marcelo de Lima Henrique	MTR
201	21	2018	Sábado 25 de Agosto de 2018	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Derlis Gonzalez 11 (2ºT)', ' Gabriel Barbosa 29 (2ºT)']	[]	0	Bahia - BA	265	Heber Roberto Lopes	MTR
202	21	2018	Sábado 25 de Agosto de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Henrique 35 (1ºT)']	[]	0	Paraná - PR	289	Andre Luiz de Freitas Castro	MTR
203	21	2018	Sábado 25 de Agosto de 2018	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Pablo 12 (1ºT)', ' Jonathan 24 (2ºT)']	['Cicero 8 (1ºT)']	1	Grêmio - RS	284	Marcelo Aparecido Ribeiro de Souza	AB
204	21	2018	Sábado 25 de Agosto de 2018	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Raniel 14 (1ºT)', ' Ayrton Lucas 27 (2ºT)']	['Henrique 26 (1ºT)']	1	Fluminense - RJ	266	Rafael Traci	AB
205	21	2018	Sábado 25 de Agosto de 2018	21:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Carli 16 (2ºT)', ' Aguirre 39 (2ºT)']	[]	0	Sport - PE	292	Savio Pereira Sampaio	AB
206	21	2018	Domingo 26 de Agosto de 2018	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Bruno 32 (2ºT)']	[]	0	Ceará - CE	354	Wagner Reway	FIFA
207	21	2018	Domingo 26 de Agosto de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	2	[' Rafael Moura 22 (1ºT)', ' Gerson 41 (2ºT)']	['Everton Ribeiro 15 (1ºT) ', 'Lucas Paquetá 16 (2ºT)']	2	Flamengo - RJ	262	Jean Pierre Goncalves Lima	AB
208	21	2018	Domingo 26 de Agosto de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Leonardo 24 (2ºT)']	[]	0	Atlético - MG	282	Leandro Bizzio Marinho	AB
209	21	2018	Domingo 26 de Agosto de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Palmeiras - SP	275	Bruno Arleu de Araujo	AB
210	21	2018	Domingo 26 de Agosto de 2018	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	3	[' Wagner 8 (2ºT)', ' Maxi Lopez 39 (2ºT)', ' Thiago Galhardo 44 (2ºT)']	['Leandro 33 (2ºT)']	1	Chapecoense - SC	315	Igor Junio Benevenuto de Oliveira	AB
211	22	2018	Sábado 01 de Setembro de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Leonardo 11 (2ºT)']	[]	0	America Fc - MG	327	Luiz Flavio de Oliveira	FIFA
212	22	2018	Sábado 01 de Setembro de 2018	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Jael 11 (1ºT)', ' Jael 45 (1ºT)', ' Alisson 15 (2ºT)', ' Andre Felipe 30 (2ºT)']	[]	0	Botafogo - RJ	296	Jailson Macedo Freitas	CBF
213	22	2018	Sábado 01 de Setembro de 2018	19:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Gabriel Barbosa 4 (1ºT) ', 'Gabriel Barbosa 22 (2ºT) ', 'Gabriel Barbosa 36 (2ºT)']	3	Santos - SP	277	Braulio da Silva Machado	FIFA
214	22	2018	Sábado 01 de Setembro de 2018	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Pedrinho 19 (1ºT)']	['Fabio Santos 35 (1ºT)']	1	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
215	22	2018	Domingo 02 de Setembro de 2018	11:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Leandro 45 (2ºT)']	1	Ceará - CE	354	Raphael Claus	FIFA
216	22	2018	Domingo 02 de Setembro de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Pablo 22 (2ºT)', ' Rony 32 (2ºT)']	[]	0	Bahia - BA	265	Leandro Pedro Vuaden	MTR
217	22	2018	Domingo 02 de Setembro de 2018	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Santiago 26 (2ºT)']	['Anderson 8 (2ºT)']	1	Fluminense - RJ	266	Dewson Fernando Freitas da Silva	FIFA
218	22	2018	Domingo 02 de Setembro de 2018	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Gabriel 14 (1ºT)']	[]	0	Paraná - PR	289	Emerson de Almeida Ferreira	AB
219	22	2018	Domingo 02 de Setembro de 2018	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' R. Thyere 15 (2ºT)']	['Hyoran 14 (1ºT) ', 'Borja 6 (2ºT)']	2	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
220	22	2018	Domingo 02 de Setembro de 2018	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
221	23	2018	Quarta 05 de Setembro de 2018	19:30	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Gilberto 7 (2ºT)', ' Tiago 39 (2ºT)']	[]	0	Sport - PE	292	Marcelo Aparecido Ribeiro de Souza	AB
222	23	2018	Quarta 05 de Setembro de 2018	19:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Luiz Fernando 10 (1ºT)']	['Edilson 37 (1ºT)']	1	Cruzeiro - MG	283	Raphael Claus	FIFA
223	23	2018	Quarta 05 de Setembro de 2018	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Everson 19 (1ºT)', ' Danilo 12 (2ºT)']	['Roger 26 (2ºT)']	1	Corinthians - SP	264	Rodolpho Toski Marques	FIFA
224	23	2018	Quarta 05 de Setembro de 2018	21:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Rafael Grampola 39 (1ºT)']	['Diego Torres 41 (2ºT)']	1	Chapecoense - SC	315	Bruno Arleu de Araujo	AB
225	23	2018	Quarta 05 de Setembro de 2018	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Willian 25 (2ºT)', ' Moises 45+4 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Marcelo de Lima Henrique	MTR
226	23	2018	Quarta 05 de Setembro de 2018	21:45	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Régis Souza 8 (1ºT)']	[]	0	São Paulo - SP	276	Anderson Daronco	FIFA
227	23	2018	Quarta 05 de Setembro de 2018	21:45	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Pottker 5 (1ºT)', ' Rodrigo Dourado 13 (2ºT)']	['Vitinho 11 (2ºT)']	1	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
228	23	2018	Quinta 06 de Setembro de 2018	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Vitória - BA	287	Jean Pierre Goncalves Lima	AB
229	23	2018	Quinta 06 de Setembro de 2018	20:00	Independência - Belo Horizonte - MG	327	America Fc - MG	2	[' Carlinho 30 (1ºT)', ' Gerson 34 (2ºT)']	['Maxi Lopez 32 (2ºT)']	1	Vasco da Gama - RJ	267	Heber Roberto Lopes	MTR
230	23	2018	Quinta 06 de Setembro de 2018	19:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	0	[]	[]	0	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
231	24	2018	Sábado 08 de Setembro de 2018	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Cruzeiro - MG	283	Vinicius Gonçalves Dias Araujo	AB
232	24	2018	Sábado 08 de Setembro de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Diego Souza 14 (2ºT)']	[]	0	Bahia - BA	265	Andre Luiz de Freitas Castro	MTR
233	24	2018	Sábado 08 de Setembro de 2018	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Rene 43 (1ºT)', ' Diego 11 (2ºT)']	[]	0	Chapecoense - SC	315	Leandro Bizzio Marinho	AB
234	24	2018	Domingo 09 de Setembro de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	[]	0	Ceará - CE	354	Daniel Nobre Bins	AB
235	24	2018	Domingo 09 de Setembro de 2018	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Digão 11 (1ºT)']	[]	0	Botafogo - RJ	296	Leandro Pedro Vuaden	MTR
236	24	2018	Domingo 09 de Setembro de 2018	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Deyverson 11 (2ºT)']	[]	0	Corinthians - SP	264	Jean Pierre Goncalves Lima	AB
237	24	2018	Domingo 09 de Setembro de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Edenilson 14 (2ºT)']	[]	0	Grêmio - RS	284	Pericles Bassols Pegado Cortez	MTR
238	24	2018	Domingo 09 de Setembro de 2018	19:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Erick 27 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Paulo Roberto Alves Junior	AB
239	24	2018	Domingo 09 de Setembro de 2018	19:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	['Gabriel Barbosa 7 (2ºT) ', 'Gabriel Barbosa 33 (2ºT)']	2	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
240	24	2018	Segunda 10 de Setembro de 2018	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	3	[' Leo Silva 26 (1ºT)', ' Elias 22 (2ºT)', ' Ricardo Oliveira 37 (2ºT)']	['Iago 9 (1ºT)']	1	Athletico Paranaense - PR	293	Luiz Flavio de Oliveira	FIFA
241	25	2018	Sábado 15 de Setembro de 2018	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Calyson 27 (1ºT)', ' Samuel 4 (2ºT)']	[]	0	Vitória - BA	287	Marcelo Aparecido Ribeiro de Souza	AB
242	25	2018	Sábado 15 de Setembro de 2018	19:00	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	1	[' Andy 27 (1ºT)']	['Luiz Gustavo 16 (2ºT)']	1	Flamengo - RJ	262	Luiz Flavio de Oliveira	FIFA
243	25	2018	Domingo 16 de Setembro de 2018	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Rodrigo 24 (1ºT)']	[]	0	America Fc - MG	327	Rodrigo Batista Raposo	AB
244	25	2018	Domingo 16 de Setembro de 2018	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Atlético - MG	282	Rafael Traci	AB
245	25	2018	Domingo 16 de Setembro de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	3	[' Raphael Veiga 18 (1ºT)', ' Pablo 45+1 (1ºT)', ' Leo Pereira 25 (2ºT)']	['Luciano 14 (2ºT)']	1	Fluminense - RJ	266	Andre Luiz de Freitas Castro	MTR
246	25	2018	Domingo 16 de Setembro de 2018	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Gilberto 18 (1ºT)']	['Felipe Melo 33 (2ºT)']	1	Palmeiras - SP	275	Heber Roberto Lopes	MTR
247	25	2018	Domingo 16 de Setembro de 2018	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	São Paulo - SP	276	Ricardo Marques Ribeiro	FIFA
248	25	2018	Domingo 16 de Setembro de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Jadson 13 (2ºT)', ' Danilo 43 (2ºT)']	['Hernane 21 (1ºT)']	1	Sport - PE	292	Rodrigo Dalonso Ferreira	AB
249	25	2018	Sábado 15 de Setembro de 2018	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Douglas 8 (2ºT)', ' J. Capixaba 18 (2ºT)']	[]	0	Paraná - PR	289	Igor Junio Benevenuto de Oliveira	AB
250	25	2018	Segunda 17 de Setembro de 2018	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Leandro 37 (1ºT)', ' Leandro 36 (2ºT)']	['Nico Lopez 26 (1ºT)']	1	Internacional - RS	285	Wagner do Nascimento Magalhaes	FIFA
251	26	2018	Sábado 22 de Setembro de 2018	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Diego Souza 45 (1ºT)']	['Matheusinho 35 (2ºT)']	1	America Fc - MG	327	Wilton Pereira Sampaio	FIFA
279	28	2018	Terça 09 de Outubro de 2018	21:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Luiz Fernando 17 (1ºT)']	['Maxi Lopez 35 (2ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
252	26	2018	Domingo 23 de Setembro de 2018	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Willian Arão 1 (1ºT)', ' Lucas Paquetá 8 (2ºT)']	['Leo Silva 22 (1ºT)']	1	Atlético - MG	282	Rodolpho Toski Marques	FIFA
253	26	2018	Domingo 23 de Setembro de 2018	18:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	3	[' Lucas Fernandes 1 (1ºT)', ' Fabiano 6 (2ºT)', ' Mauricio 42 (2ºT)']	['Kieza 24 (1ºT) ', 'Rodrigo 42 (1ºT) ', 'Leo Gomes 9 (2ºT) ', 'Erik 19 (2ºT)']	4	Botafogo - RJ	296	Vinicius Gonçalves Dias Araujo	AB
254	26	2018	Domingo 23 de Setembro de 2018	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Geromel 21 (1ºT)', ' Thonny Anderson 44 (1ºT)', ' Luan 23 (2ºT)']	['Luiz 12 (1ºT) ', 'Arthur 26 (1ºT)']	2	Ceará - CE	354	Dewson Fernando Freitas da Silva	FIFA
255	26	2018	Domingo 23 de Setembro de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	3	[' Raphael Veiga 7 (1ºT)', ' Pablo 33 (1ºT)', ' Marcelo Cirino 43 (2ºT)']	[]	0	Paraná - PR	289	Raphael Claus	FIFA
256	26	2018	Segunda 24 de Setembro de 2018	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Yago 31 (1ºT)', ' Marrony 32 (2ºT)']	['Gilberto 45+3 (1ºT)']	1	Bahia - BA	265	Leandro Pedro Vuaden	MTR
257	26	2018	Domingo 23 de Setembro de 2018	18:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Willian 36 (2ºT)']	1	Palmeiras - SP	275	Paulo Roberto Alves Junior	AB
258	26	2018	Domingo 23 de Setembro de 2018	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Douglas Augusto 4 (2ºT)']	['Leandro Damiao 44 (1ºT)']	1	Internacional - RS	285	Eduardo Tomaz de Aquino Valadao	AB
259	26	2018	Domingo 23 de Setembro de 2018	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Sassa 1 (2ºT)', ' Raniel 38 (2ºT)']	['Gabriel Barbosa 15 (1ºT)']	1	Santos - SP	277	Braulio da Silva Machado	FIFA
260	26	2018	Segunda 24 de Setembro de 2018	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Leandro 33 (2ºT)']	['Everaldo 10 (1ºT) ', 'Sornoza 35 (1ºT)']	2	Fluminense - RJ	266	Anderson Daronco	FIFA
261	27	2018	Sábado 29 de Setembro de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Everton 45+2 (2ºT)']	1	Grêmio - RS	284	Raphael Claus	FIFA
262	27	2018	Sábado 29 de Setembro de 2018	19:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	[]	0	Corinthians - SP	264	Marcelo de Lima Henrique	MTR
263	27	2018	Sábado 29 de Setembro de 2018	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Flamengo - RJ	262	Igor Junio Benevenuto de Oliveira	AB
264	27	2018	Domingo 30 de Setembro de 2018	11:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	3	[' Lucas Lima 22 (1ºT)', ' Hyoran 42 (1ºT)', ' GUSTAVO GOMEZ 20 (2ºT)']	['Mancuello 30 (1ºT)']	1	Cruzeiro - MG	283	Dewson Fernando Freitas da Silva	FIFA
265	27	2018	Domingo 30 de Setembro de 2018	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	5	[' Elias 8 (1ºT)', ' Fabio Santos 26 (1ºT)', ' Emerson 28 (1ºT)', ' Cazares 29 (1ºT)', ' Ricardo Oliveira 24 (2ºT)']	['Leo Silva 6 (1ºT) ', 'Michel Bastos 11 (2ºT)']	2	Sport - PE	292	Leandro Bizzio Marinho	AB
266	27	2018	Domingo 30 de Setembro de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Jean 5 (1ºT)', ' Kieza 24 (1ºT)']	['Diego Souza 7 (1ºT) ', 'Gonzalo Carneiro 17 (2ºT)']	2	São Paulo - SP	276	Rafael Traci	AB
267	27	2018	Domingo 30 de Setembro de 2018	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Carlos Sanchez 45+6 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Caio Max Augusto Vieira	AB
268	27	2018	Domingo 30 de Setembro de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Leandro Damiao 18 (2ºT)', ' Dalessandro 40 (2ºT)']	['Emerson 2 (1ºT)']	1	Vitória - BA	287	Savio Pereira Sampaio	AB
269	27	2018	Domingo 30 de Setembro de 2018	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	3	[' Valdo 11 (2ºT)', ' Arthur 13 (2ºT)', ' Leandro 32 (2ºT)']	['Agustin 34 (1ºT)']	1	Chapecoense - SC	315	Wilton Pereira Sampaio	FIFA
270	27	2018	Segunda 01 de Outubro de 2018	20:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Alex 9 (1ºT)']	['Maxi Lopez 45+3 (1ºT)']	1	Vasco da Gama - RJ	267	Flavio Rodrigues de Souza	AB
271	28	2018	Sexta 05 de Outubro de 2018	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Adryelson 33 (2ºT)', ' Mateus Gonçalves 42 (2ºT)']	['Nico Lopez 21 (2ºT)']	1	Internacional - RS	285	Andre Luiz de Freitas Castro	MTR
272	28	2018	Sexta 05 de Outubro de 2018	21:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Lucas Paquetá 15 (2ºT) ', 'Lucas Paquetá 20 (2ºT) ', 'Rene 45+2 (2ºT)']	3	Flamengo - RJ	262	Paulo Roberto Alves Junior	AB
273	28	2018	Sexta 05 de Outubro de 2018	21:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Carlos Sanchez 8 (1ºT)']	1	Santos - SP	277	Daniel Nobre Bins	AB
274	28	2018	Sábado 06 de Outubro de 2018	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Marcelo Cirino 1 (1ºT)', ' Raphael Veiga 40 (1ºT)', ' Nikao 10 (2ºT)', ' Pablo 29 (2ºT)']	[]	0	America Fc - MG	327	Raphael Claus	FIFA
275	28	2018	Sábado 06 de Outubro de 2018	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Agustin 45+3 (2ºT)']	[]	0	Atlético - MG	282	Luiz Flavio de Oliveira	FIFA
276	28	2018	Sábado 06 de Outubro de 2018	18:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['GUSTAVO GOMEZ 33 (1ºT) ', 'Deyverson 37 (1ºT)']	2	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
277	28	2018	Sábado 06 de Outubro de 2018	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' J. Capixaba 39 (2ºT)', ' Jael 42 (2ºT)']	['Elber 2 (1ºT) ', 'Elber 21 (2ºT)']	2	Bahia - BA	265	Rodolpho Toski Marques	FIFA
278	28	2018	Segunda 08 de Outubro de 2018	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[' Jadson 34 (1ºT)', ' Richard 40 (1ºT)', ' Jadson 2 (2ºT)', ' Luciano 40 (2ºT)']	[]	0	Paraná - PR	289	Marcelo Aparecido Ribeiro de Souza	AB
280	28	2018	Quarta 24 de Outubro de 2018	19:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Arthur 17 (1ºT) ', 'Arthur 35 (2ºT)']	2	Ceará - CE	354	Flavio Rodrigues de Souza	AB
281	29	2018	Domingo 14 de Outubro de 2018	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	America Fc - MG	327	Flavio Rodrigues de Souza	AB
282	29	2018	Sábado 13 de Outubro de 2018	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Uribe 10 (1ºT)', ' Leonardo 45+1 (1ºT)', ' Uribe 4 (2ºT)']	[]	0	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
283	29	2018	Sábado 13 de Outubro de 2018	19:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	1	[' Gabriel Barbosa 20 (1ºT)']	[]	0	Corinthians - SP	264	Pericles Bassols Pegado Cortez	MTR
284	29	2018	Sábado 13 de Outubro de 2018	21:00	Pituaçu - Salvador - BA	265	Bahia - BA	2	[' Vinicius 39 (2ºT)', ' Vinicius 44 (2ºT)']	[]	0	Paraná - PR	289	Jean Pierre Goncalves Lima	AB
285	29	2018	Domingo 14 de Outubro de 2018	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Lucas Fernandes 37 (1ºT)']	1	Vitória - BA	287	Leandro Pedro Vuaden	MTR
286	29	2018	Domingo 14 de Outubro de 2018	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Yago 3 (2ºT)', ' Maxi Lopez 25 (2ºT)']	[]	0	Cruzeiro - MG	283	Marcelo Aparecido Ribeiro de Souza	AB
287	29	2018	Domingo 14 de Outubro de 2018	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Deyverson 8 (1ºT)', ' Deyverson 33 (2ºT)']	[]	0	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
288	29	2018	Domingo 14 de Outubro de 2018	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Leandro Damiao 45 (1ºT)', ' Leandro Damiao 7 (2ºT)', ' Nico Lopez 45+4 (2ºT)']	['Liziero 2 (1ºT)']	1	São Paulo - SP	276	Braulio da Silva Machado	FIFA
289	29	2018	Domingo 14 de Outubro de 2018	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Thiago Heleno 2 (2ºT)', ' Bergson 10 (2ºT)', ' Bergson 38 (2ºT)', ' Rony 40 (2ºT)']	[]	0	Sport - PE	292	Wagner Reway	FIFA
290	29	2018	Segunda 15 de Outubro de 2018	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Botafogo - RJ	296	Raphael Claus	FIFA
291	30	2018	Sábado 20 de Outubro de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Edigar Junio 2 (2ºT)']	1	Bahia - BA	265	Anderson Daronco	FIFA
292	30	2018	Sábado 20 de Outubro de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Athletico Paranaense - PR	293	Pericles Bassols Pegado Cortez	MTR
293	30	2018	Sábado 20 de Outubro de 2018	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Mateus Gonçalves 25 (1ºT)', ' Claudio Winck 22 (2ºT)']	['Fabricio 39 (1ºT)']	1	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
294	30	2018	Sábado 20 de Outubro de 2018	16:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Juninho 36 (1ºT)']	['Jean Pyerre 20 (2ºT)']	1	Grêmio - RS	284	Luiz Flavio de Oliveira	FIFA
295	30	2018	Domingo 21 de Outubro de 2018	16:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Rhayner 8 (1ºT)', ' Neilton 45+2 (2ºT)']	['Jadson 30 (1ºT) ', 'Roger 45 (2ºT)']	2	Corinthians - SP	264	Rafael Traci	AB
296	30	2018	Domingo 21 de Outubro de 2018	16:00	Nilton Santos - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Luciano 17 (2ºT)']	[]	0	Atlético - MG	282	Jean Pierre Goncalves Lima	AB
297	30	2018	Domingo 21 de Outubro de 2018	16:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	2	[' Bruno 17 (1ºT)', ' Bruno 34 (1ºT)']	['Arthur 10 (2ºT)']	1	Ceará - CE	354	Andre Luiz de Freitas Castro	MTR
298	30	2018	Domingo 21 de Outubro de 2018	19:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Thiago Neves 21 (1ºT)', ' De Arrascaeta 29 (1ºT)', ' Dedé 43 (1ºT)']	[]	0	Chapecoense - SC	315	Raphael Claus	FIFA
299	30	2018	Domingo 21 de Outubro de 2018	19:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	['Lucas Paquetá 18 (1ºT) ', 'Vitinho 6 (2ºT) ', 'Uribe 12 (2ºT) ', 'Henrique Dourado 45 (2ºT)']	4	Flamengo - RJ	262	Braulio da Silva Machado	FIFA
300	30	2018	Segunda 22 de Outubro de 2018	20:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Leandro Damiao 43 (1ºT)', ' Patrick 31 (2ºT)']	['Gabriel Barbosa 5 (2ºT) ', 'Fabiano 39 (2ºT)']	2	Santos - SP	277	Ricardo Marques Ribeiro	FIFA
301	31	2018	Sexta 26 de Outubro de 2018	19:30	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	['Bruno Alves 36 (1ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	MTR
302	31	2018	Sexta 26 de Outubro de 2018	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Maxi Lopez 45+1 (2ºT)']	['JONATAN ALVEZ 39 (2ºT)']	1	Internacional - RS	285	Igor Junio Benevenuto de Oliveira	AB
303	31	2018	Segunda 29 de Outubro de 2018	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Juninho Quixadá 9 (1ºT)', ' Leandro 17 (2ºT)']	['Cazares 25 (1ºT)']	1	Atlético - MG	282	Wagner Reway	FIFA
304	31	2018	Sábado 27 de Outubro de 2018	16:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Gabriel Barbosa 38 (2ºT)', ' Victor Ferraz 42 (2ºT)', ' Carlos Sanchez 43 (2ºT)']	[]	0	Fluminense - RJ	266	Heber Roberto Lopes	MTR
305	31	2018	Sábado 27 de Outubro de 2018	16:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Matheus Henrique 38 (1ºT)', ' J. Capixaba 6 (2ºT)', ' Thonny Anderson 14 (2ºT)']	['Jair 7 (1ºT) ', 'Mateus Gonçalves 29 (1ºT) ', 'Gabriel 7 (2ºT) ', 'Jair 19 (2ºT)']	4	Sport - PE	292	Dewson Fernando Freitas da Silva	FIFA
306	31	2018	Sábado 27 de Outubro de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Danilo 1 (2ºT)', ' Danilo 43 (2ºT)']	['Clayton 39 (2ºT)']	1	Bahia - BA	265	Pericles Bassols Pegado Cortez	MTR
307	31	2018	Sábado 27 de Outubro de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Marlos Moreno 35 (2ºT)']	['Dudu 5 (2ºT)']	1	Palmeiras - SP	275	Rafael Traci	AB
308	31	2018	Sábado 27 de Outubro de 2018	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' De Arrascaeta 9 (1ºT)', ' Fred 15 (1ºT)', ' Rafael Sobis 2 (2ºT)']	['Egidio 20 (1ºT)']	1	Paraná - PR	289	Marcelo de Lima Henrique	MTR
309	31	2018	Sábado 27 de Outubro de 2018	21:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Bergson 9 (2ºT)', ' Pablo 38 (2ºT)']	['Brenner 30 (1ºT)']	1	Botafogo - RJ	296	Marcelo Aparecido Ribeiro de Souza	AB
310	31	2018	Sábado 27 de Outubro de 2018	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Wellington Paulista 15 (2ºT)']	[]	0	America Fc - MG	327	Wilton Pereira Sampaio	FIFA
311	32	2018	Domingo 04 de Novembro de 2018	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Diego Souza 8 (1ºT)', ' Hélio Junio 5 (2ºT)']	['Uribe 9 (1ºT) ', 'Rodinei 36 (2ºT)']	2	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
312	32	2018	Sábado 03 de Novembro de 2018	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Maxi Lopez 13 (2ºT)']	1	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
313	32	2018	Sábado 03 de Novembro de 2018	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Geromel 2 (1ºT)']	1	Grêmio - RS	284	Wagner do Nascimento Magalhaes	FIFA
314	32	2018	Domingo 04 de Novembro de 2018	17:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Alex 14 (2ºT)']	['Leonardo 39 (2ºT)']	1	Vitória - BA	287	Raphael Claus	FIFA
315	32	2018	Domingo 04 de Novembro de 2018	17:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Rafael Moura 25 (2ºT)']	['De Arrascaeta 17 (1ºT) ', 'Thiago Neves 4 (2ºT)']	2	Cruzeiro - MG	283	Heber Roberto Lopes	MTR
316	32	2018	Domingo 04 de Novembro de 2018	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Rodrigo 27 (1ºT)']	[]	0	Corinthians - SP	264	Leandro Pedro Vuaden	MTR
317	32	2018	Domingo 04 de Novembro de 2018	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Elber 21 (2ºT)']	[]	0	Chapecoense - SC	315	Flavio Rodrigues de Souza	AB
318	32	2018	Sábado 03 de Novembro de 2018	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Dudu 13 (1ºT)', ' Edu Dracena 39 (1ºT)', ' Victor 26 (2ºT)']	['Copete 9 (2ºT) ', 'Dodo 19 (2ºT)']	2	Santos - SP	277	Braulio da Silva Machado	FIFA
319	32	2018	Domingo 04 de Novembro de 2018	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Moledo 36 (2ºT)', ' Dalessandro 45+4 (2ºT)']	['Camacho 19 (2ºT)']	1	Athletico Paranaense - PR	293	Rodrigo Dalonso Ferreira	AB
320	32	2018	Segunda 05 de Novembro de 2018	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Gabriel 7 (2ºT)']	[]	0	Ceará - CE	354	Anderson Daronco	FIFA
321	33	2018	Sábado 10 de Novembro de 2018	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Ralf 26 (2ºT)']	['Brenner 35 (2ºT)']	1	São Paulo - SP	276	Rodolpho Toski Marques	FIFA
322	33	2018	Sábado 10 de Novembro de 2018	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Erik 18 (1ºT)', ' Leo Valencia 28 (1ºT)']	['Vitinho 3 (2ºT)']	1	Flamengo - RJ	262	Braulio da Silva Machado	FIFA
323	33	2018	Sábado 10 de Novembro de 2018	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Marcelo Cirino 9 (1ºT)', ' Raphael Veiga 21 (1ºT)']	[]	0	Cruzeiro - MG	283	Anderson Daronco	FIFA
324	33	2018	Sábado 10 de Novembro de 2018	17:00	Independência - Belo Horizonte - MG	327	America Fc - MG	0	[]	['Andrey 44 (2ºT)']	1	Paraná - PR	289	Wagner Reway	FIFA
325	33	2018	Domingo 11 de Novembro de 2018	17:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Elias 18 (2ºT)']	['Bruno 31 (2ºT)']	1	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
326	33	2018	Domingo 11 de Novembro de 2018	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	2	[' Leonardo 7 (1ºT)', ' Leonardo 22 (2ºT)']	['Nilton 38 (1ºT) ', 'Eric Ramires 27 (2ºT)']	2	Bahia - BA	265	Luiz Flavio de Oliveira	FIFA
327	33	2018	Segunda 12 de Novembro de 2018	20:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	0	[]	['Leandro 28 (1ºT)']	1	Chapecoense - SC	315	Rafael Traci	AB
328	33	2018	Domingo 11 de Novembro de 2018	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Jael 19 (1ºT)', ' Matheus Henrique 45+4 (2ºT)']	['Thiago Galhardo 12 (1ºT)']	1	Vasco da Gama - RJ	267	Raphael Claus	FIFA
329	33	2018	Domingo 11 de Novembro de 2018	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Sport - PE	292	Flavio Rodrigues de Souza	AB
330	33	2018	Domingo 11 de Novembro de 2018	17:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Ricardinho 42 (1ºT)']	['Leandro Damiao 16 (1ºT)']	1	Internacional - RS	285	Dewson Fernando Freitas da Silva	FIFA
331	34	2018	Quarta 14 de Novembro de 2018	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Thiago Galhardo 21 (2ºT)']	['Leo Pereira 45+4 (2ºT)']	1	Athletico Paranaense - PR	293	Leandro Pedro Vuaden	MTR
332	34	2018	Quarta 14 de Novembro de 2018	21:00	Durival Britto - Curitiba - PR	289	Paraná - PR	0	[]	['Fabio Santos 13 (1ºT)']	1	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
333	34	2018	Quarta 14 de Novembro de 2018	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Ze Rafael 43 (1ºT)', ' Edigar Junio 45+3 (2ºT)']	['Calyson 7 (1ºT)']	1	Ceará - CE	354	Raphael Claus	FIFA
334	34	2018	Quarta 14 de Novembro de 2018	21:45	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' David 13 (1ºT)']	[]	0	Corinthians - SP	264	Jean Pierre Goncalves Lima	AB
335	34	2018	Quarta 14 de Novembro de 2018	21:45	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	[]	0	Vitória - BA	287	Anderson Daronco	FIFA
336	34	2018	Quarta 14 de Novembro de 2018	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Borja 41 (1ºT)', ' Felipe Melo 37 (2ºT)', ' Luan Garcia 44 (2ºT)']	[]	0	Fluminense - RJ	266	Braulio da Silva Machado	FIFA
337	34	2018	Quinta 15 de Novembro de 2018	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Luiz Fernando 27 (2ºT)']	1	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
338	34	2018	Quinta 15 de Novembro de 2018	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Henrique Dourado 27 (2ºT)']	[]	0	Santos - SP	277	Paulo Roberto Alves Junior	AB
339	34	2018	Quinta 15 de Novembro de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Michel 28 (2ºT)']	['Everton 11 (2ºT)']	1	Grêmio - RS	284	Pericles Bassols Pegado Cortez	MTR
340	34	2018	Quinta 15 de Novembro de 2018	21:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Leandro Damiao 23 (1ºT)', ' Edenilson 45+1 (1ºT)']	[]	0	America Fc - MG	327	Wilton Pereira Sampaio	FIFA
341	35	2018	Sábado 17 de Novembro de 2018	19:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	1	[' Neilton 45+2 (2ºT)']	['Ramon 26 (1ºT) ', 'Bruno Guimarães 40 (2ºT)']	2	Athletico Paranaense - PR	293	Flavio Rodrigues de Souza	AB
342	35	2018	Sábado 17 de Novembro de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Mateus 5 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
343	35	2018	Segunda 19 de Novembro de 2018	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Ceará - CE	354	Anderson Daronco	FIFA
344	35	2018	Domingo 18 de Novembro de 2018	17:00	Do Café - Londrina - PR	289	Paraná - PR	1	[' Keslley 35 (1ºT)']	['Gustavo Scarpa 8 (2ºT)']	1	Palmeiras - SP	275	Bruno Arleu de Araujo	AB
345	35	2018	Domingo 18 de Novembro de 2018	17:00	Independência - Belo Horizonte - MG	327	America Fc - MG	2	[' Rafael Moura 30 (1ºT)', ' Matheusinho 19 (2ºT)']	['Gabriel Barbosa 45 (1ºT)']	1	Santos - SP	277	Dewson Fernando Freitas da Silva	FIFA
346	35	2018	Domingo 18 de Novembro de 2018	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Erik 42 (1ºT)']	[]	0	Internacional - RS	285	Rafael Traci	AB
347	35	2018	Domingo 18 de Novembro de 2018	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Willian Arão 37 (2ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
348	35	2018	Domingo 18 de Novembro de 2018	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Diego Souza 30 (1ºT)']	[]	0	Cruzeiro - MG	283	Heber Roberto Lopes	MTR
349	35	2018	Domingo 18 de Novembro de 2018	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Cicero 24 (1ºT)', ' Everton 29 (2ºT)']	[]	0	Chapecoense - SC	315	Leandro Bizzio Marinho	AB
350	35	2018	Sábado 17 de Novembro de 2018	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Cazares 6 (2ºT)']	[]	0	Bahia - BA	265	Marcelo Aparecido Ribeiro de Souza	AB
351	36	2018	Quarta 21 de Novembro de 2018	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Dalessandro 37 (2ºT)']	['Cazares 42 (1ºT) ', 'David Terans 45+3 (2ºT)']	2	Atlético - MG	282	Raphael Claus	FIFA
352	36	2018	Quarta 21 de Novembro de 2018	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Rodrygo 35 (1ºT)']	['Brenner 15 (2ºT)']	1	Botafogo - RJ	296	Heber Roberto Lopes	MTR
353	36	2018	Quarta 21 de Novembro de 2018	21:45	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	3	[' Aderllan 43 (1ºT)', ' Fred 9 (2ºT)', ' Fred 26 (2ºT)']	[]	0	Vitória - BA	287	Leandro Bizzio Marinho	AB
354	36	2018	Quarta 21 de Novembro de 2018	21:45	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Leo Pereira 7 (2ºT)']	[]	0	Corinthians - SP	264	Marcelo de Lima Henrique	MTR
355	36	2018	Quarta 21 de Novembro de 2018	21:45	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Uribe 1 (2ºT)', ' Diego 44 (2ºT)']	[]	0	Grêmio - RS	284	Braulio da Silva Machado	FIFA
356	36	2018	Quarta 21 de Novembro de 2018	21:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Luan Garcia 14 (2ºT)', ' Willian 30 (2ºT)', ' Dudu 32 (2ºT)', ' Deyverson 36 (2ºT)']	[]	0	America Fc - MG	327	Paulo Roberto Alves Junior	AB
357	36	2018	Quinta 22 de Novembro de 2018	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Andrey 17 (1ºT)', ' Yago 45+4 (2ºT)']	[]	0	São Paulo - SP	276	Anderson Daronco	FIFA
358	36	2018	Quinta 22 de Novembro de 2018	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Leandro 4 (1ºT)', ' Leandro 7 (1ºT)']	['Michel Bastos 22 (2ºT)']	1	Sport - PE	292	Leandro Pedro Vuaden	MTR
359	36	2018	Quinta 22 de Novembro de 2018	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Ze Rafael 7 (2ºT)', ' Edigar Junio 10 (2ºT)']	[]	0	Fluminense - RJ	266	Flavio Rodrigues de Souza	AB
360	36	2018	Quinta 22 de Novembro de 2018	21:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Juninho 32 (1ºT)']	[]	0	Paraná - PR	289	Luiz Flavio de Oliveira	FIFA
361	37	2018	Sábado 24 de Novembro de 2018	20:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Carlos Sanchez 2 (1ºT)', ' Felippe Cardoso 33 (1ºT)', ' Gabriel Barbosa 36 (2ºT)']	['Ricardo Oliveira 16 (1ºT) ', 'Ricardo Oliveira 7 (2ºT)']	2	Atlético - MG	282	Leandro Pedro Vuaden	MTR
362	37	2018	Domingo 25 de Novembro de 2018	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Everton Ribeiro 8 (1ºT) ', 'Everton Ribeiro 8 (2ºT)']	2	Flamengo - RJ	262	Jean Pierre Goncalves Lima	AB
363	37	2018	Domingo 25 de Novembro de 2018	17:00	Manoel Barradas - Salvador - BA	287	Vitória - BA	0	[]	[]	0	Grêmio - RS	284	Raphael Claus	FIFA
364	37	2018	Domingo 25 de Novembro de 2018	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Deyverson 27 (2ºT)']	1	Palmeiras - SP	275	Rafael Traci	AB
365	37	2018	Domingo 25 de Novembro de 2018	17:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Marcinho 8 (2ºT)', ' Lucho Gonzalez 12 (2ºT)']	['Leandro 26 (1ºT) ', 'Wescley 37 (2ºT)']	2	Ceará - CE	354	Leandro Bizzio Marinho	AB
366	37	2018	Domingo 25 de Novembro de 2018	19:00	Independência - Belo Horizonte - MG	327	America Fc - MG	1	[' Juninho 2 (2ºT)']	[]	0	Bahia - BA	265	Marcelo Aparecido Ribeiro de Souza	AB
367	37	2018	Domingo 25 de Novembro de 2018	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Chapecoense - SC	315	Paulo Roberto Alves Junior	AB
368	37	2018	Domingo 25 de Novembro de 2018	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Nico Lopez 30 (2ºT)', ' Nico Lopez 44 (2ºT)']	[]	0	Fluminense - RJ	266	Heber Roberto Lopes	MTR
369	37	2018	Segunda 26 de Novembro de 2018	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Erik 6 (1ºT)', ' Erik 29 (2ºT)']	['Alex 18 (2ºT)']	1	Paraná - PR	289	Igor Junio Benevenuto de Oliveira	AB
370	37	2018	Segunda 26 de Novembro de 2018	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Sport - PE	292	Andre Luiz de Freitas Castro	MTR
371	38	2018	Sábado 01 de Dezembro de 2018	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Cazares 17 (1ºT)']	[]	0	Botafogo - RJ	296	Braulio da Silva Machado	FIFA
372	38	2018	Domingo 02 de Dezembro de 2018	17:00	Durival Britto - Curitiba - PR	289	Paraná - PR	1	[' Jhonny 45+2 (2ºT)']	['JONATAN ALVEZ 20 (2ºT)']	1	Internacional - RS	285	Rodrigo Carvalhaes de Miranda	AB
373	38	2018	Domingo 02 de Dezembro de 2018	17:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Leandro 22 (2ºT)']	[]	0	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
374	38	2018	Domingo 02 de Dezembro de 2018	17:00	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Cruzeiro - MG	283	Bruno Arleu de Araujo	AB
375	38	2018	Domingo 02 de Dezembro de 2018	17:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Richard 41 (1ºT)']	[]	0	America Fc - MG	327	Rafael Traci	AB
376	38	2018	Sábado 01 de Dezembro de 2018	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Rhodolfo 22 (1ºT)']	['Rossetto 19 (2ºT) ', 'Rony 25 (2ºT)']	2	Athletico Paranaense - PR	293	Flavio Rodrigues de Souza	AB
377	38	2018	Domingo 02 de Dezembro de 2018	17:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Vasco da Gama - RJ	267	Raphael Claus	FIFA
378	38	2018	Domingo 02 de Dezembro de 2018	17:00	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Rogerio 39 (2ºT)', ' Hernane 45+1 (2ºT)']	['Rodrygo 45+2 (2ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
379	38	2018	Domingo 02 de Dezembro de 2018	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Edu Dracena 42 (1ºT)', ' Gustavo Scarpa 11 (2ºT)', ' Bruno 44 (2ºT)']	['Yago Felipe 25 (2ºT) ', 'Luan Santos 27 (2ºT)']	2	Vitória - BA	287	Heber Roberto Lopes	MTR
380	38	2018	Domingo 02 de Dezembro de 2018	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Jael 11 (1ºT)']	[]	0	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
1	1	2019	Domingo 28 de Abril de 2019	11:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Everton 45+3 (2ºT)']	['Eduardo Sasha 5 (1ºT) ', 'Felipe 35 (1ºT)']	2	Santos - SP	277	Bruno Arleu de Araujo	AB
2	1	2019	Sábado 27 de Abril de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Fabio Santos 45+1 (1ºT)', ' Ricardo Oliveira 7 (2ºT)']	['Brizuela 2 (2ºT)']	1	Avaí - SC	314	Rodolpho Toski Marques	FIFA
3	1	2019	Domingo 28 de Abril de 2019	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	4	[' Ricardo Bueno 20 (1ºT)', ' Leandro 33 (1ºT)', ' Joao Lucas 36 (2ºT)', ' Ricardo Bueno 43 (2ºT)']	[]	0	Csa - AL	341	Adriano Milczvski	AB
4	1	2019	Domingo 28 de Abril de 2019	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	4	[' Ze Rafael 16 (1ºT)', ' Marcos Rocha 13 (2ºT)', ' Ze Rafael 25 (2ºT)', ' Bruno 45 (2ºT)']	[]	0	Fortaleza - CE	356	Braulio da Silva Machado	FIFA
5	1	2019	Sábado 27 de Abril de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Everton 40 (1ºT)', ' Hudson 37 (2ºT)']	[]	0	Botafogo - RJ	296	Caio Max Augusto Vieira	AB
6	1	2019	Sábado 27 de Abril de 2019	21:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Bruno Henrique 40 (1ºT)', ' Bruno Henrique 22 (2ºT)', ' Gabriel Barbosa 44 (2ºT)']	['Pedro Rocha 39 (1ºT)']	1	Cruzeiro - MG	283	Anderson Daronco	FIFA
7	1	2019	Domingo 28 de Abril de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Rafael Vaz 44 (2ºT)']	1	Goiás - GO	290	Dewson Fernando Freitas da Silva	FIFA
8	1	2019	Sábado 27 de Abril de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Everaldo 45+2 (1ºT)', ' Everaldo 42 (2ºT)']	[]	0	Internacional - RS	285	Raphael Claus	FIFA
9	1	2019	Domingo 28 de Abril de 2019	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Arthur Caike 45+3 (1ºT)', ' Artur 30 (2ºT)', ' Rogerio 38 (2ºT)']	['Pedrinho 45+1 (1ºT) ', 'Clayson 45+4 (2ºT)']	2	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
10	1	2019	Domingo 28 de Abril de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Bruno Guimarães 2 (1ºT)', ' Marco Ruben 44 (1ºT)', ' Werley 20 (2ºT)', ' Nikao 41 (2ºT)']	['Bruno 43 (2ºT)']	1	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
11	2	2019	Quarta 01 de Maio de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Guerrero 4 (1ºT)', ' Sarrafiore 31 (2ºT)']	['De Arrascaeta 14 (2ºT)']	1	Flamengo - RJ	262	Flavio Rodrigues de Souza	AB
12	2	2019	Quarta 01 de Maio de 2019	19:15	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 4 (2ºT)']	[]	0	Ceará - CE	354	Wagner Reway	FIFA
13	2	2019	Quarta 01 de Maio de 2019	21:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Edinho 2 (1ºT)', ' Wellington Paulista 31 (2ºT)']	['Leo Pereira 21 (1ºT)']	1	Athletico Paranaense - PR	293	Marcelo de Lima Henrique	MTR
14	2	2019	Quarta 01 de Maio de 2019	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Carlos 10 (2ºT)']	[]	0	Chapecoense - SC	315	Ricardo Marques Ribeiro	FIFA
15	2	2019	Quinta 02 de Maio de 2019	19:15	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Eduardo Sasha 19 (2ºT)', ' Carlos Sanchez 27 (2ºT)']	['Pedro 39 (2ºT)']	1	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
16	2	2019	Quarta 01 de Maio de 2019	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Maxi Lopez 20 (2ºT)']	['Elias 13 (2ºT) ', 'Chará 44 (2ºT)']	2	Atlético - MG	282	Raphael Claus	FIFA
17	2	2019	Quinta 02 de Maio de 2019	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Erik 29 (1ºT)', ' Joao Paulo 35 (1ºT)', ' Cicero 45+2 (1ºT)']	['Arthur Caike 6 (1ºT) ', 'Ernando 37 (2ºT)']	2	Bahia - BA	265	Luiz Flavio de Oliveira	FIFA
18	2	2019	Quarta 01 de Maio de 2019	19:15	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Michel 39 (2ºT)']	['Romulo 44 (1ºT)']	1	Grêmio - RS	284	Wagner do Nascimento Magalhaes	FIFA
19	2	2019	Quarta 01 de Maio de 2019	21:30	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Leandro Barcia 45+2 (1ºT)']	['Alexandre Pato 31 (1ºT) ', 'Jonas Toró 35 (1ºT)']	2	São Paulo - SP	276	Rafael Traci	AB
20	2	2019	Quarta 01 de Maio de 2019	16:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Matheus Savio 17 (2ºT)']	['Raphael Veiga 9 (1ºT)']	1	Palmeiras - SP	275	Caio Max Augusto Vieira	AB
21	3	2019	Domingo 05 de Maio de 2019	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Andre Felipe 5 (1ºT)', ' Everton 12 (1ºT)', ' Jean Pyerre 21 (1ºT)', ' Kannemann 38 (2ºT)']	['Yony Gonzalez 39 (1ºT) ', 'Luciano 40 (1ºT) ', 'Matheus Ferraz 10 (2ºT) ', 'Pedro 26 (2ºT) ', 'Yony Gonzalez 45+2 (2ºT)']	5	Fluminense - RJ	266	Raphael Claus	FIFA
22	3	2019	Domingo 05 de Maio de 2019	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Dedé 3 (2ºT)', ' Rodriguinho 35 (2ºT)']	['Michael 11 (2ºT)']	1	Goiás - GO	290	Rodrigo Carvalhaes de Miranda	AB
23	3	2019	Sábado 04 de Maio de 2019	21:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Ricardo Bueno 23 (1ºT)']	['Nathan 26 (1ºT) ', 'Jair 45+2 (2ºT)']	2	Atlético - MG	282	Flavio Rodrigues de Souza	AB
24	3	2019	Sábado 04 de Maio de 2019	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Deyverson 14 (1ºT)']	[]	0	Internacional - RS	285	Wagner do Nascimento Magalhaes	FIFA
25	3	2019	Domingo 05 de Maio de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Tche Tche 38 (2ºT)']	['Berrio 9 (1ºT)']	1	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
26	3	2019	Sábado 04 de Maio de 2019	19:00	Arena da Amazônia - Manaus - AM	267	Vasco da Gama - RJ	1	[' Maxi Lopez 39 (1ºT)']	['Mateus 17 (1ºT)']	1	Corinthians - SP	264	Rodrigo Dalonso Ferreira	AB
27	3	2019	Domingo 05 de Maio de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Alex 24 (2ºT)']	[]	0	Fortaleza - CE	356	Wagner Reway	FIFA
28	3	2019	Domingo 05 de Maio de 2019	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 44 (2ºT)']	['Rony 30 (2ºT)']	1	Athletico Paranaense - PR	293	Vinicius Gonçalves Dias Araujo	AB
29	3	2019	Domingo 05 de Maio de 2019	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Artur 40 (1ºT)']	[]	0	Avaí - SC	314	Bruno Arleu de Araujo	AB
30	3	2019	Domingo 05 de Maio de 2019	16:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	[]	0	Santos - SP	277	Rodolpho Toski Marques	FIFA
31	4	2019	Domingo 12 de Maio de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Nonato 31 (1ºT)', ' Guerrero 10 (2ºT)', ' Moledo 37 (2ºT)']	['Dedé 35 (1ºT)']	1	Cruzeiro - MG	283	Raphael Claus	FIFA
32	4	2019	Domingo 12 de Maio de 2019	16:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Bruno 44 (1ºT) ', 'Bruno 7 (2ºT)']	2	Palmeiras - SP	275	Anderson Daronco	FIFA
33	4	2019	Domingo 12 de Maio de 2019	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Hernanes 31 (2ºT)']	1	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
34	4	2019	Sábado 11 de Maio de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Grêmio - RS	284	Marcelo de Lima Henrique	MTR
35	4	2019	Domingo 12 de Maio de 2019	16:00	Pacaembu - Sao Paulo - SP	277	Santos - SP	3	[' Diego 19 (1ºT)', ' Rodrygo 33 (1ºT)', ' Yeferson Soteldo 27 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Paulo Roberto Alves Junior	AB
36	4	2019	Domingo 12 de Maio de 2019	11:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Vitinho 7 (1ºT)', ' Lincoln 6 (2ºT)']	['Gum 45+2 (2ºT)']	1	Chapecoense - SC	315	Jean Pierre Goncalves Lima	AB
37	4	2019	Sábado 11 de Maio de 2019	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Alex 26 (2ºT)']	1	Botafogo - RJ	296	Marcelo Aparecido Ribeiro de Souza	AB
38	4	2019	Domingo 12 de Maio de 2019	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Csa - AL	341	Dewson Fernando Freitas da Silva	FIFA
39	4	2019	Sábado 11 de Maio de 2019	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Marlone 20 (1ºT)', ' Leandro Barcia 45+1 (2ºT)']	['Thiago Galhardo 31 (2ºT)']	1	Ceará - CE	354	Caio Max Augusto Vieira	AB
40	4	2019	Domingo 12 de Maio de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Rony 10 (1ºT)']	[]	0	Bahia - BA	265	Savio Pereira Sampaio	AB
41	5	2019	Domingo 19 de Maio de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Nonato 36 (1ºT)', ' Edenilson 19 (2ºT)']	[]	0	Csa - AL	341	Rodrigo Carvalhaes de Miranda	AB
42	5	2019	Sábado 18 de Maio de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Cazares 28 (1ºT)', ' Chará 1 (2ºT)']	['Bruno Henrique 30 (1ºT)']	1	Flamengo - RJ	262	Paulo Roberto Alves Junior	AB
43	5	2019	Domingo 19 de Maio de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Ricardinho 10 (1ºT)', ' Michel 23 (1ºT)']	['Everton 30 (1ºT)']	1	Grêmio - RS	284	Igor Junio Benevenuto de Oliveira	AB
44	5	2019	Sábado 18 de Maio de 2019	19:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	4	[' GUSTAVO GOMEZ 6 (1ºT)', ' Deyverson 18 (1ºT)', ' Raphael Veiga 7 (2ºT)', ' Hyoran 42 (2ºT)']	[]	0	Santos - SP	277	Rafael Traci	AB
45	5	2019	Domingo 19 de Maio de 2019	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Bahia - BA	265	Daniel Nobre Bins	AB
46	5	2019	Domingo 19 de Maio de 2019	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Ricardo Graça 36 (2ºT)']	['Daniel Amorim 45+4 (2ºT)']	1	Avaí - SC	314	Ricardo Marques Ribeiro	FIFA
47	5	2019	Sábado 18 de Maio de 2019	18:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[' Nino 44 (1ºT)', ' Luciano 1 (2ºT)', ' Joao Pedro 36 (2ºT)', ' Joao Pedro 45+4 (2ºT)']	['Robinho 4 (2ºT)']	1	Cruzeiro - MG	283	Flavio Rodrigues de Souza	AB
48	5	2019	Domingo 19 de Maio de 2019	16:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Rildo 13 (1ºT)']	['Marcio 38 (1ºT) ', 'Marcio 17 (2ºT) ', 'Osvaldo 20 (2ºT)']	3	Fortaleza - CE	356	Thiago Duarte Peixoto	AB
49	5	2019	Domingo 19 de Maio de 2019	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Kayke 41 (2ºT)']	[]	0	Botafogo - RJ	296	Rodolpho Toski Marques	FIFA
50	5	2019	Domingo 19 de Maio de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Vagner Love 13 (1ºT) ', 'Pedrinho 41 (2ºT)']	2	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
51	6	2019	Sábado 25 de Maio de 2019	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Felipe Vizeu 2 (2ºT)']	[]	0	Atlético - MG	282	Rafael Traci	AB
52	6	2019	Domingo 26 de Maio de 2019	19:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 11 (2ºT)']	['Rildo 7 (2ºT) ', 'Diego Torres 39 (2ºT)']	2	Chapecoense - SC	315	Dewson Fernando Freitas da Silva	FIFA
53	6	2019	Domingo 26 de Maio de 2019	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Romarinho 44 (2ºT)']	['Yago 26 (2ºT)']	1	Vasco da Gama - RJ	267	Anderson Daronco	FIFA
54	6	2019	Domingo 26 de Maio de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Pedrinho 6 (1ºT)']	[]	0	São Paulo - SP	276	Flavio Rodrigues de Souza	AB
55	6	2019	Domingo 26 de Maio de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	[]	0	Internacional - RS	285	Rodolpho Toski Marques	FIFA
56	6	2019	Domingo 26 de Maio de 2019	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Gabriel Barbosa 31 (1ºT)', ' Bruno Henrique 44 (2ºT)', ' Rodrigo Caio 45+5 (2ºT)']	['Marcelo Cirino 18 (2ºT) ', 'Marcelo Cirino 26 (2ºT)']	2	Athletico Paranaense - PR	293	Daniel Nobre Bins	AB
57	6	2019	Sábado 25 de Maio de 2019	16:00	Mané Garrincha - Brasilia - DF	296	Botafogo - RJ	0	[]	['GUSTAVO GOMEZ 16 (2ºT)']	1	Palmeiras - SP	275	Paulo Roberto Alves Junior	AB
58	6	2019	Segunda 27 de Maio de 2019	20:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Brenner 43 (1ºT)']	['Thiago Galhardo 29 (2ºT) ', 'Thiago Galhardo 41 (2ºT)']	2	Ceará - CE	354	Rodrigo Carvalhaes de Miranda	AB
59	6	2019	Domingo 26 de Maio de 2019	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Artur 15 (1ºT)', ' Gilberto 29 (1ºT)', ' Gilberto 24 (2ºT)']	['Pedro 19 (1ºT) ', 'Joao Pedro 35 (2ºT)']	2	Fluminense - RJ	266	Igor Junio Benevenuto de Oliveira	AB
60	6	2019	Segunda 27 de Maio de 2019	20:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Maranhão 17 (2ºT)']	[]	0	Goiás - GO	290	Edina Alves Batista	FIFA
61	7	2019	Domingo 02 de Junho de 2019	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Guerrero 16 (2ºT)', ' Edenilson 31 (2ºT)']	[]	0	Avaí - SC	314	Rodrigo Nunes de Sa	AB
62	7	2019	Domingo 02 de Junho de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	4	[' Fabio Santos 19 (1ºT)', ' Cazares 22 (1ºT)', ' Chará 4 (2ºT)', ' Adilson 31 (2ºT)']	[]	0	Csa - AL	341	Diego Pombo Lopez	AB
63	7	2019	Domingo 02 de Junho de 2019	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Eduardo Sasha 6 (2ºT)']	1	Santos - SP	277	Ricardo Marques Ribeiro	FIFA
64	7	2019	Quarta 07 de Agosto de 2019	19:15	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Junior Urso 24 (1ºT)', ' Boselli 42 (2ºT)']	[]	0	Goiás - GO	290	Bruno Arleu de Araujo	AB
65	7	2019	Domingo 02 de Junho de 2019	16:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	1	[' Alexandre Pato 14 (1ºT)']	['Thiago Neves 22 (2ºT)']	1	Cruzeiro - MG	283	Braulio da Silva Machado	FIFA
66	7	2019	Sábado 01 de Junho de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Gabriel Barbosa 39 (1ºT)', ' Gabriel Barbosa 22 (2ºT)']	[]	0	Fortaleza - CE	356	Rodrigo Dalonso Ferreira	AB
67	7	2019	Domingo 02 de Junho de 2019	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Diego Souza 13 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Vinicius Gonçalves Dias Araujo	AB
68	7	2019	Domingo 02 de Junho de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 36 (1ºT)']	['Dudu 32 (1ºT) ', 'Marcos Rocha 45 (1ºT)']	2	Palmeiras - SP	275	Rodolpho Toski Marques	FIFA
69	7	2019	Sábado 01 de Junho de 2019	19:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Fernandao 9 (2ºT)']	[]	0	Grêmio - RS	284	Dewson Fernando Freitas da Silva	FIFA
70	7	2019	Domingo 02 de Junho de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	3	[' Lucho Gonzalez 20 (1ºT)', ' Rony 37 (1ºT)', ' Marcelo Cirino 38 (2ºT)']	[]	0	Fluminense - RJ	266	Wagner Reway	FIFA
183	19	2019	Sábado 14 de Setembro de 2019	21:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
71	8	2019	Sábado 08 de Junho de 2019	19:00	Centenário - Caxias do Sul - RS	284	Grêmio - RS	1	[' Pepe 44 (2ºT)']	[]	0	Fortaleza - CE	356	Savio Pereira Sampaio	AB
72	8	2019	Sábado 08 de Junho de 2019	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Corinthians - SP	264	Marcelo de Lima Henrique	MTR
73	8	2019	Sábado 08 de Junho de 2019	19:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Bahia - BA	265	Thiago Duarte Peixoto	AB
74	8	2019	Sábado 08 de Junho de 2019	16:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Raphael Veiga 34 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Rodrigo Dalonso Ferreira	AB
75	8	2019	Domingo 09 de Junho de 2019	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Eduardo Sasha 38 (1ºT)', ' Sousa 45+4 (1ºT)', ' Carlos Sanchez 36 (2ºT)']	['Alerrandro 26 (2ºT)']	1	Atlético - MG	282	Dewson Fernando Freitas da Silva	FIFA
76	8	2019	Sexta 07 de Junho de 2019	20:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Andrey 44 (1ºT)', ' Tiago Rodrigues dos Reis 45+3 (1ºT)']	['Emerson 10 (2ºT)']	1	Internacional - RS	285	Heber Roberto Lopes	MTR
77	8	2019	Domingo 09 de Junho de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Flamengo - RJ	262	Wagner do Nascimento Magalhaes	FIFA
78	8	2019	Sábado 08 de Junho de 2019	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	São Paulo - SP	276	Caio Max Augusto Vieira	AB
79	8	2019	Segunda 10 de Junho de 2019	20:00	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Kayke 36 (1ºT)', ' Jefferson Junio 32 (2ºT)', ' Kayke 45+1 (2ºT)']	['Rafael 44 (1ºT)']	1	Chapecoense - SC	315	Igor Junio Benevenuto de Oliveira	AB
80	8	2019	Domingo 09 de Junho de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Carlinhos 16 (2ºT)']	['Cicero 37 (2ºT) ', 'Alex 45+3 (2ºT)']	2	Botafogo - RJ	296	Jean Pierre Goncalves Lima	AB
81	9	2019	Quarta 12 de Junho de 2019	21:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Rodrigo 17 (1ºT)', ' Rafael Sobis 16 (2ºT)', ' Dalessandro 36 (2ºT)']	['Fernandao 32 (2ºT)']	1	Bahia - BA	265	Paulo Roberto Alves Junior	AB
82	9	2019	Quinta 13 de Junho de 2019	20:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Alerrandro 43 (1ºT)']	['Alexandre Pato 28 (2ºT)']	1	São Paulo - SP	276	Leandro Pedro Vuaden	MTR
83	9	2019	Quarta 12 de Junho de 2019	21:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Andre Luis 2 (1ºT)', ' Andre Luis 45+1 (1ºT)']	['Sassa 10 (1ºT)']	1	Cruzeiro - MG	283	Heber Roberto Lopes	MTR
84	9	2019	Quinta 13 de Junho de 2019	20:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Deyverson 32 (1ºT)', ' Bruno 20 (2ºT)']	[]	0	Avaí - SC	314	Marcelo de Lima Henrique	MTR
85	9	2019	Quarta 12 de Junho de 2019	21:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Eduardo Sasha 14 (2ºT)']	[]	0	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
86	9	2019	Quinta 13 de Junho de 2019	19:15	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Danilo Barcelos 35 (2ºT)']	[]	0	Ceará - CE	354	Flavio Rodrigues de Souza	AB
87	9	2019	Quarta 12 de Junho de 2019	19:15	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Jean Pyerre 35 (2ºT)']	1	Grêmio - RS	284	Marcelo Aparecido Ribeiro de Souza	AB
88	9	2019	Quinta 13 de Junho de 2019	20:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 3 (1ºT)']	['PH GANSO 13 (2ºT)']	1	Fluminense - RJ	266	Ricardo Marques Ribeiro	FIFA
89	9	2019	Quinta 13 de Junho de 2019	20:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Kayke 6 (1ºT)', ' Leandro Barcia 32 (1ºT)']	['Rafael Vaz 45+2 (2ºT)']	1	Athletico Paranaense - PR	293	Rodrigo Carvalhaes de Miranda	AB
90	9	2019	Quarta 12 de Junho de 2019	21:30	Mané Garrincha - Brasilia - DF	341	Csa - AL	0	[]	['Vitinho 20 (2ºT) ', 'Gabriel Barbosa 31 (2ºT)']	2	Flamengo - RJ	262	Douglas Marques das Flores	AB
91	10	2019	Sábado 13 de Julho de 2019	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Pepe 15 (2ºT)', ' Pepe 40 (2ºT)']	['Yago 14 (1ºT)']	1	Vasco da Gama - RJ	267	Rodolpho Toski Marques	FIFA
92	10	2019	Domingo 14 de Julho de 2019	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Botafogo - RJ	296	Leandro Pedro Vuaden	MTR
93	10	2019	Sábado 13 de Julho de 2019	17:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Wellington Paulista 43 (1ºT)', ' Wellington Paulista 21 (2ºT)']	[]	0	Avaí - SC	314	Thiago Duarte Peixoto	AB
94	10	2019	Domingo 14 de Julho de 2019	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Vagner Love 32 (2ºT)']	[]	0	Csa - AL	341	Wagner Reway	FIFA
95	10	2019	Sábado 13 de Julho de 2019	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Pablo 9 (1ºT)']	['Dudu 26 (2ºT)']	1	Palmeiras - SP	275	Bruno Arleu de Araujo	AB
96	10	2019	Domingo 14 de Julho de 2019	11:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	6	[' De Arrascaeta 5 (1ºT)', ' Bruno Henrique 43 (1ºT)', ' De Arrascaeta 45 (1ºT)', ' De Arrascaeta 45+4 (1ºT)', ' Gabriel Barbosa 10 (2ºT)', ' Gabriel Barbosa 36 (2ºT)']	['Kayke 12 (1ºT)']	1	Goiás - GO	290	Caio Max Augusto Vieira	AB
97	10	2019	Segunda 15 de Julho de 2019	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Pedro 41 (1ºT)']	['Tiago 45+3 (1ºT)']	1	Ceará - CE	354	Douglas Marques das Flores	AB
98	10	2019	Domingo 14 de Julho de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 1 (1ºT)']	['Iago 34 (2ºT) ', 'Vinicius 45+9 (2ºT)']	2	Atlético - MG	282	Marcelo Aparecido Ribeiro de Souza	AB
99	10	2019	Sábado 13 de Julho de 2019	19:00	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	['Carlos Sanchez 41 (2ºT)']	1	Santos - SP	277	Jean Pierre Goncalves Lima	AB
100	10	2019	Domingo 14 de Julho de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Vitinho 43 (2ºT)']	[]	0	Internacional - RS	285	Braulio da Silva Machado	FIFA
101	11	2019	Sábado 20 de Julho de 2019	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' P. Miranda 21 (1ºT)']	['Luan 25 (2ºT)']	1	Grêmio - RS	284	Anderson Daronco	FIFA
102	11	2019	Domingo 21 de Julho de 2019	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Juninho 7 (1ºT)', ' Cazares 14 (1ºT)']	['Carlinho 19 (2ºT) ', 'Juninho 26 (2ºT)']	2	Fortaleza - CE	356	Edina Alves Batista	FIFA
103	11	2019	Sábado 20 de Julho de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Mateus Gonçalves 31 (1ºT)', ' Leandro 27 (2ºT)']	[]	0	Palmeiras - SP	275	Rodrigo Dalonso Ferreira	AB
104	11	2019	Domingo 21 de Julho de 2019	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Clayson 16 (2ºT)']	['Gabriel Barbosa 42 (2ºT)']	1	Flamengo - RJ	262	Leandro Pedro Vuaden	MTR
105	11	2019	Segunda 22 de Julho de 2019	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[' Antony 3 (2ºT)', ' Jonas Toró 7 (2ºT)', ' Raniel 10 (2ºT)', ' Vitor Bueno 45+1 (2ºT)']	[]	0	Chapecoense - SC	315	Savio Pereira Sampaio	AB
106	11	2019	Sábado 20 de Julho de 2019	11:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Castan 21 (2ºT)', ' Bruno 29 (2ºT)']	['Pedro 45+1 (1ºT)']	1	Fluminense - RJ	266	Bruno Arleu de Araujo	AB
107	11	2019	Domingo 21 de Julho de 2019	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Marinho 29 (2ºT)']	1	Santos - SP	277	Heber Roberto Lopes	MTR
108	11	2019	Domingo 21 de Julho de 2019	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Goiás - GO	290	Rodolpho Toski Marques	FIFA
109	11	2019	Sábado 20 de Julho de 2019	17:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	Cruzeiro - MG	283	Luiz Flavio de Oliveira	FIFA
110	11	2019	Sábado 20 de Julho de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	['Madson 41 (1ºT) ', 'Thonny Anderson 14 (2ºT) ', 'Cittadini 40 (2ºT) ', 'Braian Romero 45+2 (2ºT)']	4	Athletico Paranaense - PR	293	Ricardo Marques Ribeiro	FIFA
111	12	2019	Sábado 27 de Julho de 2019	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Sarrafiore 39 (1ºT)']	[]	0	Ceará - CE	354	Marcelo de Lima Henrique	MTR
112	12	2019	Sábado 27 de Julho de 2019	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Jonathan 29 (1ºT) ', 'Bruno Guimarães 32 (2ºT)']	2	Athletico Paranaense - PR	293	Rodrigo Carvalhaes de Miranda	AB
113	12	2019	Domingo 28 de Julho de 2019	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Manoel 39 (1ºT)']	['Boselli 21 (2ºT) ', 'Pedrinho 26 (2ºT) ', 'Danilo 35 (2ºT)']	3	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
114	12	2019	Sábado 27 de Julho de 2019	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Gustavo Scarpa 14 (1ºT)']	['Marrony 2 (1ºT)']	1	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
115	12	2019	Domingo 28 de Julho de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Derlis Gonzalez 9 (1ºT)', ' Carlos Sanchez 32 (1ºT)', ' Felipe 32 (2ºT)']	['João Paulo 27 (1ºT)']	1	Avaí - SC	314	Wagner Reway	FIFA
116	12	2019	Domingo 28 de Julho de 2019	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Gerson 34 (1ºT)', ' Gabriel Barbosa 9 (2ºT)', ' Bruno Henrique 23 (2ºT)']	['Cicero 13 (1ºT) ', 'Diego Souza 21 (2ºT)']	2	Botafogo - RJ	296	Raphael Claus	FIFA
117	12	2019	Sábado 27 de Julho de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Yony Gonzalez 36 (1ºT)']	['Reinaldo 19 (1ºT) ', 'Reinaldo 45+7 (2ºT)']	2	São Paulo - SP	276	Anderson Daronco	FIFA
118	12	2019	Domingo 28 de Julho de 2019	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	[]	0	Bahia - BA	265	Dewson Fernando Freitas da Silva	FIFA
119	12	2019	Domingo 28 de Julho de 2019	19:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Atlético - MG	282	Luiz Flavio de Oliveira	FIFA
120	12	2019	Segunda 29 de Julho de 2019	20:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	[]	0	Grêmio - RS	284	Caio Max Augusto Vieira	AB
121	13	2019	Segunda 05 de Agosto de 2019	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Geromel 8 (1ºT)', ' Everton 26 (1ºT)', ' Diego Tardelli 35 (2ºT)']	['Everaldo 11 (1ºT) ', 'Gustavo 34 (1ºT) ', 'Arthur Gomes 14 (2ºT)']	3	Chapecoense - SC	315	Felipe Fernandes de Lima	AB
122	13	2019	Domingo 04 de Agosto de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Vinicius 45+1 (1ºT)', ' Nathan 45+1 (2ºT)']	[]	0	Cruzeiro - MG	283	Leandro Pedro Vuaden	MTR
123	13	2019	Sábado 03 de Agosto de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Thiago Galhardo 14 (1ºT)', ' Felippe Cardoso 17 (1ºT)']	['Juninho 45+1 (1ºT)']	1	Fortaleza - CE	356	Heber Roberto Lopes	MTR
124	13	2019	Domingo 04 de Agosto de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Manoel 12 (1ºT)']	['Felipe Melo 3 (2ºT)']	1	Palmeiras - SP	275	Anderson Daronco	FIFA
125	13	2019	Domingo 04 de Agosto de 2019	11:00	Vila Belmiro - Santos - SP	277	Santos - SP	6	[' Carlos Sanchez 8 (1ºT)', ' Lucas Veríssimo 15 (1ºT)', ' Gustavo 36 (1ºT)', ' Eduardo Sasha 6 (2ºT)', ' Yeferson Soteldo 23 (2ºT)', ' Yeferson Soteldo 35 (2ºT)']	['Kayke 45 (2ºT)']	1	Goiás - GO	290	Rafael Traci	AB
126	13	2019	Domingo 04 de Agosto de 2019	19:00	Kleber Andrade - Cariacica - ES	267	Vasco da Gama - RJ	0	[]	[]	0	Csa - AL	341	Marielson Alves Silva	AB
127	13	2019	Sábado 03 de Agosto de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Yony Gonzalez 12 (2ºT)', ' Natanael 22 (2ºT)']	['Edenilson 45+1 (2ºT)']	1	Internacional - RS	285	Rodolpho Toski Marques	FIFA
128	13	2019	Domingo 04 de Agosto de 2019	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Alex 18 (1ºT) ', 'Marcelo 5 (2ºT)']	2	Botafogo - RJ	296	Vinicius Furlan	AB
129	13	2019	Domingo 04 de Agosto de 2019	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	3	[' Gilberto 22 (1ºT)', ' Gilberto 30 (1ºT)', ' Gilberto 45+5 (1ºT)']	[]	0	Flamengo - RJ	262	Flavio Rodrigues de Souza	AB
130	13	2019	Quarta 21 de Agosto de 2019	19:15	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Vitor Bueno 39 (1ºT)']	1	São Paulo - SP	276	Daniel Nobre Bins	AB
131	14	2019	Domingo 11 de Agosto de 2019	11:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Corinthians - SP	264	Caio Max Augusto Vieira	AB
132	14	2019	Sábado 10 de Agosto de 2019	21:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Cazares 42 (1ºT)', ' Ricardo Oliveira 5 (2ºT)']	['Nenê 43 (2ºT)']	1	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
133	14	2019	Sábado 10 de Agosto de 2019	17:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	4	[' Thiago Galhardo 45+5 (1ºT)', ' Felippe Cardoso 11 (2ºT)', ' Thiago Galhardo 15 (2ºT)', ' Thiago Galhardo 44 (2ºT)']	['Renato Kayzer 43 (2ºT)']	1	Chapecoense - SC	315	Rodrigo Carvalhaes de Miranda	AB
134	14	2019	Domingo 11 de Agosto de 2019	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Dudu 13 (1ºT)', ' Dudu 13 (2ºT)']	['Gilberto 7 (2ºT) ', 'Gilberto 39 (2ºT)']	2	Bahia - BA	265	Igor Junio Benevenuto de Oliveira	AB
135	14	2019	Sábado 10 de Agosto de 2019	17:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Alexandre Pato 3 (2ºT)', ' Reinaldo 11 (2ºT)', ' Alexandre Pato 26 (2ºT)']	['Eduardo Sasha 43 (1ºT) ', 'Raniel 40 (2ºT)']	2	Santos - SP	277	Raphael Claus	FIFA
136	14	2019	Sábado 10 de Agosto de 2019	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Willian Arão 29 (1ºT)', ' De Arrascaeta 5 (2ºT)', ' Everton Ribeiro 45+1 (2ºT)']	['Galhardo 45+5 (1ºT)']	1	Grêmio - RS	284	Braulio da Silva Machado	FIFA
137	14	2019	Domingo 11 de Agosto de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Luiz Fernando 30 (1ºT)', ' Diego Souza 31 (2ºT)']	['Thonny Anderson 15 (1ºT)']	1	Athletico Paranaense - PR	293	Douglas Marques das Flores	AB
138	14	2019	Domingo 11 de Agosto de 2019	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	2	[' Pedro Castro 22 (1ºT)', ' Brenner 29 (2ºT)']	['Pedro Rocha 17 (2ºT) ', 'Sassa 45+2 (2ºT)']	2	Cruzeiro - MG	283	Paulo Roberto Alves Junior	AB
139	14	2019	Domingo 11 de Agosto de 2019	19:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Marcos Junior 21 (1ºT)']	1	Vasco da Gama - RJ	267	Jean Pierre Goncalves Lima	AB
140	14	2019	Segunda 12 de Agosto de 2019	20:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	['Bruno 4 (1ºT) ', 'Edinho 37 (1ºT)']	2	Fortaleza - CE	356	Gilberto Rodrigues Castro Junior	AB
141	15	2019	Sábado 17 de Agosto de 2019	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' David Braz 43 (2ºT)']	['Dudu 13 (1ºT)']	1	Palmeiras - SP	275	Wagner do Nascimento Magalhaes	FIFA
142	15	2019	Domingo 18 de Agosto de 2019	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	2	[' Fred 43 (1ºT)', ' Thiago Neves 1 (2ºT)']	[]	0	Santos - SP	277	Anderson Daronco	FIFA
143	15	2019	Sábado 17 de Agosto de 2019	17:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Wellington Silva 20 (2ºT)']	1	Internacional - RS	285	Braulio da Silva Machado	FIFA
144	15	2019	Sábado 17 de Agosto de 2019	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Boselli 42 (1ºT)', ' Everaldo 11 (2ºT)']	[]	0	Botafogo - RJ	296	Rafael Traci	AB
145	15	2019	Domingo 18 de Agosto de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Dani Alves 39 (1ºT)']	[]	0	Ceará - CE	354	Gilberto Rodrigues Castro Junior	AB
146	15	2019	Sábado 17 de Agosto de 2019	19:00	Mané Garrincha - Brasilia - DF	267	Vasco da Gama - RJ	1	[' Castan 13 (2ºT)']	['Bruno Henrique 41 (1ºT) ', 'Gabriel Barbosa 6 (2ºT) ', 'Gabriel Barbosa 16 (2ºT) ', 'De Arrascaeta 38 (2ºT)']	4	Flamengo - RJ	262	Leandro Pedro Vuaden	MTR
147	15	2019	Domingo 18 de Agosto de 2019	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Jonatan Gomez 34 (2ºT)']	1	Csa - AL	341	Wagner Reway	FIFA
148	15	2019	Domingo 18 de Agosto de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 28 (2ºT)']	[]	0	Avaí - SC	314	Luiz Flavio de Oliveira	FIFA
149	15	2019	Domingo 18 de Agosto de 2019	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Guerra 25 (2ºT)']	['Fabio Sanches 34 (1ºT)']	1	Goiás - GO	290	Raphael Claus	FIFA
150	15	2019	Sábado 17 de Agosto de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Marcelo Cirino 28 (1ºT)']	[]	0	Atlético - MG	282	Dewson Fernando Freitas da Silva	FIFA
151	16	2019	Sábado 24 de Agosto de 2019	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Luan 3 (1ºT)', ' Thaciano 6 (2ºT)']	['Rony 2 (2ºT)']	1	Athletico Paranaense - PR	293	Bruno Arleu de Araujo	AB
152	16	2019	Sábado 24 de Agosto de 2019	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Gilberto 19 (1ºT)']	1	Bahia - BA	265	Rodolpho Toski Marques	FIFA
153	16	2019	Domingo 25 de Agosto de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['PABLO MARI 21 (1ºT) ', 'Gabriel Barbosa 35 (1ºT) ', 'De Arrascaeta 45+6 (2ºT)']	3	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
154	16	2019	Terça 10 de Setembro de 2019	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Luiz Adriano 8 (1ºT)', ' Luiz Adriano 12 (2ºT)', ' Luiz Adriano 17 (2ºT)']	[]	0	Fluminense - RJ	266	Anderson Daronco	FIFA
184	19	2019	Sábado 14 de Setembro de 2019	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Bruno 45+1 (1ºT)']	[]	0	Cruzeiro - MG	283	Rodolpho Toski Marques	FIFA
155	16	2019	Domingo 25 de Agosto de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Marinho 2 (1ºT)', ' Jorge 10 (1ºT)', ' Eduardo Sasha 32 (1ºT)']	['Wellington Paulista 14 (2ºT) ', 'Wellington Paulista 22 (2ºT) ', 'Guilherme 45+5 (2ºT)']	3	Fortaleza - CE	356	Rodrigo Dalonso Ferreira	AB
156	16	2019	Domingo 25 de Agosto de 2019	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Talles Magno 11 (2ºT)', ' Fellipe 36 (2ºT)']	[]	0	São Paulo - SP	276	Anderson Daronco	FIFA
157	16	2019	Segunda 26 de Agosto de 2019	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Chapecoense - SC	315	Edina Alves Batista	FIFA
158	16	2019	Domingo 25 de Agosto de 2019	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Richard 14 (2ºT)']	['Vagner Love 31 (2ºT)']	1	Corinthians - SP	264	Ricardo Marques Ribeiro	FIFA
159	16	2019	Domingo 25 de Agosto de 2019	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Michael 25 (2ºT)', ' Rafael Vaz 45+4 (2ºT)']	['G. Parede 11 (1ºT)']	1	Internacional - RS	285	Marielson Alves Silva	AB
160	16	2019	Domingo 25 de Agosto de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Apodi 45+3 (2ºT)']	['Fred 10 (1ºT)']	1	Cruzeiro - MG	283	Marcelo de Lima Henrique	MTR
161	17	2019	Sábado 31 de Agosto de 2019	21:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' Rodrigo 43 (1ºT)', ' Edenilson 7 (2ºT)', ' Nico Lopez 37 (2ºT)']	['Diego Souza 16 (2ºT) ', 'Marcinho 45+4 (2ºT)']	2	Botafogo - RJ	296	Dewson Fernando Freitas da Silva	FIFA
162	17	2019	Domingo 01 de Setembro de 2019	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Mauricio 31 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Marcelo Aparecido Ribeiro de Souza	AB
163	17	2019	Domingo 01 de Setembro de 2019	16:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Juan Quintero 24 (1ºT)', ' Osvaldo 13 (2ºT)']	[]	0	Goiás - GO	290	Felipe Fernandes de Lima	AB
164	17	2019	Domingo 01 de Setembro de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Gustavo 43 (2ºT)']	[]	0	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
165	17	2019	Sábado 31 de Agosto de 2019	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Grêmio - RS	284	Caio Max Augusto Vieira	AB
166	17	2019	Domingo 01 de Setembro de 2019	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Gabriel Barbosa 10 (1ºT)', ' De Arrascaeta 38 (1ºT)', ' Gabriel Barbosa 15 (2ºT)']	[]	0	Palmeiras - SP	275	Rafael Traci	AB
167	17	2019	Segunda 02 de Setembro de 2019	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['João Paulo 41 (2ºT)']	1	Avaí - SC	314	Raphael Claus	FIFA
168	17	2019	Sábado 31 de Agosto de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Gum 38 (1ºT)']	1	Santos - SP	277	Bruno Arleu de Araujo	AB
169	17	2019	Sábado 31 de Agosto de 2019	17:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Arthur Caike 40 (2ºT)']	[]	0	Csa - AL	341	Vinicius Gomes do Amaral	AB
170	17	2019	Sábado 31 de Agosto de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Nikao 45+4 (1ºT)']	[]	0	Ceará - CE	354	Leandro Pedro Vuaden	MTR
171	18	2019	Sábado 07 de Setembro de 2019	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Rafael Sobis 30 (2ºT)']	[]	0	São Paulo - SP	276	Marcelo de Lima Henrique	MTR
172	18	2019	Domingo 08 de Setembro de 2019	11:00	Independência - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Fred 36 (1ºT)']	['Diego Tardelli 18 (1ºT) ', 'Alisson 27 (1ºT) ', 'Everton 18 (2ºT) ', 'Everton 31 (2ºT)']	4	Grêmio - RS	284	Rafael Traci	AB
173	18	2019	Sábado 07 de Setembro de 2019	17:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Joao Pedro 41 (2ºT)']	1	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
174	18	2019	Sábado 07 de Setembro de 2019	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Joao Lucas 22 (1ºT)', ' Vagner Love 36 (1ºT)']	['Thiago Galhardo 24 (2ºT) ', 'Leandro 45+2 (2ºT)']	2	Ceará - CE	354	Paulo Roberto Alves Junior	AB
175	18	2019	Domingo 08 de Setembro de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Carlos Sanchez 45+1 (2ºT)']	['Braian Romero 42 (1ºT)']	1	Athletico Paranaense - PR	293	Rodrigo Carvalhaes de Miranda	AB
176	18	2019	Sábado 07 de Setembro de 2019	11:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Nino Paraiba 11 (2ºT) ', 'Gilberto 15 (2ºT)']	2	Bahia - BA	265	Caio Max Augusto Vieira	AB
177	18	2019	Domingo 08 de Setembro de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Diego Souza 44 (1ºT)', ' Alex 20 (2ºT)']	['Di Santo 45+2 (2ºT)']	1	Atlético - MG	282	Braulio da Silva Machado	FIFA
178	18	2019	Sábado 07 de Setembro de 2019	17:00	Mané Garrincha - Brasilia - DF	314	Avaí - SC	0	[]	['Gabriel Barbosa 10 (1ºT) ', 'PABLO MARI 31 (1ºT) ', 'Reinier 7 (2ºT)']	3	Flamengo - RJ	262	Edina Alves Batista	FIFA
179	18	2019	Sábado 07 de Setembro de 2019	21:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Rafael Vaz 20 (1ºT)']	['Willian 37 (2ºT) ', 'Gustavo Scarpa 45+10 (2ºT)']	2	Palmeiras - SP	275	Wagner Reway	FIFA
180	18	2019	Domingo 08 de Setembro de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	2	[' Alecsandro 39 (1ºT)', ' Jonatan Gomez 45+4 (2ºT)']	[]	0	Chapecoense - SC	315	Vinicius Gonçalves Dias Araujo	AB
181	19	2019	Domingo 15 de Setembro de 2019	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Jean Pyerre 29 (1ºT)', ' Everton 32 (1ºT)', ' Alisson 44 (1ºT)']	[]	0	Goiás - GO	290	Savio Pereira Sampaio	AB
182	19	2019	Domingo 15 de Setembro de 2019	11:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Bruno 42 (2ºT)']	['Pottker 23 (1ºT) ', 'Neilton 7 (2ºT) ', 'Pottker 18 (2ºT)']	3	Internacional - RS	285	Bruno Arleu de Araujo	AB
185	19	2019	Domingo 15 de Setembro de 2019	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Reinaldo 41 (2ºT)']	['HECTOR 9 (2ºT)']	1	Csa - AL	341	Heber Roberto Lopes	MTR
186	19	2019	Sábado 14 de Setembro de 2019	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Gabriel Barbosa 44 (1ºT)']	[]	0	Santos - SP	277	Braulio da Silva Machado	FIFA
187	19	2019	Domingo 15 de Setembro de 2019	16:00	Mané Garrincha - Brasilia - DF	266	Fluminense - RJ	1	[' PH GANSO 39 (1ºT)']	[]	0	Corinthians - SP	264	Jean Pierre Goncalves Lima	AB
188	19	2019	Sábado 14 de Setembro de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Arthur Gomes 27 (2ºT)']	['Lucas Ribamar 45+2 (1ºT) ', 'Talles Magno 29 (2ºT)']	2	Vasco da Gama - RJ	267	Flavio Rodrigues de Souza	AB
189	19	2019	Domingo 15 de Setembro de 2019	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Gilberto 13 (1ºT)']	['Felipe 9 (1ºT)']	1	Fortaleza - CE	356	Wagner do Nascimento Magalhaes	FIFA
190	19	2019	Domingo 15 de Setembro de 2019	11:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Jonathan 13 (1ºT)']	1	Avaí - SC	314	Felipe Fernandes de Lima	AB
191	20	2019	Domingo 22 de Setembro de 2019	11:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Rodrigo 45+2 (2ºT)']	[]	0	Chapecoense - SC	315	Diego Pombo Lopez	AB
192	20	2019	Sábado 21 de Setembro de 2019	17:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 38 (1ºT)']	['Gabriel Barbosa 6 (1ºT) ', 'De Arrascaeta 21 (2ºT)']	2	Flamengo - RJ	262	Raphael Claus	FIFA
193	20	2019	Domingo 22 de Setembro de 2019	16:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Willian 2 (2ºT)']	1	Palmeiras - SP	275	Marcelo de Lima Henrique	MTR
194	20	2019	Sábado 21 de Setembro de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Vagner Love 43 (1ºT)', ' Clayson 30 (2ºT)']	['Gilberto 18 (2ºT)']	1	Bahia - BA	265	Dewson Fernando Freitas da Silva	FIFA
195	20	2019	Sábado 21 de Setembro de 2019	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Luan 9 (2ºT) ', 'Pepe 42 (2ºT) ', 'Everton 45+2 (2ºT)']	3	Grêmio - RS	284	Paulo Roberto Alves Junior	AB
196	20	2019	Domingo 22 de Setembro de 2019	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Danilo Barcelos 23 (2ºT)']	['Madson 4 (2ºT)']	1	Athletico Paranaense - PR	293	Anderson Daronco	FIFA
197	20	2019	Sábado 21 de Setembro de 2019	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Joao Paulo 45 (1ºT)']	['Hernanes 36 (1ºT) ', 'Pablo 45+1 (2ºT)']	2	São Paulo - SP	276	Jean Pierre Goncalves Lima	AB
198	20	2019	Segunda 23 de Setembro de 2019	20:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Jonathan 26 (1ºT)']	[]	0	Atlético - MG	282	Caio Max Augusto Vieira	AB
199	20	2019	Domingo 22 de Setembro de 2019	19:00	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Michael 11 (1ºT)', ' Rafael Vaz 20 (2ºT)', ' Yago Felipe 44 (2ºT)']	[]	0	Fluminense - RJ	266	Rafael Traci	AB
200	20	2019	Domingo 22 de Setembro de 2019	16:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Carlinhos 18 (2ºT)']	[]	0	Ceará - CE	354	Ricardo Marques Ribeiro	FIFA
201	21	2019	Quinta 26 de Setembro de 2019	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	6	[' Diego Tardelli 3 (1ºT)', ' David Braz 13 (1ºT)', ' Luan 37 (1ºT)', ' Luciano 45 (1ºT)', ' Cortez 18 (2ºT)', ' Andre Felipe 24 (2ºT)']	['Gêge 40 (2ºT)']	1	Avaí - SC	314	Rodolpho Toski Marques	FIFA
202	21	2019	Quarta 02 de Outubro de 2019	19:15	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Otero 15 (2ºT)']	['Rossi 21 (2ºT) ', 'Marcos Junior 45+4 (2ºT)']	2	Vasco da Gama - RJ	267	Heber Roberto Lopes	MTR
203	21	2019	Quarta 25 de Setembro de 2019	19:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Cruzeiro - MG	283	Braulio da Silva Machado	FIFA
204	21	2019	Quinta 26 de Setembro de 2019	19:15	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	6	[' Luiz Adriano 5 (1ºT)', ' Willian 11 (1ºT)', ' Bruno 28 (1ºT)', ' GUSTAVO GOMEZ 45+1 (1ºT)', ' Luiz Adriano 29 (2ºT)', ' Bruno 38 (2ºT)']	['Apodi 7 (2ºT) ', 'Ricardo Bueno 43 (2ºT)']	2	Csa - AL	341	Diego Pombo Lopez	AB
205	21	2019	Quarta 25 de Setembro de 2019	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Leandro Barcia 15 (1ºT)']	1	Goiás - GO	290	Bruno Arleu de Araujo	AB
206	21	2019	Quarta 25 de Setembro de 2019	21:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Gabriel Barbosa 19 (1ºT)', ' De Arrascaeta 10 (2ºT)', ' Bruno Henrique 29 (2ºT)']	['Edenilson 4 (2ºT)']	1	Internacional - RS	285	Luiz Flavio de Oliveira	FIFA
207	21	2019	Quinta 26 de Setembro de 2019	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Lucas Veríssimo 45+2 (1ºT)']	['Yeferson Soteldo 39 (1ºT)']	1	Santos - SP	277	Wilton Pereira Sampaio	FIFA
208	21	2019	Quarta 02 de Outubro de 2019	19:15	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Danilo 18 (1ºT)']	1	Corinthians - SP	264	Daniel Nobre Bins	AB
209	21	2019	Quarta 25 de Setembro de 2019	21:30	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Artur 23 (1ºT)', ' Elber 18 (2ºT)']	[]	0	Botafogo - RJ	296	Flavio Rodrigues de Souza	AB
210	21	2019	Quinta 26 de Setembro de 2019	21:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Marco Ruben 31 (1ºT)', ' Nikao 45+3 (1ºT)', ' Cittadini 15 (2ºT)', ' Marcelo Cirino 45+4 (2ºT)']	['Wellington Paulista 10 (1ºT)']	1	Fortaleza - CE	356	Vinicius Gomes do Amaral	AB
211	22	2019	Domingo 29 de Setembro de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Patrick 27 (1ºT)']	['Willian 12 (2ºT)']	1	Palmeiras - SP	275	Braulio da Silva Machado	FIFA
212	22	2019	Domingo 29 de Setembro de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Otero 8 (2ºT)', ' Luan 35 (2ºT)']	['Thiago Galhardo 42 (1ºT)']	1	Ceará - CE	354	Paulo Roberto Alves Junior	AB
213	22	2019	Segunda 30 de Setembro de 2019	20:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Marcelo 15 (2ºT)']	[]	0	Botafogo - RJ	296	Andre Luiz de Freitas Castro	MTR
214	22	2019	Domingo 29 de Setembro de 2019	11:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Ralf 13 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Ricardo Marques Ribeiro	FIFA
215	22	2019	Domingo 29 de Setembro de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Carlos Sanchez 35 (1ºT)', ' Eduardo Sasha 11 (2ºT)']	[]	0	Csa - AL	341	Wagner do Nascimento Magalhaes	FIFA
216	22	2019	Sábado 28 de Setembro de 2019	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	[]	0	São Paulo - SP	276	Rafael Traci	AB
217	22	2019	Domingo 29 de Setembro de 2019	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Nenê 6 (1ºT)', ' Caio Henrique 4 (2ºT)']	['Patrick 30 (2ºT)']	1	Grêmio - RS	284	Caio Max Augusto Vieira	AB
218	22	2019	Segunda 30 de Setembro de 2019	20:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Elber 24 (1ºT) ', 'Nino Paraiba 26 (1ºT)']	2	Bahia - BA	265	Jean Pierre Goncalves Lima	AB
219	22	2019	Segunda 30 de Setembro de 2019	20:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Alan Ruschel 17 (2ºT)']	[]	0	Cruzeiro - MG	283	Gilberto Rodrigues Castro Junior	AB
220	22	2019	Domingo 29 de Setembro de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Nikao 11 (2ºT)']	['Arthur Gomes 31 (1ºT)']	1	Chapecoense - SC	315	Thiago Duarte Peixoto	AB
221	23	2019	Sábado 05 de Outubro de 2019	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Corinthians - SP	264	Bruno Arleu de Araujo	AB
222	23	2019	Sábado 05 de Outubro de 2019	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Fred 17 (2ºT)']	['Nonato 10 (1ºT)']	1	Internacional - RS	285	Wagner do Nascimento Magalhaes	FIFA
223	23	2019	Domingo 06 de Outubro de 2019	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Michael 26 (1ºT)']	1	Goiás - GO	290	José Mendonça da Silva Junior	AB
224	23	2019	Domingo 06 de Outubro de 2019	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Dudu 38 (2ºT)']	['Nathan 45+2 (1ºT)']	1	Atlético - MG	282	Rafael Traci	AB
225	23	2019	Sábado 05 de Outubro de 2019	17:00	Pacaembu - Sao Paulo - SP	276	São Paulo - SP	2	[' Pablo 15 (1ºT)', ' Igor Gomes 33 (2ºT)']	['Wellington Paulista 38 (1ºT)']	1	Fortaleza - CE	356	Diego Pombo Lopez	AB
226	23	2019	Sábado 05 de Outubro de 2019	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Tailson 4 (2ºT)']	1	Santos - SP	277	Savio Pereira Sampaio	AB
227	23	2019	Domingo 06 de Outubro de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Yony Gonzalez 34 (1ºT)']	1	Fluminense - RJ	266	Rodolpho Toski Marques	FIFA
228	23	2019	Domingo 06 de Outubro de 2019	11:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Bruno Henrique 35 (1ºT)']	1	Flamengo - RJ	262	Vinicius Gonçalves Dias Araujo	AB
229	23	2019	Sábado 05 de Outubro de 2019	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Fernandao 31 (2ºT)']	['Marcelo Cirino 12 (2ºT) ', 'Cittadini 20 (2ºT)']	2	Athletico Paranaense - PR	293	Raphael Claus	FIFA
230	23	2019	Domingo 06 de Outubro de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	3	[' Ricardo Bueno 13 (1ºT)', ' Jonatan Gomez 25 (2ºT)', ' Apodi 45+4 (2ºT)']	['Jonathan 3 (2ºT)']	1	Avaí - SC	314	Anderson Daronco	FIFA
231	24	2019	Quarta 09 de Outubro de 2019	21:00	Centenário - Caxias do Sul - RS	284	Grêmio - RS	2	[' Geromel 34 (1ºT)', ' Maicon 41 (1ºT)']	['Fabinho 43 (1ºT)']	1	Ceará - CE	354	Edina Alves Batista	FIFA
232	24	2019	Quarta 09 de Outubro de 2019	21:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Fluminense - RJ	266	Jean Pierre Goncalves Lima	AB
233	24	2019	Quarta 09 de Outubro de 2019	20:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Wellington Paulista 4 (2ºT)', ' Wellington Paulista 35 (2ºT)']	[]	0	Chapecoense - SC	315	Rodrigo Carvalhaes de Miranda	AB
234	24	2019	Quinta 10 de Outubro de 2019	19:15	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	2	[' Gil 15 (1ºT)', ' Boselli 45+2 (1ºT)']	['Cittadini 23 (1ºT) ', 'Erick 32 (1ºT)']	2	Athletico Paranaense - PR	293	Andre Luiz de Freitas Castro	MTR
235	24	2019	Quarta 09 de Outubro de 2019	21:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Gustavo 13 (1ºT)', ' Marinho 17 (1ºT)']	[]	0	Palmeiras - SP	275	Flavio Rodrigues de Souza	AB
236	24	2019	Quinta 10 de Outubro de 2019	20:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Willian Arão 36 (1ºT)', ' Vitinho 15 (2ºT)', ' Reinier 30 (2ºT)']	['Nathan 5 (2ºT)']	1	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
237	24	2019	Quarta 09 de Outubro de 2019	19:15	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	3	[' Gabriel Costa Franca 31 (1ºT)', ' Joao Paulo 19 (2ºT)', ' Leo Valencia 35 (2ºT)']	['Marcelo 31 (2ºT)']	1	Goiás - GO	290	Rodrigo Dalonso Ferreira	AB
238	24	2019	Quinta 10 de Outubro de 2019	19:15	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Vasco da Gama - RJ	267	Paulo Roberto Alves Junior	AB
239	24	2019	Quarta 09 de Outubro de 2019	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	[]	0	São Paulo - SP	276	Braulio da Silva Machado	FIFA
240	24	2019	Quarta 09 de Outubro de 2019	19:15	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Jonatan Gomez 20 (2ºT)']	[]	0	Internacional - RS	285	Vinicius Furlan	AB
241	25	2019	Domingo 13 de Outubro de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	[]	0	Santos - SP	277	Bruno Arleu de Araujo	AB
271	28	2019	Domingo 27 de Outubro de 2019	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Maicon 11 (1ºT)', ' Thaciano 25 (2ºT)', ' Everton 35 (2ºT)']	[]	0	Botafogo - RJ	296	Rafael Traci	AB
242	25	2019	Domingo 13 de Outubro de 2019	19:00	Independência - Belo Horizonte - MG	282	Atlético - MG	1	[' Di Santo 45+4 (1ºT)']	['Galhardo 33 (1ºT) ', 'Maicon 43 (1ºT) ', 'Pepe 2 (2ºT) ', 'Alisson 45+4 (2ºT)']	4	Grêmio - RS	284	Luiz Flavio de Oliveira	FIFA
243	25	2019	Domingo 13 de Outubro de 2019	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Bergson 44 (2ºT)']	[]	0	Avaí - SC	314	Marcelo de Lima Henrique	MTR
244	25	2019	Sábado 12 de Outubro de 2019	21:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Thiago Santos 14 (1ºT)']	[]	0	Botafogo - RJ	296	Anderson Daronco	FIFA
245	25	2019	Domingo 13 de Outubro de 2019	18:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Reinaldo 20 (2ºT)']	[]	0	Corinthians - SP	264	Raphael Claus	FIFA
246	25	2019	Domingo 13 de Outubro de 2019	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Yago 22 (2ºT)']	[]	0	Fortaleza - CE	356	Daniel Nobre Bins	AB
247	25	2019	Sábado 12 de Outubro de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Nenê 20 (1ºT)', ' Daniel 44 (1ºT)']	[]	0	Bahia - BA	265	Heber Roberto Lopes	MTR
248	25	2019	Domingo 13 de Outubro de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Camilo 45+4 (2ºT)']	['Dedé 3 (1ºT)']	1	Cruzeiro - MG	283	Caio Max Augusto Vieira	AB
249	25	2019	Sábado 12 de Outubro de 2019	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Michael 44 (1ºT)']	[]	0	Csa - AL	341	Felipe Fernandes de Lima	AB
250	25	2019	Domingo 13 de Outubro de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Bruno Henrique 45 (1ºT) ', 'Bruno Henrique 45+1 (2ºT)']	2	Flamengo - RJ	262	Braulio da Silva Machado	FIFA
251	26	2019	Quarta 16 de Outubro de 2019	19:15	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Arthur Caike 45 (2ºT)']	1	Bahia - BA	265	Rodolpho Toski Marques	FIFA
252	26	2019	Quarta 16 de Outubro de 2019	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Thiago Neves 13 (2ºT)']	[]	0	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
253	26	2019	Quarta 16 de Outubro de 2019	20:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Bruno 16 (2ºT)']	['Gabriel Barbosa 35 (2ºT) ', 'Reinier 44 (2ºT)']	2	Flamengo - RJ	262	Paulo Roberto Alves Junior	AB
254	26	2019	Quarta 16 de Outubro de 2019	21:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Felipe Melo 45+9 (2ºT)']	[]	0	Chapecoense - SC	315	Vinicius Gomes do Amaral	AB
255	26	2019	Quinta 17 de Outubro de 2019	19:15	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Eduardo Sasha 10 (2ºT)', ' Gustavo 38 (2ºT)']	['Lima 17 (1ºT)']	1	Ceará - CE	354	Rafael Traci	AB
256	26	2019	Quarta 16 de Outubro de 2019	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Bruno Gomes 8 (1ºT)', ' Lucas Ribamar 18 (1ºT)']	['Marcelo 21 (1ºT)']	1	Botafogo - RJ	296	Flavio Rodrigues de Souza	AB
257	26	2019	Quinta 17 de Outubro de 2019	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Frazan 4 (1ºT)']	['Madson 45+2 (1ºT) ', 'Madson 26 (2ºT)']	2	Athletico Paranaense - PR	293	Rodrigo Dalonso Ferreira	AB
258	26	2019	Quinta 17 de Outubro de 2019	19:15	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Patrick 21 (1ºT) ', 'Sarrafiore 39 (2ºT)']	2	Internacional - RS	285	Thiago Duarte Peixoto	AB
259	26	2019	Quarta 16 de Outubro de 2019	21:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Michael 37 (1ºT)', ' Leandro Barcia 26 (2ºT)']	['Janderson 10 (1ºT) ', 'Gustavo 45+6 (2ºT)']	2	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
260	26	2019	Quarta 16 de Outubro de 2019	19:15	Rei Pelé - Maceio - AL	341	Csa - AL	2	[' Alecsandro 33 (1ºT)', ' Jonatan Gomez 44 (2ºT)']	['Rever 23 (2ºT) ', 'Luan 39 (2ºT)']	2	Atlético - MG	282	Savio Pereira Sampaio	AB
261	27	2019	Domingo 20 de Outubro de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	0	[]	['Marrony 7 (2ºT)']	1	Vasco da Gama - RJ	267	Vinicius Gonçalves Dias Araujo	AB
262	27	2019	Domingo 20 de Outubro de 2019	16:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Luan 2 (1ºT)', ' Leo Silva 22 (1ºT)']	[]	0	Santos - SP	277	Caio Max Augusto Vieira	AB
263	27	2019	Sábado 19 de Outubro de 2019	17:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Wellington Paulista 34 (1ºT)', ' Osvaldo 40 (1ºT)']	['P. Miranda 9 (1ºT)']	1	Grêmio - RS	284	Andre Luiz de Freitas Castro	MTR
264	27	2019	Sábado 19 de Outubro de 2019	19:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Fagner 33 (1ºT)']	['Fred 37 (1ºT) ', 'Ederson 26 (2ºT)']	2	Cruzeiro - MG	283	Bruno Arleu de Araujo	AB
265	27	2019	Domingo 20 de Outubro de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Arboleda 6 (2ºT)']	[]	0	Avaí - SC	314	Dewson Fernando Freitas da Silva	FIFA
266	27	2019	Domingo 20 de Outubro de 2019	18:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Bruno Henrique 3 (1ºT)', ' Gerson 21 (2ºT)']	[]	0	Fluminense - RJ	266	Anderson Daronco	FIFA
267	27	2019	Segunda 21 de Outubro de 2019	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Luciano Castan 15 (1ºT)', ' Igor Cassio 23 (2ºT)']	['Ricardo Bueno 21 (2ºT)']	1	Csa - AL	341	Leandro Pedro Vuaden	MTR
268	27	2019	Domingo 20 de Outubro de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	2	[' Everaldo 22 (1ºT)', ' H. Almeida 30 (1ºT)']	['Rafinha 3 (2ºT) ', 'Rafael Vaz 39 (2ºT)']	2	Goiás - GO	290	Gilberto Rodrigues Castro Junior	AB
269	27	2019	Segunda 21 de Outubro de 2019	19:30	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Artur 30 (2ºT)']	['Luiz 40 (2ºT) ', 'Luiz 45+3 (2ºT)']	2	Ceará - CE	354	Luiz Flavio de Oliveira	FIFA
270	27	2019	Domingo 20 de Outubro de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Marcelo Cirino 6 (1ºT)']	['Deyverson 40 (1ºT)']	1	Palmeiras - SP	275	Ricardo Marques Ribeiro	FIFA
272	28	2019	Sábado 26 de Outubro de 2019	21:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Orejuela 34 (2ºT)']	['Wellington Paulista 37 (2ºT)']	1	Fortaleza - CE	356	Raphael Claus	FIFA
273	28	2019	Sábado 26 de Outubro de 2019	17:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Bergson 36 (2ºT)']	['Rossi 18 (1ºT)']	1	Vasco da Gama - RJ	267	Jean Pierre Goncalves Lima	AB
274	28	2019	Sábado 26 de Outubro de 2019	17:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Santos - SP	277	Luiz Flavio de Oliveira	FIFA
275	28	2019	Domingo 27 de Outubro de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Igor Gomes 5 (2ºT)', ' Vitor Bueno 11 (2ºT)']	[]	0	Atlético - MG	282	Bruno Arleu de Araujo	AB
276	28	2019	Domingo 27 de Outubro de 2019	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' De Arrascaeta 8 (1ºT)']	[]	0	Csa - AL	341	Rodolpho Toski Marques	FIFA
277	28	2019	Sábado 26 de Outubro de 2019	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Marcos Paulo 6 (2ºT)']	['Everaldo 26 (1ºT)']	1	Chapecoense - SC	315	Savio Pereira Sampaio	AB
278	28	2019	Domingo 27 de Outubro de 2019	18:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' João Paulo 33 (2ºT)']	['Deyverson 8 (2ºT) ', 'Gustavo Scarpa 40 (2ºT)']	2	Palmeiras - SP	275	Wilton Pereira Sampaio	FIFA
279	28	2019	Sábado 26 de Outubro de 2019	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Artur 25 (2ºT)', ' Juninho 41 (2ºT)']	['Guerrero 4 (2ºT) ', 'G. Parede 7 (2ºT) ', 'Guerrero 29 (2ºT)']	3	Internacional - RS	285	Marcelo de Lima Henrique	MTR
280	28	2019	Domingo 27 de Outubro de 2019	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	4	[' Leo Pereira 3 (2ºT)', ' Rony 8 (2ºT)', ' Adriano 17 (2ºT)', ' Marco Ruben 45+3 (2ºT)']	['Rafael Moura 45 (1ºT)']	1	Goiás - GO	290	Flavio Rodrigues de Souza	AB
281	29	2019	Quinta 31 de Outubro de 2019	21:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Rodrigo 12 (1ºT)']	['Rony 22 (1ºT)']	1	Athletico Paranaense - PR	293	Andre Luiz de Freitas Castro	MTR
282	29	2019	Quarta 30 de Outubro de 2019	19:30	Independência - Belo Horizonte - MG	282	Atlético - MG	0	[]	['H. Almeida 5 (1ºT) ', 'Everaldo 5 (2ºT)']	2	Chapecoense - SC	315	Diego Pombo Lopez	AB
283	29	2019	Quarta 30 de Outubro de 2019	21:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Bergson 14 (1ºT)', ' Mateus Gonçalves 45+1 (2ºT)']	[]	0	Fluminense - RJ	266	Leandro Pedro Vuaden	MTR
284	29	2019	Quarta 30 de Outubro de 2019	19:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Bruno 11 (1ºT)', ' Felipe Melo 42 (1ºT)', ' Gustavo Scarpa 12 (2ºT)']	[]	0	São Paulo - SP	276	Raphael Claus	FIFA
285	29	2019	Quinta 31 de Outubro de 2019	19:15	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Carlos Sanchez 9 (2ºT)']	[]	0	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
286	29	2019	Quarta 30 de Outubro de 2019	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' FREDY GUARIN 9 (1ºT)']	['Pepe 33 (1ºT) ', 'Everton 8 (2ºT) ', 'Luciano 22 (2ºT)']	3	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
287	29	2019	Quinta 31 de Outubro de 2019	21:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Cacá 26 (1ºT) ', 'Ederson 45+6 (2ºT)']	2	Cruzeiro - MG	283	Caio Max Augusto Vieira	AB
288	29	2019	Quarta 30 de Outubro de 2019	19:30	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' Vinicius Araujo 5 (2ºT)']	['Paulão 23 (1ºT) ', 'Romarinho 8 (2ºT) ', 'Wellington Paulista 43 (2ºT)']	3	Fortaleza - CE	356	Marcelo Aparecido Ribeiro de Souza	AB
289	29	2019	Quinta 31 de Outubro de 2019	20:00	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Rafael Moura 31 (2ºT)', ' Michael 45+4 (2ºT)']	['Gabriel Barbosa 9 (2ºT) ', 'Rodrigo Caio 18 (2ºT)']	2	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
290	29	2019	Quarta 30 de Outubro de 2019	21:30	Rei Pelé - Maceio - AL	341	Csa - AL	2	[' Apodi 24 (1ºT)', ' Ricardo Bueno 34 (2ºT)']	['Pedrinho 45 (1ºT)']	1	Corinthians - SP	264	Rafael Traci	AB
291	30	2019	Domingo 03 de Novembro de 2019	18:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Geromel 33 (1ºT)', ' Romulo 33 (2ºT)']	[]	0	Internacional - RS	285	Flavio Rodrigues de Souza	AB
292	30	2019	Domingo 03 de Novembro de 2019	19:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	1	[' Sassa 28 (2ºT)']	['Fernandao 21 (2ºT)']	1	Bahia - BA	265	Wagner Reway	FIFA
293	30	2019	Sábado 02 de Novembro de 2019	17:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Gabriel 15 (1ºT)', ' Gabriel 28 (1ºT)']	['Patric 24 (1ºT) ', 'Fabio Santos 41 (2ºT)']	2	Atlético - MG	282	Rodolpho Toski Marques	FIFA
294	30	2019	Sábado 02 de Novembro de 2019	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Ze Rafael 17 (1ºT)']	[]	0	Ceará - CE	354	Felipe Fernandes de Lima	AB
295	30	2019	Domingo 03 de Novembro de 2019	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Eduardo Sasha 2 (1ºT)', ' Marinho 12 (1ºT)', ' Yeferson Soteldo 21 (2ºT)', ' Yeferson Soteldo 23 (2ºT)']	['Igor Cassio 33 (1ºT)']	1	Botafogo - RJ	296	Rodrigo Dalonso Ferreira	AB
296	30	2019	Domingo 03 de Novembro de 2019	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Bruno Henrique 45 (1ºT)', ' Bruno Henrique 45+2 (1ºT)', ' Bruno Henrique 1 (2ºT)', ' Vitinho 21 (2ºT)']	['Mateus 6 (2ºT)']	1	Corinthians - SP	264	Jean Pierre Goncalves Lima	AB
297	30	2019	Sábado 02 de Novembro de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Vasco da Gama - RJ	267	Raphael Claus	FIFA
298	30	2019	Sábado 02 de Novembro de 2019	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Bruno Alves 6 (1ºT) ', 'Vitor Bueno 24 (1ºT) ', 'Antony 34 (2ºT)']	3	São Paulo - SP	276	Anderson Daronco	FIFA
328	33	2019	Domingo 17 de Novembro de 2019	18:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	1	[' Everaldo 36 (2ºT)']	[]	0	Ceará - CE	354	Rodolpho Toski Marques	FIFA
299	30	2019	Domingo 03 de Novembro de 2019	19:30	Serra Dourada - Goiania - GO	290	Goiás - GO	2	[' Rafael Moura 45 (2ºT)', ' Thalles 45+3 (2ºT)']	[]	0	Avaí - SC	314	Vinicius Gonçalves Dias Araujo	AB
300	30	2019	Domingo 03 de Novembro de 2019	18:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Marcelo Cirino 36 (2ºT)']	[]	0	Csa - AL	341	Savio Pereira Sampaio	AB
301	31	2019	Quinta 07 de Novembro de 2019	21:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Diego Tardelli 7 (1ºT)', ' Ronaldo 45+3 (2ºT)']	['Rafinha 45 (2ºT)']	1	Csa - AL	341	José Mendonça da Silva Junior	AB
302	31	2019	Quarta 06 de Novembro de 2019	20:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Marquinhos 10 (2ºT)', ' Bruno 45+4 (2ºT)']	[]	0	Goiás - GO	290	Thiago Duarte Peixoto	AB
303	31	2019	Quinta 07 de Novembro de 2019	19:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Thiago Galhardo 41 (1ºT)', ' Mateus Gonçalves 42 (2ºT)']	[]	0	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
304	31	2019	Quarta 06 de Novembro de 2019	19:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Boselli 36 (1ºT)', ' Junior Urso 2 (2ºT)', ' Boselli 26 (2ºT)']	['Romarinho 33 (1ºT) ', 'Kieza 6 (2ºT)']	2	Fortaleza - CE	356	Caio Max Augusto Vieira	AB
305	31	2019	Quinta 07 de Novembro de 2019	19:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Digão 37 (1ºT) ', 'Marcos Paulo 39 (1ºT)']	2	Fluminense - RJ	266	Daniel Nobre Bins	AB
306	31	2019	Quarta 06 de Novembro de 2019	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Mayke 18 (1ºT)']	['Lucas Lima 11 (1ºT) ', 'Luiz Adriano 32 (2ºT)']	2	Palmeiras - SP	275	Rafael Traci	AB
307	31	2019	Quinta 07 de Novembro de 2019	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Lincoln 44 (2ºT)']	1	Flamengo - RJ	262	Leandro Pedro Vuaden	MTR
308	31	2019	Quarta 06 de Novembro de 2019	21:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' João Paulo 35 (1ºT)']	['Eduardo Sasha 8 (1ºT) ', 'Marinho 23 (1ºT)']	2	Santos - SP	277	Marcelo de Lima Henrique	MTR
309	31	2019	Quarta 06 de Novembro de 2019	21:30	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Marco Antonio 39 (2ºT)']	['H. Almeida 14 (1ºT)']	1	Chapecoense - SC	315	Vinicius Furlan	AB
310	31	2019	Quarta 06 de Novembro de 2019	21:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	[]	0	Cruzeiro - MG	283	Luiz Flavio de Oliveira	FIFA
311	32	2019	Domingo 10 de Novembro de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Pottker 35 (1ºT)', ' Pottker 40 (1ºT)']	['Wellington Nem 27 (2ºT)']	1	Fluminense - RJ	266	Rodolpho Toski Marques	FIFA
312	32	2019	Domingo 10 de Novembro de 2019	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Atlético - MG	282	Jean Pierre Goncalves Lima	AB
313	32	2019	Domingo 10 de Novembro de 2019	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Wellington Paulista 12 (1ºT)']	[]	0	Ceará - CE	354	Flavio Rodrigues de Souza	AB
314	32	2019	Sábado 09 de Novembro de 2019	19:00	Pacaembu - Sao Paulo - SP	275	Palmeiras - SP	1	[' Bruno 45+3 (2ºT)']	['Michel 45+2 (2ºT)']	1	Corinthians - SP	264	Vinicius Gonçalves Dias Araujo	AB
315	32	2019	Domingo 10 de Novembro de 2019	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	['Marcelo Cirino 44 (2ºT)']	1	Athletico Paranaense - PR	293	Wagner do Nascimento Magalhaes	FIFA
316	32	2019	Domingo 10 de Novembro de 2019	18:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Reinier 9 (2ºT)', ' Bruno Henrique 26 (2ºT)', ' Gabriel Barbosa 42 (2ºT)']	['Willian Arão 38 (1ºT)']	1	Bahia - BA	265	Caio Max Augusto Vieira	AB
317	32	2019	Segunda 11 de Novembro de 2019	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Ricardo 12 (1ºT)', ' Diego Souza 43 (2ºT)']	[]	0	Avaí - SC	314	Savio Pereira Sampaio	AB
318	32	2019	Domingo 10 de Novembro de 2019	19:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Luciano 2 (1ºT)']	1	Grêmio - RS	284	Marcelo de Lima Henrique	MTR
319	32	2019	Sábado 09 de Novembro de 2019	17:00	Serra Dourada - Goiania - GO	290	Goiás - GO	0	[]	['Yeferson Soteldo 24 (1ºT) ', 'Marinho 15 (2ºT) ', 'Yeferson Soteldo 27 (2ºT)']	3	Santos - SP	277	Bruno Arleu de Araujo	AB
320	32	2019	Domingo 10 de Novembro de 2019	19:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	['Raul 25 (1ºT) ', 'Henriquez 21 (2ºT) ', 'Carlinhos 36 (2ºT)']	3	Vasco da Gama - RJ	267	Rodrigo Dalonso Ferreira	AB
321	33	2019	Domingo 17 de Novembro de 2019	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	['Gabriel Barbosa 37 (1ºT)']	1	Flamengo - RJ	262	Raphael Claus	FIFA
322	33	2019	Segunda 18 de Novembro de 2019	20:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	[]	0	Avaí - SC	314	Diego Pombo Lopez	AB
323	33	2019	Domingo 17 de Novembro de 2019	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	3	[' Juninho 34 (1ºT)', ' Guilherme 3 (2ºT)', ' Paulão 8 (2ºT)']	[]	0	Csa - AL	341	Anderson Daronco	FIFA
324	33	2019	Domingo 17 de Novembro de 2019	18:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Internacional - RS	285	Marcelo de Lima Henrique	MTR
325	33	2019	Sábado 16 de Novembro de 2019	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Carlos Sanchez 7 (1ºT)']	['Dani Alves 9 (2ºT)']	1	São Paulo - SP	276	Flavio Rodrigues de Souza	AB
326	33	2019	Segunda 18 de Novembro de 2019	19:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' FREDY GUARIN 34 (1ºT)']	['Henriquez 45+6 (2ºT)']	1	Goiás - GO	290	Paulo Roberto Alves Junior	AB
327	33	2019	Sábado 16 de Novembro de 2019	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Patric 16 (1ºT)']	['Di Santo 43 (2ºT)']	1	Atlético - MG	282	Leandro Pedro Vuaden	MTR
329	33	2019	Domingo 17 de Novembro de 2019	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Arthur Caike 45+2 (1ºT)']	['Borja 25 (2ºT)']	1	Palmeiras - SP	275	Bruno Arleu de Araujo	AB
330	33	2019	Domingo 17 de Novembro de 2019	18:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Thonny Anderson 14 (2ºT)']	[]	0	Botafogo - RJ	296	Braulio da Silva Machado	FIFA
331	34	2019	Domingo 24 de Novembro de 2019	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Guerrero 42 (1ºT)', ' Guerrero 37 (2ºT)']	['Osvaldo 8 (1ºT) ', 'Guilherme 26 (2ºT)']	2	Fortaleza - CE	356	José Mendonça da Silva Junior	AB
332	34	2019	Domingo 24 de Novembro de 2019	16:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Vitinho 41 (2ºT)']	1	Athletico Paranaense - PR	293	Edina Alves Batista	FIFA
333	34	2019	Domingo 24 de Novembro de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Felipe 45+5 (2ºT)']	['Vitor Bueno 45+1 (1ºT)']	1	São Paulo - SP	276	Rafael Traci	AB
334	34	2019	Domingo 24 de Novembro de 2019	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Bruno 38 (2ºT)']	['Everton 24 (2ºT) ', 'Pepe 45+3 (2ºT)']	2	Grêmio - RS	284	Wilton Pereira Sampaio	FIFA
335	34	2019	Sábado 23 de Novembro de 2019	21:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Eduardo Sasha 23 (1ºT)', ' Marinho 14 (2ºT)', ' Yeferson Soteldo 19 (2ºT)', ' Diego 44 (2ºT)']	['Orejuela 13 (1ºT)']	1	Cruzeiro - MG	283	Leandro Pedro Vuaden	MTR
336	34	2019	Quarta 13 de Novembro de 2019	21:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Everton Ribeiro 1 (1ºT)', ' Danilo Barcelos 45+4 (1ºT)', ' Bruno Henrique 20 (2ºT)', ' Bruno Henrique 35 (2ºT)']	['Marrony 33 (1ºT) ', 'Yago 37 (1ºT) ', 'Marcos Junior 7 (2ºT) ', 'Lucas Ribamar 45+3 (2ºT)']	4	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
337	34	2019	Domingo 24 de Novembro de 2019	18:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Diego Souza 18 (1ºT)']	[]	0	Corinthians - SP	264	Andre Luiz de Freitas Castro	MTR
338	34	2019	Domingo 24 de Novembro de 2019	19:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	['Everaldo 32 (2ºT)']	1	Chapecoense - SC	315	Raphael Claus	FIFA
339	34	2019	Domingo 24 de Novembro de 2019	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	4	[' Rafael Moura 8 (1ºT)', ' Michael 11 (1ºT)', ' Gilberto Jr. 25 (2ºT)', ' Marlone 33 (2ºT)']	['Gilberto 13 (2ºT) ', 'Joao Pedro 31 (2ºT) ', 'Fernandao 45 (2ºT)']	3	Bahia - BA	265	Ricardo Marques Ribeiro	FIFA
340	34	2019	Segunda 25 de Novembro de 2019	20:00	Rei Pelé - Maceio - AL	341	Csa - AL	0	[]	['Yony Gonzalez 4 (2ºT)']	1	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
341	35	2019	Quarta 27 de Novembro de 2019	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Guerrero 32 (2ºT)']	['Rafael Moura 14 (1ºT) ', 'Michael 26 (2ºT)']	2	Goiás - GO	290	Caio Max Augusto Vieira	AB
342	35	2019	Quinta 28 de Novembro de 2019	21:30	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Alan Costa 43 (1ºT)']	1	Csa - AL	341	Vinicius Gonçalves Dias Araujo	AB
343	35	2019	Quinta 28 de Novembro de 2019	20:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Edinho 4 (2ºT)', ' Osvaldo 19 (2ºT)']	['Carlos Sanchez 23 (2ºT)']	1	Santos - SP	277	Diego Pombo Lopez	AB
344	35	2019	Quarta 27 de Novembro de 2019	21:30	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	3	[' Gustavo 21 (1ºT)', ' Junior Urso 6 (2ºT)', ' Boselli 41 (2ºT)']	[]	0	Avaí - SC	314	Wagner do Nascimento Magalhaes	FIFA
345	35	2019	Quinta 28 de Novembro de 2019	20:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Antony 5 (1ºT)']	[]	0	Vasco da Gama - RJ	267	Savio Pereira Sampaio	AB
346	35	2019	Quarta 27 de Novembro de 2019	21:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Bruno Henrique 19 (2ºT)', ' Bruno Henrique 28 (2ºT)', ' Bruno Henrique 40 (2ºT)', ' Vitinho 45+1 (2ºT)']	['Thiago Galhardo 24 (1ºT)']	1	Ceará - CE	354	Paulo Roberto Alves Junior	AB
347	35	2019	Quinta 28 de Novembro de 2019	19:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Marcos Paulo 37 (1ºT)']	[]	0	Palmeiras - SP	275	Leandro Pedro Vuaden	MTR
348	35	2019	Quarta 27 de Novembro de 2019	19:30	Arena Condá - Chapeco - SC	315	Chapecoense - SC	0	[]	['Rhuan da Silveira Castro 8 (2ºT)']	1	Botafogo - RJ	296	Anderson Daronco	FIFA
349	35	2019	Quarta 27 de Novembro de 2019	21:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Elber 18 (2ºT)']	['Cazares 8 (2ºT)']	1	Atlético - MG	282	Thiago Duarte Peixoto	AB
350	35	2019	Quarta 27 de Novembro de 2019	21:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Marcio Azevedo 33 (1ºT)', ' Nikao 18 (2ºT)']	[]	0	Grêmio - RS	284	Bruno Arleu de Araujo	AB
351	36	2019	Domingo 01 de Dezembro de 2019	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Luciano 10 (2ºT)', ' Alisson 13 (2ºT)', ' Luciano 16 (2ºT)']	[]	0	São Paulo - SP	276	Marcelo de Lima Henrique	MTR
352	36	2019	Domingo 01 de Dezembro de 2019	18:00	Independência - Belo Horizonte - MG	282	Atlético - MG	2	[' Cazares 18 (1ºT)', ' Fabio Santos 28 (2ºT)']	['Janderson 20 (1ºT)']	1	Corinthians - SP	264	Paulo Roberto Alves Junior	AB
353	36	2019	Sábado 30 de Novembro de 2019	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Mateus Gonçalves 43 (2ºT)']	['Madson 45+3 (2ºT)']	1	Athletico Paranaense - PR	293	Marcelo Aparecido Ribeiro de Souza	AB
354	36	2019	Domingo 01 de Dezembro de 2019	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Matheus Fernandes 38 (2ºT)']	['De Arrascaeta 4 (1ºT) ', 'Gabriel Barbosa 45 (1ºT) ', 'Gabriel Barbosa 1 (2ºT)']	3	Flamengo - RJ	262	Ricardo Marques Ribeiro	FIFA
355	36	2019	Domingo 01 de Dezembro de 2019	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Lucas Veríssimo 7 (1ºT)', ' Evandro 4 (2ºT)']	[]	0	Chapecoense - SC	315	Marielson Alves Silva	AB
356	36	2019	Segunda 02 de Dezembro de 2019	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' FREDY GUARIN 10 (1ºT)']	[]	0	Cruzeiro - MG	283	Wilton Pereira Sampaio	FIFA
357	36	2019	Sábado 30 de Novembro de 2019	19:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Guerrero 38 (2ºT)']	1	Internacional - RS	285	Rodolpho Toski Marques	FIFA
358	36	2019	Domingo 01 de Dezembro de 2019	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	1	[' João Paulo 45+2 (2ºT)']	['Marcos Paulo 35 (1ºT)']	1	Fluminense - RJ	266	Daniel Nobre Bins	AB
359	36	2019	Domingo 01 de Dezembro de 2019	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	1	[' Rafael Moura 43 (1ºT)']	['Bruno 15 (1ºT) ', 'Osvaldo 25 (1ºT)']	2	Fortaleza - CE	356	Dewson Fernando Freitas da Silva	FIFA
360	36	2019	Domingo 01 de Dezembro de 2019	18:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Nilton 9 (2ºT)']	['Gilberto 32 (1ºT) ', 'Arthur Caike 40 (2ºT)']	2	Bahia - BA	265	Vinicius Furlan	AB
361	37	2019	Quinta 05 de Dezembro de 2019	19:15	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Ferreira 21 (2ºT)', ' Pepe 40 (2ºT)']	[]	0	Cruzeiro - MG	283	Andre Luiz de Freitas Castro	MTR
362	37	2019	Quarta 04 de Dezembro de 2019	19:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Jair 40 (1ºT)', ' Luan 23 (2ºT)']	[]	0	Botafogo - RJ	296	Leandro Pedro Vuaden	MTR
363	37	2019	Quarta 04 de Dezembro de 2019	19:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Gustavo 36 (2ºT)']	1	Corinthians - SP	264	Rafael Traci	AB
364	37	2019	Quinta 05 de Dezembro de 2019	19:15	Brinco de Ouro - Campinas - SP	275	Palmeiras - SP	5	[' Ze Rafael 21 (1ºT)', ' Dudu 33 (1ºT)', ' Gabriel Veron 24 (2ºT)', ' Dudu 37 (2ºT)', ' Gabriel Veron 44 (2ºT)']	['Rafael Moura 26 (1ºT)']	1	Goiás - GO	290	Bruno Arleu de Araujo	AB
365	37	2019	Quarta 04 de Dezembro de 2019	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Antony 15 (1ºT)', ' Vitor Bueno 4 (2ºT)']	['G. Parede 24 (2ºT)']	1	Internacional - RS	285	Braulio da Silva Machado	FIFA
366	37	2019	Quinta 05 de Dezembro de 2019	20:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	6	[' De Arrascaeta 11 (1ºT)', ' Diego 36 (1ºT)', ' Gabriel Barbosa 39 (1ºT)', ' Lincoln 11 (2ºT)', ' Reinier 38 (2ºT)', ' Reinier 43 (2ºT)']	['Lourenço 21 (1ºT)']	1	Avaí - SC	314	Jefferson Ferreira de Moraes	AB
367	37	2019	Quarta 04 de Dezembro de 2019	21:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Fortaleza - CE	356	Raphael Claus	FIFA
368	37	2019	Quarta 04 de Dezembro de 2019	21:00	Arena Condá - Chapeco - SC	315	Chapecoense - SC	3	[' Gustavo 1 (1ºT)', ' Arthur Gomes 13 (2ºT)', ' Mauricio 34 (2ºT)']	[]	0	Csa - AL	341	Alexandre Vargas Tavares de Jesus	AB
369	37	2019	Quinta 05 de Dezembro de 2019	19:15	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Gilberto 45 (1ºT)']	['Marrony 39 (2ºT)']	1	Vasco da Gama - RJ	267	Felipe Fernandes de Lima	AB
370	37	2019	Quarta 04 de Dezembro de 2019	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Marco Ruben 1 (2ºT)']	[]	0	Santos - SP	277	Anderson Daronco	FIFA
371	38	2019	Domingo 08 de Dezembro de 2019	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[]	[]	1	Atlético - MG	282	Savio Pereira Sampaio	AB
372	38	2019	Domingo 08 de Dezembro de 2019	16:00	Mineirão - Belo Horizonte - MG	283	Cruzeiro - MG	0	[]	['Ze Rafael 12 (2ºT) ', 'Dudu 38 (2ºT)']	2	Palmeiras - SP	275	Marcelo de Lima Henrique	MTR
373	38	2019	Domingo 08 de Dezembro de 2019	16:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' Osvaldo 12 (1ºT)', ' Guilherme 32 (2ºT)']	['Artur 33 (1ºT)']	1	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
374	38	2019	Domingo 08 de Dezembro de 2019	16:00	Arena Corinthians - Sao Paulo - SP	264	Corinthians - SP	1	[' Gustavo 17 (2ºT)']	['Evanilson 7 (1ºT) ', 'Evanilson 29 (1ºT)']	2	Fluminense - RJ	266	Rodrigo Dalonso Ferreira	AB
375	38	2019	Domingo 08 de Dezembro de 2019	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Marinho 14 (1ºT)', ' Carlos Sanchez 23 (1ºT)', ' Eduardo Sasha 18 (2ºT)', ' Carlos Sanchez 39 (2ºT)']	[]	0	Flamengo - RJ	262	Paulo Roberto Alves Junior	AB
376	38	2019	Domingo 08 de Dezembro de 2019	16:00	Maracanã - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Yago 38 (2ºT)']	['Vinicius 45+3 (2ºT)']	1	Chapecoense - SC	315	Pablo Ramon Goncalves Pinheiro	AB
377	38	2019	Domingo 08 de Dezembro de 2019	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Marcos Vinicius 38 (1ºT)']	['Thiago Galhardo 20 (2ºT)']	1	Ceará - CE	354	Luiz Flavio de Oliveira	FIFA
378	38	2019	Domingo 08 de Dezembro de 2019	16:00	Ressacada - Florianopolis - SC	314	Avaí - SC	0	[]	[]	0	Athletico Paranaense - PR	293	Dyorgines Jose Padovani de Andrade	AB
379	38	2019	Domingo 08 de Dezembro de 2019	16:00	Serra Dourada - Goiania - GO	290	Goiás - GO	3	[' Rafael Moura 4 (1ºT)', ' Rafael Moura 44 (1ºT)', ' Yago Felipe 19 (2ºT)']	['Patrick 23 (1ºT) ', 'Isaque 36 (1ºT)']	2	Grêmio - RS	284	Ricardo Marques Ribeiro	FIFA
380	38	2019	Domingo 08 de Dezembro de 2019	16:00	Rei Pelé - Maceio - AL	341	Csa - AL	1	[' Jarro 43 (1ºT)']	['Jonas Toró 10 (1ºT) ', 'Igor 13 (1ºT)']	2	São Paulo - SP	276	Alisson Sidnei Furtado	AB
1	1	2020	Domingo 09 de Agosto de 2020	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	0	[]	['Filipe Luís 23 (1ºT)']	1	Atlético - MG	282	Raphael Claus	FIFA
2	1	2020	Quarta 30 de Setembro de 2020	21:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Pedro Raul 45+1 (2ºT)']	['Gilberto 42 (1ºT) ', 'Elber 39 (2ºT)']	2	Bahia - BA	265	Savio Pereira Sampaio	AB
3	1	2020	Terça 26 de Janeiro de 2021	20:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Breno 30 (1ºT)']	['Martin Benitez 35 (1ºT)']	1	Vasco da Gama - RJ	267	Anderson Daronco	FIFA
4	1	2020	Domingo 09 de Agosto de 2020	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Marinho 19 (2ºT)']	['Claudinho 45+2 (2ºT)']	1	Red Bull Bragantino - SP	280	Ricardo Marques Ribeiro	MTR
5	1	2020	Quarta 30 de Setembro de 2020	21:30	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Atlético - GO	373	Paulo Roberto Alves Junior	AB
6	1	2020	Domingo 09 de Agosto de 2020	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Diego Souza 44 (1ºT)']	[]	0	Fluminense - RJ	266	Wilton Pereira Sampaio	FIFA
7	1	2020	Sábado 08 de Agosto de 2020	21:00	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Elton 20 (1ºT)', ' Elton 33 (1ºT)', ' Jonatan Gomez 42 (1ºT)']	['CLEBER 35 (1ºT) ', 'Jacare 11 (2ºT)']	2	Ceará - CE	354	Edina Alves Batista	FIFA
8	1	2020	Sábado 08 de Agosto de 2020	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Guerrero 26 (2ºT)']	1	Internacional - RS	285	Bruno Arleu de Araujo	FIFA
9	1	2020	Sábado 08 de Agosto de 2020	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Vitinho 21 (1ºT) ', 'Cittadini 45+2 (1ºT)']	2	Athletico Paranaense - PR	293	Braulio da Silva Machado	FIFA
10	1	2020	Quinta 03 de Dezembro de 2020	19:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	0	[]	['Igor Gomes 19 (1ºT) ', 'Brenner 3 (2ºT) ', 'Hernanes 37 (2ºT)']	3	São Paulo - SP	276	Caio Max Augusto Vieira	AB
11	2	2020	Quarta 12 de Agosto de 2020	21:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Evanilson 39 (1ºT)']	['Luiz Adriano 14 (1ºT)']	1	Palmeiras - SP	275	Rafael Traci	FIFA
12	2	2020	Quinta 13 de Agosto de 2020	20:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' Fellipe 8 (1ºT)', ' Fellipe 32 (1ºT)']	[]	0	Sport - PE	292	Rodolpho Toski Marques	FIFA
13	2	2020	Quinta 13 de Agosto de 2020	19:15	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Dani Alves 42 (1ºT)']	[]	0	Fortaleza - CE	356	Leandro Pedro Vuaden	MTR
14	2	2020	Quarta 12 de Agosto de 2020	19:15	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	1	[' Alerrandro 6 (1ºT)']	['Matheus Babi 19 (2ºT)']	1	Botafogo - RJ	296	Andre Luiz de Freitas Castro	MTR
15	2	2020	Quarta 12 de Agosto de 2020	19:15	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Hyoran 7 (2ºT)', ' Hyoran 11 (2ºT)', ' Nathan 16 (2ºT)']	['Jo 12 (1ºT) ', 'Angelo Araos 29 (1ºT)']	2	Corinthians - SP	264	Wagner do Nascimento Magalhaes	FIFA
16	2	2020	Quinta 13 de Agosto de 2020	19:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Guerrero 11 (2ºT)', ' Edenilson 42 (2ºT)']	[]	0	Santos - SP	277	Marcelo de Lima Henrique	MTR
17	2	2020	Quarta 12 de Agosto de 2020	20:30	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Rodriguinho 39 (1ºT)']	[]	0	Coritiba - PR	294	Flavio Rodrigues de Souza	FIFA
18	2	2020	Quarta 12 de Agosto de 2020	19:15	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Vitinho 31 (1ºT)', ' Carlos Eduardo 30 (2ºT)']	['Bessa 45+12 (1ºT)']	1	Goiás - GO	290	Diego Pombo Lopez	AB
19	2	2020	Quarta 12 de Agosto de 2020	21:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' CLEBER 43 (1ºT)']	['Thaciano 26 (2ºT)']	1	Grêmio - RS	284	Caio Max Augusto Vieira	AB
20	2	2020	Quarta 12 de Agosto de 2020	20:30	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	3	[' Hyuri 14 (1ºT)', ' Jorginho 31 (1ºT)', ' Gustavo Ferrareis 16 (2ºT)']	[]	0	Flamengo - RJ	262	Luiz Flavio de Oliveira	FIFA
21	3	2020	Domingo 16 de Agosto de 2020	18:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Nenê 38 (1ºT)', ' Nenê 31 (2ºT)']	['Guerrero 27 (1ºT)']	1	Internacional - RS	285	Raphael Claus	FIFA
22	3	2020	Domingo 16 de Agosto de 2020	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	2	[' German Cano 17 (2ºT)', ' German Cano 29 (2ºT)']	['Reinaldo 45+6 (2ºT)']	1	São Paulo - SP	276	Wilton Pereira Sampaio	FIFA
23	3	2020	Sábado 15 de Agosto de 2020	21:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' GUSTAVO GOMEZ 17 (1ºT)']	['Rafael Vaz 39 (1ºT)']	1	Goiás - GO	290	Paulo Roberto Alves Junior	AB
24	3	2020	Domingo 16 de Agosto de 2020	19:45	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Yeferson Soteldo 28 (1ºT)', ' Felipe 41 (1ºT)', ' Marinho 37 (2ºT)']	['Abner 43 (2ºT)']	1	Athletico Paranaense - PR	293	Anderson Daronco	FIFA
25	3	2020	Domingo 16 de Agosto de 2020	11:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Marrony 27 (2ºT)', ' Marrony 45+1 (2ºT)']	[]	0	Ceará - CE	354	Savio Pereira Sampaio	AB
26	3	2020	Sábado 15 de Agosto de 2020	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	0	[]	[]	0	Corinthians - SP	264	Bruno Arleu de Araujo	FIFA
27	3	2020	Domingo 16 de Agosto de 2020	16:00	Pituaçu - Salvador - BA	265	Bahia - BA	2	[' Juninho 25 (2ºT)', ' Ernando 45+2 (2ºT)']	['Ortiz 32 (2ºT)']	1	Red Bull Bragantino - SP	280	Felipe Fernandes de Lima	AB
28	3	2020	Sábado 15 de Agosto de 2020	19:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['De Arrascaeta 28 (1ºT)']	1	Flamengo - RJ	262	Rodrigo Dalonso Ferreira	AB
29	3	2020	Domingo 16 de Agosto de 2020	19:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	[]	0	Botafogo - RJ	296	Marielson Alves Silva	AB
30	3	2020	Domingo 16 de Agosto de 2020	19:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Jorginho 13 (1ºT)']	['Iago 45+3 (2ºT)']	1	Sport - PE	292	Grazianni Maciel Rocha	AB
31	4	2020	Quarta 19 de Agosto de 2020	19:15	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Gabriel Barbosa 43 (2ºT)']	['Pepe 44 (1ºT)']	1	Grêmio - RS	284	Rafael Traci	FIFA
32	4	2020	Quarta 19 de Agosto de 2020	21:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Luiz Fernando 26 (1ºT)', ' Caio 42 (2ºT)']	['Igor 45+6 (2ºT)']	1	Atlético - MG	282	Flavio Rodrigues de Souza	FIFA
33	4	2020	Quinta 20 de Agosto de 2020	20:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luciano 40 (2ºT)']	['Rossi 21 (1ºT)']	1	Bahia - BA	265	Rodrigo Carvalhaes de Miranda	AB
34	4	2020	Quarta 19 de Agosto de 2020	19:15	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	2	[' Alerrandro 1 (1ºT)', ' Luis Phelipe 37 (2ºT)']	['Nenê 2 (1ºT)']	1	Fluminense - RJ	266	Jean Pierre Goncalves Lima	AB
35	4	2020	Quarta 19 de Agosto de 2020	21:30	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	3	[' Leo 37 (1ºT)', ' Jo 3 (2ºT)', ' Mosquito 41 (2ºT)']	['Sassa 41 (1ºT)']	1	Coritiba - PR	294	Braulio da Silva Machado	FIFA
36	4	2020	Quarta 19 de Agosto de 2020	20:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	3	[' MUSTO 6 (2ºT)', ' Thiago Galhardo 23 (2ºT)', ' Thiago Galhardo 44 (2ºT)']	[]	0	Atlético - GO	373	Wagner Reway	MTR
37	4	2020	Quinta 20 de Agosto de 2020	19:15	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Marinho 30 (2ºT)']	1	Santos - SP	277	José Mendonça da Silva Junior	AB
38	4	2020	Quarta 19 de Agosto de 2020	19:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Raphael Veiga 45+1 (2ºT)']	1	Palmeiras - SP	275	Caio Max Augusto Vieira	AB
39	4	2020	Quinta 20 de Agosto de 2020	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['German Cano 23 (2ºT) ', 'Fellipe 32 (2ºT) ', 'Lucas Ribamar 45+3 (2ºT)']	3	Vasco da Gama - RJ	267	Thiago Duarte Peixoto	AB
40	4	2020	Quarta 19 de Agosto de 2020	20:30	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Jefferson Junio 34 (2ºT)']	['Wellington Paulista 8 (1ºT) ', 'Bruno 14 (2ºT) ', 'Yuri Cesar 24 (2ºT)']	3	Fortaleza - CE	356	Dyorgines Jose Padovani de Andrade	AB
41	5	2020	Domingo 23 de Agosto de 2020	11:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Gabriel Barbosa 45+6 (2ºT)']	['Pedro Raul 45+3 (2ºT)']	1	Botafogo - RJ	296	Leandro Pedro Vuaden	MTR
42	5	2020	Domingo 23 de Agosto de 2020	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Grêmio - RS	284	Savio Pereira Sampaio	AB
43	5	2020	Domingo 23 de Agosto de 2020	16:00	Morumbi - Sao Paulo - SP	275	Palmeiras - SP	2	[' Luiz Adriano 45 (1ºT)', ' Patrick de Paula 27 (2ºT)']	['Ramires 2 (2ºT)']	1	Santos - SP	277	Vinicius Gonçalves Dias Araujo	AB
44	5	2020	Domingo 23 de Agosto de 2020	16:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	1	[' Alerrandro 44 (1ºT)']	['Sabino 45+2 (1ºT) ', 'Robson 7 (2ºT)']	2	Coritiba - PR	294	Gilberto Rodrigues Castro Junior	AB
45	5	2020	Quarta 26 de Agosto de 2020	21:30	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Luan 30 (2ºT)']	['Romarinho 17 (2ºT)']	1	Fortaleza - CE	356	Rodolpho Toski Marques	FIFA
46	5	2020	Sábado 22 de Agosto de 2020	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Thiago Galhardo 7 (1ºT)']	[]	0	Atlético - MG	282	Luiz Flavio de Oliveira	FIFA
47	5	2020	Domingo 23 de Agosto de 2020	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Pablo 5 (1ºT)']	1	São Paulo - SP	276	Rodrigo Dalonso Ferreira	AB
48	5	2020	Sábado 22 de Agosto de 2020	16:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Felipe Aguilar 45+3 (1ºT)']	1	Fluminense - RJ	266	Daniel Nobre Bins	AB
49	5	2020	Domingo 23 de Agosto de 2020	20:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' CLEBER 11 (1ºT)', ' Mateus Gonçalves 30 (2ºT)']	[]	0	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
50	5	2020	Sábado 22 de Agosto de 2020	21:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	2	[' Bessa 21 (1ºT)', ' Victor Andrade 45+4 (2ºT)']	[]	0	Atlético - GO	373	Wilton Pereira Sampaio	FIFA
51	6	2020	Sábado 29 de Agosto de 2020	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Dodi 3 (1ºT)', ' Fred 35 (2ºT)']	['Talles Magno 40 (2ºT)']	1	Vasco da Gama - RJ	267	Braulio da Silva Machado	FIFA
52	6	2020	Sábado 29 de Agosto de 2020	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Thiago Galhardo 5 (1ºT) ', 'Gabriel 28 (1ºT)']	2	Internacional - RS	285	Thiago Duarte Peixoto	AB
53	6	2020	Domingo 30 de Agosto de 2020	11:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Hernanes 13 (1ºT)', ' Brenner 45+2 (2ºT)']	['Ramiro 35 (1ºT)']	1	Corinthians - SP	264	Flavio Rodrigues de Souza	FIFA
54	6	2020	Domingo 30 de Agosto de 2020	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Gabriel Barbosa 45+5 (1ºT)']	1	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
55	6	2020	Quarta 18 de Novembro de 2020	19:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	['Christian 34 (1ºT) ', 'Nikao 45 (1ºT)']	2	Athletico Paranaense - PR	293	Dyorgines Jose Padovani de Andrade	AB
56	6	2020	Segunda 30 de Novembro de 2020	18:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Jean Pyerre 18 (1ºT)', ' Maicon 21 (2ºT)']	['Joao Marcos 24 (2ºT)']	1	Goiás - GO	290	Savio Pereira Sampaio	AB
57	6	2020	Sábado 29 de Agosto de 2020	19:00	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Marco Antonio 45+5 (2ºT)']	['Ze Rafael 32 (2ºT)']	1	Palmeiras - SP	275	Bruno Arleu de Araujo	FIFA
58	6	2020	Domingo 30 de Agosto de 2020	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Sabino 45+4 (2ºT)']	[]	0	Sport - PE	292	Raphael Claus	FIFA
59	6	2020	Sábado 29 de Agosto de 2020	21:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	3	[' Wellington Paulista 38 (1ºT)', ' Romarinho 14 (2ºT)', ' Wellington Paulista 41 (2ºT)']	[]	0	Red Bull Bragantino - SP	280	Rafael Traci	FIFA
60	6	2020	Domingo 30 de Agosto de 2020	18:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	0	[]	['Vinicius 19 (2ºT) ', 'Lima 45+6 (2ºT)']	2	Ceará - CE	354	Igor Junio Benevenuto de Oliveira	AB
61	7	2020	Quarta 02 de Setembro de 2020	19:15	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Evanilson 6 (1ºT)']	['Renato Kayzer 33 (2ºT)']	1	Atlético - GO	373	Marielson Alves Silva	AB
62	7	2020	Quarta 02 de Setembro de 2020	20:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Coritiba - PR	294	Felipe Fernandes de Lima	AB
63	7	2020	Quarta 02 de Setembro de 2020	21:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Luiz Adriano 45+3 (2ºT)']	['Thiago Galhardo 45+1 (2ºT)']	1	Internacional - RS	285	Wilton Pereira Sampaio	FIFA
64	7	2020	Quarta 02 de Setembro de 2020	21:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Lucas Veríssimo 21 (1ºT)', ' Marinho 13 (2ºT)']	['Fellipe 41 (1ºT) ', 'German Cano 27 (2ºT)']	2	Vasco da Gama - RJ	267	Rodrigo Dalonso Ferreira	AB
65	7	2020	Quinta 03 de Setembro de 2020	20:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Alan Franco 34 (1ºT)', ' Alan Franco 43 (1ºT)', ' Jair 13 (2ºT)']	[]	0	São Paulo - SP	276	Jean Pierre Goncalves Lima	AB
66	7	2020	Quinta 03 de Setembro de 2020	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Pepe 32 (2ºT)']	['Patric 5 (1ºT) ', 'Iago 28 (2ºT)']	2	Sport - PE	292	Dyorgines Jose Padovani de Andrade	AB
67	7	2020	Quarta 02 de Setembro de 2020	20:30	Pituaçu - Salvador - BA	265	Bahia - BA	3	[' Rodriguinho 31 (1ºT)', ' Elber 41 (1ºT)', ' Daniel 44 (2ºT)']	['Pedro 1 (1ºT) ', 'Pedro 15 (1ºT) ', 'De Arrascaeta 36 (1ºT) ', 'Everton Ribeiro 3 (2ºT) ', 'De Arrascaeta 6 (2ºT)']	5	Flamengo - RJ	262	Savio Pereira Sampaio	AB
68	7	2020	Quarta 02 de Setembro de 2020	20:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Geuvanio 17 (1ºT)']	['Claudinho 28 (1ºT)']	1	Red Bull Bragantino - SP	280	Wagner do Nascimento Magalhaes	FIFA
69	7	2020	Quarta 02 de Setembro de 2020	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Vinicius 45 (1ºT)']	[]	0	Fortaleza - CE	356	Luiz Flavio de Oliveira	FIFA
70	7	2020	Quarta 02 de Setembro de 2020	19:15	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Vinicius Lopes 20 (2ºT)']	['Fabio Sanches 27 (1ºT) ', 'Danilo 45 (2ºT)']	2	Corinthians - SP	264	José Mendonça da Silva Junior	AB
71	8	2020	Sábado 05 de Setembro de 2020	17:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Everton Ribeiro 5 (1ºT)', ' Gabriel Barbosa 42 (2ºT)']	['Juninho 13 (1ºT)']	1	Fortaleza - CE	356	Flavio Rodrigues de Souza	FIFA
72	8	2020	Domingo 06 de Setembro de 2020	18:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' German Cano 7 (1ºT)']	[]	0	Athletico Paranaense - PR	293	Raphael Claus	FIFA
73	8	2020	Domingo 06 de Setembro de 2020	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Brenner 4 (2ºT)', ' Luciano 8 (2ºT)', ' Vitor Bueno 45+1 (2ºT)']	['Wellington Silva 39 (1ºT)']	1	Fluminense - RJ	266	Paulo Roberto Alves Junior	AB
74	8	2020	Domingo 06 de Setembro de 2020	11:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	1	[' Claudinho 9 (2ºT)']	['Gabriel Veron 23 (2ºT) ', 'Willian 45+3 (2ºT)']	2	Palmeiras - SP	275	Rodrigo Carvalhaes de Miranda	AB
75	8	2020	Sábado 05 de Setembro de 2020	19:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	2	[' Fagner 11 (1ºT)', ' Jo 45+2 (2ºT)']	['Bruno Nazario 21 (1ºT) ', 'Kalou 29 (2ºT)']	2	Botafogo - RJ	296	Rafael Traci	FIFA
76	8	2020	Domingo 06 de Setembro de 2020	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Patrick 27 (1ºT)', ' Thiago Galhardo 22 (2ºT)']	['Rodriguinho 19 (1ºT) ', 'Clayson 45+6 (2ºT)']	2	Bahia - BA	265	Braulio da Silva Machado	FIFA
77	8	2020	Domingo 06 de Setembro de 2020	20:30	Ilha do Retiro - Recife - PE	292	Sport - PE	2	[' Leandro Barcia 14 (2ºT)', ' Marquinhos 31 (2ºT)']	['Elton 22 (2ºT)']	1	Goiás - GO	290	Vinicius Gomes do Amaral	AB
78	8	2020	Domingo 06 de Setembro de 2020	20:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Eduardo Sasha 32 (1ºT)']	1	Atlético - MG	282	Diego Pombo Lopez	AB
79	8	2020	Sábado 05 de Setembro de 2020	21:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	['Felipe 8 (1ºT)']	1	Santos - SP	277	Wagner Reway	MTR
80	8	2020	Domingo 06 de Setembro de 2020	19:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Edson 10 (1ºT)']	['Isaque 40 (1ºT)']	1	Grêmio - RS	284	Ricardo Marques Ribeiro	MTR
81	9	2020	Quarta 09 de Setembro de 2020	21:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Digão 45+2 (2ºT)']	['Filipe Luís 7 (1ºT) ', 'Gabriel Barbosa 33 (1ºT)']	2	Flamengo - RJ	262	Raphael Claus	FIFA
82	9	2020	Quinta 10 de Setembro de 2020	21:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' German Cano 16 (2ºT)']	['Renato Kayzer 18 (2ºT) ', 'Renato Kayzer 28 (2ºT)']	2	Atlético - GO	373	Heber Roberto Lopes	MTR
83	9	2020	Quarta 09 de Setembro de 2020	19:15	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luciano 32 (2ºT)']	['Raul 7 (2ºT)']	1	Red Bull Bragantino - SP	280	Savio Pereira Sampaio	AB
84	9	2020	Quarta 09 de Setembro de 2020	21:30	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Arthur Gomes 21 (1ºT)', ' Marinho 38 (1ºT)', ' Marinho 45+7 (2ºT)']	['Alan Franco 35 (1ºT)']	1	Atlético - MG	282	Wagner do Nascimento Magalhaes	FIFA
85	9	2020	Quinta 10 de Setembro de 2020	19:15	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	0	[]	['Luiz Adriano 42 (1ºT) ', 'Gabriel Veron 19 (2ºT)']	2	Palmeiras - SP	275	Leandro Pedro Vuaden	MTR
86	9	2020	Quinta 10 de Setembro de 2020	19:15	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Thiago Galhardo 43 (1ºT)', ' Thiago Galhardo 30 (2ºT)']	[]	0	Ceará - CE	354	Rodrigo Dalonso Ferreira	AB
87	9	2020	Quinta 10 de Setembro de 2020	19:15	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	['Alisson 24 (1ºT) ', 'Darlan 8 (2ºT)']	2	Grêmio - RS	284	José Mendonça da Silva Junior	AB
88	9	2020	Quarta 09 de Setembro de 2020	17:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Ravanelli 42 (2ºT)']	['Victor 35 (2ºT)']	1	Botafogo - RJ	296	Vinicius Gonçalves Dias Araujo	AB
89	9	2020	Quarta 09 de Setembro de 2020	18:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Wellington Paulista 8 (2ºT)']	[]	0	Sport - PE	292	Felipe Fernandes de Lima	AB
90	9	2020	Quarta 09 de Setembro de 2020	18:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	3	[' Rafael Moura 45 (1ºT)', ' Ignácio Jara 36 (2ºT)', ' Sabino 37 (2ºT)']	['Robson 12 (1ºT) ', 'W. Matheus 37 (1ºT) ', 'Sabino 45+5 (2ºT)']	3	Coritiba - PR	294	Caio Max Augusto Vieira	AB
91	10	2020	Domingo 13 de Setembro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Nenê 7 (1ºT)', ' Nenê 43 (2ºT)']	['Mateus 45+5 (2ºT)']	1	Corinthians - SP	264	Braulio da Silva Machado	FIFA
92	10	2020	Domingo 13 de Setembro de 2020	20:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Matheus Babi 4 (2ºT)', ' Matheus Babi 37 (2ºT)']	['Lucas Ribamar 34 (1ºT) ', 'German Cano 25 (2ºT) ', 'Ygor 27 (2ºT)']	3	Vasco da Gama - RJ	267	Wilton Pereira Sampaio	FIFA
93	10	2020	Domingo 13 de Setembro de 2020	19:45	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Willian 28 (1ºT)', ' Ze Rafael 41 (1ºT)']	['Iago 12 (1ºT) ', 'Lucas 18 (2ºT)']	2	Sport - PE	292	Diego Pombo Lopez	AB
94	10	2020	Sábado 12 de Setembro de 2020	19:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Madson 29 (1ºT)', ' Marinho 29 (2ºT)']	['Gabriel 7 (1ºT) ', 'Gabriel 38 (1ºT)']	2	São Paulo - SP	276	Luiz Flavio de Oliveira	FIFA
95	10	2020	Domingo 13 de Setembro de 2020	18:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Rever 29 (1ºT)', ' Savarino 42 (2ºT)']	['Alerrandro 3 (2ºT)']	1	Red Bull Bragantino - SP	280	Ramon Abatti Abel	AB
96	10	2020	Domingo 13 de Setembro de 2020	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Diego Souza 4 (2ºT)']	['Osvaldo 15 (1ºT)']	1	Fortaleza - CE	356	Igor Junio Benevenuto de Oliveira	AB
97	10	2020	Domingo 13 de Setembro de 2020	18:00	Pituaçu - Salvador - BA	265	Bahia - BA	0	[]	['Jean 39 (1ºT)']	1	Atlético - GO	373	Vinicius Gomes do Amaral	AB
98	10	2020	Sábado 12 de Setembro de 2020	16:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Fabinho 11 (1ºT)']	[]	0	Coritiba - PR	294	Jean Pierre Goncalves Lima	AB
99	10	2020	Domingo 13 de Setembro de 2020	18:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Luiz 4 (2ºT)', ' Charles 10 (2ºT)']	[]	0	Flamengo - RJ	262	Marielson Alves Silva	AB
100	10	2020	Domingo 13 de Setembro de 2020	18:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Vinicius Lopes 44 (1ºT)']	[]	0	Internacional - RS	285	Flavio Rodrigues de Souza	FIFA
101	11	2020	Terça 13 de Outubro de 2020	18:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	2	[' Pedro 38 (1ºT)', ' Pedro 45+5 (2ºT)']	['Vinicius Lopes 12 (1ºT)']	1	Goiás - GO	290	Paulo Roberto Alves Junior	AB
102	11	2020	Domingo 20 de Setembro de 2020	18:15	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Santos - SP	277	José Mendonça da Silva Junior	AB
103	11	2020	Quarta 26 de Agosto de 2020	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luciano 20 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Marcelo de Lima Henrique	MTR
104	11	2020	Sábado 19 de Setembro de 2020	19:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	4	[' Ortiz 4 (1ºT)', ' Bruno 23 (1ºT)', ' Alerrandro 45 (1ºT)', ' Lucas 17 (2ºT)']	['Vinicius 19 (1ºT) ', 'Wescley 43 (2ºT)']	2	Ceará - CE	354	Jefferson Ferreira de Moraes	AB
105	11	2020	Quarta 16 de Setembro de 2020	21:30	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	3	[' Otero 16 (1ºT)', ' Roni 33 (1ºT)', ' Gil 16 (2ºT)']	['Nino Paraiba 35 (1ºT) ', 'Matheus Saldanha 43 (2ºT)']	2	Bahia - BA	265	Wagner do Nascimento Magalhaes	FIFA
106	11	2020	Domingo 20 de Setembro de 2020	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Ferreira 45+2 (2ºT)']	['Raphael Veiga 25 (2ºT)']	1	Palmeiras - SP	275	Rodrigo Dalonso Ferreira	AB
107	11	2020	Domingo 20 de Setembro de 2020	20:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Hernane 12 (1ºT)']	[]	0	Fluminense - RJ	266	Leandro Pedro Vuaden	MTR
108	11	2020	Domingo 20 de Setembro de 2020	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Robson 44 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Luiz Flavio de Oliveira	FIFA
109	11	2020	Sábado 19 de Setembro de 2020	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Luis 20 (2ºT)']	[]	0	Internacional - RS	285	Marielson Alves Silva	AB
110	11	2020	Sábado 19 de Setembro de 2020	21:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	3	[' Lucas Oliveira 20 (1ºT)', ' Gustavo Ferrareis 9 (2ºT)', ' Gilvan 45+3 (2ºT)']	['Keno 7 (2ºT) ', 'Nathan 14 (2ºT) ', 'Keno 19 (2ºT) ', 'Keno 32 (2ºT)']	4	Atlético - MG	282	Edina Alves Batista	FIFA
111	12	2020	Segunda 28 de Setembro de 2020	20:00	Nilton Santos - Rio de Janeiro - RJ	266	Fluminense - RJ	4	[' Michel Araujo 7 (1ºT)', ' Felippe Cardoso 16 (2ºT)', ' Nino 26 (2ºT)', ' PH GANSO 42 (2ºT)']	[]	0	Coritiba - PR	294	Vinicius Gonçalves Dias Araujo	AB
112	12	2020	Domingo 27 de Setembro de 2020	11:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Vinicius 4 (2ºT)']	['Lucas 5 (2ºT)']	1	Red Bull Bragantino - SP	280	Rodolpho Toski Marques	FIFA
113	12	2020	Domingo 27 de Setembro de 2020	16:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Patrick de Paula 9 (2ºT)']	['Pedro 11 (2ºT)']	1	Flamengo - RJ	262	Jean Pierre Goncalves Lima	AB
114	12	2020	Domingo 27 de Setembro de 2020	20:30	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Madson 41 (1ºT)']	['Gabriel 2 (2ºT)']	1	Fortaleza - CE	356	Heber Roberto Lopes	MTR
115	12	2020	Sábado 26 de Setembro de 2020	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Keno 10 (1ºT)', ' Keno 5 (2ºT)', ' Keno 20 (2ºT)']	['Isaque 9 (2ºT)']	1	Grêmio - RS	284	Caio Max Augusto Vieira	AB
116	12	2020	Sábado 26 de Setembro de 2020	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Thiago Galhardo 19 (1ºT)']	['Luciano 25 (1ºT)']	1	São Paulo - SP	276	Marcelo de Lima Henrique	MTR
117	12	2020	Quarta 23 de Setembro de 2020	21:30	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Iago 36 (1ºT)']	[]	0	Corinthians - SP	264	Wilton Pereira Sampaio	FIFA
118	12	2020	Sábado 26 de Setembro de 2020	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Christian 25 (2ºT)']	[]	0	Bahia - BA	265	Ricardo Marques Ribeiro	MTR
119	12	2020	Domingo 27 de Setembro de 2020	18:15	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Charles 7 (2ºT)', ' Vinicius 28 (2ºT)']	['Rafael Moura 2 (1ºT) ', 'David Duarte 45+2 (2ºT)']	2	Goiás - GO	290	Ramon Abatti Abel	AB
120	12	2020	Domingo 27 de Setembro de 2020	18:15	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Hyuri 4 (2ºT)']	['Victor 44 (1ºT)']	1	Botafogo - RJ	296	Leandro Pedro Vuaden	MTR
121	13	2020	Domingo 04 de Outubro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Pedro 10 (2ºT)', ' Bruno Henrique 13 (2ºT)', ' Everton Ribeiro 31 (2ºT)']	['Renato Kayzer 21 (2ºT)']	1	Athletico Paranaense - PR	293	Rodrigo Dalonso Ferreira	AB
122	13	2020	Domingo 04 de Outubro de 2020	11:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Caio 27 (2ºT)']	['Kevin 40 (1ºT)']	1	Fluminense - RJ	266	Anderson Daronco	FIFA
123	13	2020	Sábado 03 de Outubro de 2020	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Raphael Veiga 9 (1ºT)', ' Willian 36 (2ºT)']	['E. Brock 17 (1ºT)']	1	Ceará - CE	354	Bruno Arleu de Araujo	FIFA
124	13	2020	Sábado 03 de Outubro de 2020	21:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	0	[]	[]	0	Corinthians - SP	264	Edina Alves Batista	FIFA
125	13	2020	Domingo 04 de Outubro de 2020	20:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	4	[' Guilherme Arana 13 (1ºT)', ' Savarino 18 (1ºT)', ' Guga 28 (1ºT)', ' Keno 37 (1ºT)']	['Martin Benitez 8 (1ºT)']	1	Vasco da Gama - RJ	267	Leandro Pedro Vuaden	MTR
126	13	2020	Sábado 03 de Outubro de 2020	17:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	1	[' Pepe 8 (2ºT)']	['Thiago Galhardo 29 (2ºT)']	1	Internacional - RS	285	Raphael Claus	FIFA
127	13	2020	Domingo 04 de Outubro de 2020	18:15	Pituaçu - Salvador - BA	265	Bahia - BA	1	[' Matheus Saldanha 31 (2ºT)']	['Hernane 40 (1ºT) ', 'Marcos 9 (2ºT)']	2	Sport - PE	292	Rafael Traci	FIFA
128	13	2020	Domingo 04 de Outubro de 2020	16:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Robson 5 (1ºT)']	['Reinaldo 23 (2ºT)']	1	São Paulo - SP	276	Wagner do Nascimento Magalhaes	FIFA
129	13	2020	Domingo 04 de Outubro de 2020	18:15	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	[]	0	Atlético - GO	373	José Mendonça da Silva Junior	AB
130	13	2020	Domingo 04 de Outubro de 2020	18:15	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	2	[' Vinicius Lopes 4 (1ºT)', ' Victor Andrade 39 (2ºT)']	['Marinho 18 (1ºT) ', 'Jefferson Junio 9 (2ºT) ', 'Marcos Leonardo 31 (2ºT)']	3	Santos - SP	277	Marielson Alves Silva	AB
131	14	2020	Quarta 07 de Outubro de 2020	19:15	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Pedro 6 (2ºT)', ' Gustavo 9 (2ºT)', ' Pedro 15 (2ºT)']	[]	0	Sport - PE	292	Caio Max Augusto Vieira	AB
132	14	2020	Quarta 07 de Outubro de 2020	21:30	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Pedro Raul 1 (2ºT)', ' Caio 6 (2ºT)']	['Willian 31 (2ºT)']	1	Palmeiras - SP	275	Rodolpho Toski Marques	FIFA
133	14	2020	Quarta 07 de Outubro de 2020	20:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Brenner 45+1 (1ºT)', ' Gabriel 19 (2ºT)', ' Brenner 25 (2ºT)']	[]	0	Atlético - GO	373	Dyorgines Jose Padovani de Andrade	AB
134	14	2020	Quinta 08 de Outubro de 2020	21:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	0	[]	['Thiago Galhardo 17 (1ºT) ', 'Thiago Galhardo 25 (1ºT)']	2	Internacional - RS	285	Felipe Fernandes de Lima	AB
135	14	2020	Quarta 07 de Outubro de 2020	19:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Danilo 45 (1ºT)']	['Madson 11 (1ºT)']	1	Santos - SP	277	Marcelo de Lima Henrique	MTR
136	14	2020	Quarta 07 de Outubro de 2020	19:15	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Luiz Fernando 3 (1ºT)', ' David Braz 10 (1ºT)']	['Nathan Silva 26 (2ºT)']	1	Coritiba - PR	294	Ramon Abatti Abel	AB
137	14	2020	Quarta 07 de Outubro de 2020	19:15	Pituaçu - Salvador - BA	265	Bahia - BA	3	[' Rossi 10 (1ºT)', ' Gilberto 31 (1ºT)', ' Clayson 45 (1ºT)']	[]	0	Vasco da Gama - RJ	267	Jean Pierre Goncalves Lima	AB
138	14	2020	Quinta 08 de Outubro de 2020	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	[]	0	Ceará - CE	354	Wilton Pereira Sampaio	FIFA
139	14	2020	Quarta 07 de Outubro de 2020	21:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' David 36 (1ºT)', ' Bruno 39 (2ºT)']	['Eduardo Sasha 41 (1ºT)']	1	Atlético - MG	282	Savio Pereira Sampaio	AB
140	14	2020	Quarta 07 de Outubro de 2020	20:30	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	2	[' Rafael Moura 22 (1ºT)', ' Rafael Moura 22 (2ºT)']	['Yago Felipe 40 (1ºT) ', 'Fred 7 (2ºT) ', 'Nenê 24 (2ºT) ', 'Digão 30 (2ºT)']	4	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
141	15	2020	Domingo 11 de Outubro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Nenê 26 (2ºT)']	[]	0	Bahia - BA	265	José Mendonça da Silva Junior	AB
142	15	2020	Sábado 10 de Outubro de 2020	17:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Talles Magno 9 (1ºT)']	['Leo Pereira 2 (2ºT) ', 'Bruno Henrique 25 (2ºT)']	2	Flamengo - RJ	262	Flavio Rodrigues de Souza	FIFA
143	15	2020	Sábado 10 de Outubro de 2020	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	0	[]	['Reinaldo 10 (2ºT) ', 'Vitor Bueno 45+2 (2ºT)']	2	São Paulo - SP	276	Leandro Pedro Vuaden	MTR
144	15	2020	Domingo 11 de Outubro de 2020	16:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Marinho 19 (1ºT)', ' Marinho 34 (2ºT)']	['Diego Souza 27 (2ºT)']	1	Grêmio - RS	284	Braulio da Silva Machado	FIFA
145	15	2020	Sábado 10 de Outubro de 2020	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	3	[' Keno 41 (1ºT)', ' Nathan 45+1 (1ºT)', ' Marrony 45+1 (2ºT)']	[]	0	Goiás - GO	290	Vinicius Gonçalves Dias Araujo	AB
146	15	2020	Domingo 11 de Outubro de 2020	20:30	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Thiago Galhardo 6 (1ºT)', ' Abel Hernández 36 (1ºT)']	['Renato Kayzer 41 (1ºT)']	1	Athletico Paranaense - PR	293	Bruno Arleu de Araujo	FIFA
147	15	2020	Domingo 11 de Outubro de 2020	18:15	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Thiago Neves 10 (2ºT)']	['Honda 29 (1ºT) ', 'Caio 45 (1ºT)']	2	Botafogo - RJ	296	Rodrigo Dalonso Ferreira	AB
148	15	2020	Sábado 10 de Outubro de 2020	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Fortaleza - CE	356	Ricardo Marques Ribeiro	MTR
149	15	2020	Domingo 11 de Outubro de 2020	20:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Gil 33 (1ºT)', ' Fernando 45 (2ºT)']	['Leo 15 (1ºT)']	1	Corinthians - SP	264	Anderson Daronco	FIFA
150	15	2020	Domingo 11 de Outubro de 2020	18:15	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	2	[' Janderson 27 (1ºT)', ' Matheus Bossa 45 (2ºT)']	['Claudinho 20 (1ºT)']	1	Red Bull Bragantino - SP	280	Heber Roberto Lopes	MTR
151	16	2020	Quinta 15 de Outubro de 2020	20:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Lincoln 24 (1ºT)']	['Claudinho 1 (2ºT)']	1	Red Bull Bragantino - SP	280	Daniel Nobre Bins	AB
152	16	2020	Quinta 19 de Novembro de 2020	19:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	[]	0	Fortaleza - CE	356	Jean Pierre Goncalves Lima	AB
153	16	2020	Quarta 14 de Outubro de 2020	18:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Gabriel Veron 37 (1ºT)']	['Robson 7 (1ºT) ', 'Robson 24 (1ºT) ', 'Giovanni Augusto 19 (2ºT)']	3	Coritiba - PR	294	Jefferson Ferreira de Moraes	AB
154	16	2020	Quarta 14 de Outubro de 2020	20:30	Vila Belmiro - Santos - SP	277	Santos - SP	0	[]	['Chico 22 (2ºT)']	1	Atlético - GO	373	Igor Junio Benevenuto de Oliveira	AB
155	16	2020	Quarta 14 de Outubro de 2020	21:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	1	[' Guilherme Arana 6 (2ºT)']	['Caio Paulista 19 (1ºT)']	1	Fluminense - RJ	266	Raphael Claus	FIFA
156	16	2020	Quarta 14 de Outubro de 2020	19:15	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	3	[' Diego Souza 33 (1ºT)', ' Pepe 2 (2ºT)', ' Pepe 20 (2ºT)']	['Matheus Babi 42 (1ºT)']	1	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
157	16	2020	Quarta 14 de Outubro de 2020	21:30	Ilha do Retiro - Recife - PE	292	Sport - PE	3	[' Marquinhos 43 (1ºT)', ' Leandro Barcia 10 (2ºT)', ' MIKAEL 45 (2ºT)']	['Patrick 34 (1ºT) ', 'Adryelson 39 (1ºT) ', 'Moledo 7 (2ºT) ', 'Patrick 30 (2ºT) ', 'Yuri Alberto 35 (2ºT)']	5	Internacional - RS	285	Wagner do Nascimento Magalhaes	FIFA
158	16	2020	Quarta 14 de Outubro de 2020	21:30	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Everaldo 45+5 (2ºT)']	1	Corinthians - SP	264	Savio Pereira Sampaio	AB
159	16	2020	Quarta 25 de Novembro de 2020	19:15	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Leo Chu 1 (2ºT)']	['Diego 10 (1ºT)']	1	São Paulo - SP	276	Wagner do Nascimento Magalhaes	FIFA
160	16	2020	Sexta 16 de Outubro de 2020	20:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Vinicius Lopes 3 (2ºT)']	['Fessin 45+4 (2ºT)']	1	Bahia - BA	265	Rodrigo Carvalhaes de Miranda	AB
161	17	2020	Sábado 17 de Outubro de 2020	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	2	[' Luiz Henrique 12 (1ºT)', ' Danilo Barcelos 45 (2ºT)']	['Hudson 41 (1ºT) ', 'Vinicius 32 (2ºT)']	2	Ceará - CE	354	Gilberto Rodrigues Castro Junior	AB
162	17	2020	Segunda 19 de Outubro de 2020	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	[]	0	Goiás - GO	290	Edina Alves Batista	FIFA
163	17	2020	Sábado 17 de Outubro de 2020	21:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	0	[]	[]	0	Grêmio - RS	284	Rafael Traci	FIFA
164	17	2020	Domingo 18 de Outubro de 2020	20:30	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	2	[' Ricardo 5 (2ºT)', ' Claudinho 15 (2ºT)']	[]	0	Sport - PE	292	Ricardo Marques Ribeiro	MTR
165	17	2020	Domingo 18 de Outubro de 2020	16:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Gil 29 (2ºT)']	['Everton Ribeiro 31 (1ºT) ', 'Vitinho 7 (2ºT) ', 'Natan 12 (2ºT) ', 'Bruno Henrique 26 (2ºT) ', 'Diego 40 (2ºT)']	5	Flamengo - RJ	262	Leandro Pedro Vuaden	MTR
166	17	2020	Domingo 18 de Outubro de 2020	18:15	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Edenilson 24 (1ºT)', ' Thiago Galhardo 38 (1ºT)']	[]	0	Vasco da Gama - RJ	267	Braulio da Silva Machado	FIFA
167	17	2020	Segunda 19 de Outubro de 2020	20:00	Pituaçu - Salvador - BA	265	Bahia - BA	3	[' Daniel 23 (2ºT)', ' Gilberto 34 (2ºT)', ' Gilberto 43 (2ºT)']	['Savarino 20 (1ºT)']	1	Atlético - MG	282	Anderson Daronco	FIFA
168	17	2020	Sábado 17 de Outubro de 2020	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Giovanni Augusto 29 (2ºT)']	['Kaio Jorge 5 (1ºT) ', 'Yeferson Soteldo 26 (1ºT)']	2	Santos - SP	277	Bruno Arleu de Araujo	FIFA
169	17	2020	Domingo 18 de Outubro de 2020	20:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' David 34 (1ºT)', ' David 41 (1ºT)']	[]	0	Palmeiras - SP	275	Marcelo de Lima Henrique	MTR
197	20	2020	Domingo 08 de Novembro de 2020	18:15	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Rodriguinho 45+6 (2ºT)']	[]	0	Botafogo - RJ	296	Jefferson Ferreira de Moraes	AB
170	17	2020	Sábado 17 de Outubro de 2020	19:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Zé Roberto 45+1 (1ºT)']	['Cittadini 15 (2ºT)']	1	Athletico Paranaense - PR	293	Pablo Ramon Goncalves Pinheiro	AB
171	18	2020	Domingo 25 de Outubro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Luccas Claro 28 (1ºT)', ' Nino 10 (2ºT)', ' Marcos Paulo 45+2 (2ºT)']	['Marinho 35 (2ºT)']	1	Santos - SP	277	Anderson Daronco	FIFA
172	18	2020	Quarta 21 de Outubro de 2020	21:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Lucas Ribamar 27 (2ºT)']	['Gustavo Mantuan 22 (1ºT) ', 'Everaldo 44 (2ºT)']	2	Corinthians - SP	264	Caio Max Augusto Vieira	AB
173	18	2020	Quarta 09 de Dezembro de 2020	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	4	[' Brenner 9 (1ºT)', ' Brenner 26 (1ºT)', ' Reinaldo 45+2 (1ºT)', ' Hernanes 44 (2ºT)']	[]	0	Botafogo - RJ	296	Ricardo Marques Ribeiro	MTR
174	18	2020	Sábado 24 de Outubro de 2020	17:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	2	[' Ytalo 45+1 (1ºT)', ' Claudinho 37 (2ºT)']	[]	0	Goiás - GO	290	Ramon Abatti Abel	AB
175	18	2020	Sábado 24 de Outubro de 2020	21:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	0	[]	[]	0	Sport - PE	292	Paulo Roberto Alves Junior	AB
176	18	2020	Domingo 25 de Outubro de 2020	18:15	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Abel Hernández 6 (1ºT)', ' Thiago Galhardo 24 (1ºT)']	['Pedro 10 (1ºT) ', 'Everton Ribeiro 45+4 (2ºT)']	2	Flamengo - RJ	262	Wilton Pereira Sampaio	FIFA
177	18	2020	Quarta 11 de Novembro de 2020	18:45	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	2	[' Juninho 24 (1ºT)', ' Gilberto 25 (2ºT)']	['Bergson 19 (2ºT)']	1	Fortaleza - CE	356	Wagner do Nascimento Magalhaes	FIFA
178	18	2020	Domingo 25 de Outubro de 2020	18:15	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Carlos Eduardo 43 (1ºT)']	['Thiago Heleno 10 (2ºT) ', 'Ferreira 43 (2ºT)']	2	Grêmio - RS	284	Flavio Rodrigues de Souza	FIFA
179	18	2020	Sábado 24 de Outubro de 2020	19:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Vinicius 29 (1ºT)', ' Eduardo 6 (2ºT)']	['Rodrigo Muniz 2 (1ºT)']	1	Coritiba - PR	294	Felipe Fernandes de Lima	AB
180	18	2020	Domingo 25 de Outubro de 2020	16:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	0	[]	['Wesley Ribeiro Silva 19 (1ºT) ', 'Luiz Adriano 9 (2ºT) ', 'Luiz Adriano 19 (2ºT)']	3	Palmeiras - SP	275	Savio Pereira Sampaio	AB
181	19	2020	Domingo 01 de Novembro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Pedro 5 (1ºT)']	['Tche Tche 16 (1ºT) ', 'Brenner 45 (1ºT) ', 'Reinaldo 13 (2ºT) ', 'Luciano 36 (2ºT)']	4	São Paulo - SP	276	Caio Max Augusto Vieira	AB
182	19	2020	Sábado 31 de Outubro de 2020	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	2	[' Honda 16 (1ºT)', ' Matheus Babi 27 (1ºT)']	['CLEBER 23 (1ºT) ', 'Leandro 5 (2ºT)']	2	Ceará - CE	354	Diego Pombo Lopez	AB
183	19	2020	Segunda 02 de Novembro de 2020	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Raphael Veiga 18 (1ºT)', ' Rony 24 (2ºT)', ' Wesley Ribeiro Silva 31 (2ºT)']	[]	0	Atlético - MG	282	Braulio da Silva Machado	FIFA
184	19	2020	Domingo 01 de Novembro de 2020	18:15	Vila Belmiro - Santos - SP	277	Santos - SP	3	[' Madson 9 (1ºT)', ' Marinho 26 (1ºT)', ' Jobson Souza 36 (1ºT)']	['Daniel 27 (1ºT)']	1	Bahia - BA	265	Heber Roberto Lopes	MTR
185	19	2020	Sábado 31 de Outubro de 2020	19:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Matheus 33 (1ºT)']	[]	0	Internacional - RS	285	Paulo Roberto Alves Junior	AB
186	19	2020	Segunda 02 de Novembro de 2020	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' David Braz 23 (2ºT)', ' Orejuela 26 (2ºT)']	['Jan Hurtado 32 (2ºT)']	1	Red Bull Bragantino - SP	280	Savio Pereira Sampaio	AB
187	19	2020	Domingo 01 de Novembro de 2020	16:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Thiago Neves 7 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Jefferson Ferreira de Moraes	AB
188	19	2020	Sábado 31 de Outubro de 2020	19:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' M. Galdezani 7 (1ºT)']	[]	0	Atlético - GO	373	Daniel Nobre Bins	AB
189	19	2020	Sábado 31 de Outubro de 2020	21:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Wellington Silva 29 (2ºT)']	1	Fluminense - RJ	266	Marielson Alves Silva	AB
190	19	2020	Domingo 01 de Novembro de 2020	20:30	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Shaylon 12 (2ºT)']	['Leo Matos 16 (1ºT)']	1	Vasco da Gama - RJ	267	Igor Junio Benevenuto de Oliveira	AB
191	20	2020	Domingo 08 de Novembro de 2020	20:30	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	['Pepe 27 (1ºT)']	1	Grêmio - RS	284	Edina Alves Batista	FIFA
192	20	2020	Domingo 08 de Novembro de 2020	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	0	[]	['Luiz Adriano 27 (2ºT)']	1	Palmeiras - SP	275	Anderson Daronco	FIFA
193	20	2020	Sábado 07 de Novembro de 2020	19:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	2	[' Brenner 24 (1ºT)', ' Igor Gomes 33 (2ºT)']	['Fernandao 19 (1ºT)']	1	Goiás - GO	290	Gilberto Rodrigues Castro Junior	AB
194	20	2020	Domingo 08 de Novembro de 2020	18:15	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	1	[' Ortiz 45+5 (2ºT)']	['Ortiz 18 (2ºT)']	1	Santos - SP	277	Vinicius Furlan	AB
195	20	2020	Domingo 08 de Novembro de 2020	18:15	Mineirão - Belo Horizonte - MG	282	Atlético - MG	4	[' Gustavo 3 (1ºT)', ' Keno 7 (1ºT)', ' Eduardo Sasha 13 (2ºT)', ' Zaracho 37 (2ºT)']	[]	0	Flamengo - RJ	262	Savio Pereira Sampaio	AB
196	20	2020	Domingo 08 de Novembro de 2020	16:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Yuri Alberto 31 (1ºT)', ' Nonato 13 (2ºT)']	['Giovanni Augusto 2 (2ºT) ', 'Sabino 28 (2ºT)']	2	Coritiba - PR	294	Dyorgines Jose Padovani de Andrade	AB
198	20	2020	Sábado 07 de Novembro de 2020	18:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	2	[' Carlos Eduardo 17 (2ºT)', ' Renato Kayzer 45+2 (2ºT)']	['Bergson 18 (1ºT)']	1	Fortaleza - CE	356	Ramon Abatti Abel	AB
199	20	2020	Domingo 08 de Novembro de 2020	20:30	Arena Castelão - Fortaleza - CE	354	Ceará - CE	0	[]	[]	0	Sport - PE	292	Ricardo Marques Ribeiro	MTR
200	20	2020	Sábado 07 de Novembro de 2020	21:00	Olímpico Pedro Ludovico - Goiania - GO	373	Atlético - GO	1	[' Lucas Oliveira 42 (1ºT)']	['Fabio Santos 11 (2ºT)']	1	Corinthians - SP	264	Jean Pierre Goncalves Lima	AB
201	21	2020	Sábado 14 de Novembro de 2020	21:30	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	1	[' Bruno Henrique 44 (1ºT)']	['Zé Roberto 13 (2ºT)']	1	Atlético - GO	373	Rafael Traci	FIFA
202	21	2020	Segunda 16 de Novembro de 2020	20:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Matheus Babi 43 (1ºT)']	['Ytalo 45 (1ºT) ', 'Claudinho 40 (2ºT)']	2	Red Bull Bragantino - SP	280	Rodolpho Toski Marques	FIFA
203	21	2020	Sábado 14 de Novembro de 2020	21:30	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	2	[' Raphael Veiga 6 (2ºT)', ' Raphael Veiga 14 (2ºT)']	[]	0	Fluminense - RJ	266	Leandro Pedro Vuaden	MTR
204	21	2020	Sábado 14 de Novembro de 2020	16:30	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Ivonei 13 (2ºT)', ' Kaio Jorge 23 (2ºT)']	[]	0	Internacional - RS	285	Savio Pereira Sampaio	AB
205	21	2020	Sábado 14 de Novembro de 2020	19:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Matheus 5 (1ºT)']	['Guilherme Arana 15 (2ºT) ', 'Marrony 38 (2ºT)']	2	Atlético - MG	282	Rodrigo Dalonso Ferreira	AB
206	21	2020	Sábado 14 de Novembro de 2020	19:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Jean Pyerre 19 (1ºT)', ' Pepe 32 (1ºT)', ' Diego Souza 39 (1ºT)', ' Churin 24 (2ºT)']	['Kelvyn 36 (1ºT) ', 'Tiago 45 (2ºT)']	2	Ceará - CE	354	José Mendonça da Silva Junior	AB
207	21	2020	Sábado 14 de Novembro de 2020	16:30	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['German Cano 25 (1ºT) ', 'German Cano 6 (2ºT)']	2	Vasco da Gama - RJ	267	Heber Roberto Lopes	MTR
208	21	2020	Segunda 16 de Novembro de 2020	18:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Giovanni Augusto 2 (1ºT)']	['Elber 36 (1ºT) ', 'Zeca 27 (2ºT)']	2	Bahia - BA	265	Igor Junio Benevenuto de Oliveira	AB
209	21	2020	Sábado 14 de Novembro de 2020	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	2	[' David 11 (1ºT)', ' Wellington Paulista 28 (2ºT)']	['Gabriel 40 (1ºT) ', 'Luciano 15 (2ºT) ', 'Luciano 36 (2ºT)']	3	São Paulo - SP	276	Marcelo de Lima Henrique	MTR
210	21	2020	Sábado 14 de Novembro de 2020	17:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	0	[]	['Renato Kayzer 19 (1ºT)']	1	Athletico Paranaense - PR	293	Flavio Rodrigues de Souza	FIFA
211	22	2020	Sábado 21 de Novembro de 2020	19:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	3	[' Bruno Henrique 3 (1ºT)', ' De Arrascaeta 27 (1ºT)', ' Rene 30 (2ºT)']	['Mattheus Oliveira 45+2 (2ºT)']	1	Coritiba - PR	294	Ricardo Marques Ribeiro	MTR
212	22	2020	Domingo 22 de Novembro de 2020	18:15	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	1	[' Warley 36 (2ºT)']	['Bergson 16 (2ºT) ', 'David 33 (2ºT)']	2	Fortaleza - CE	356	Heber Roberto Lopes	MTR
213	22	2020	Domingo 22 de Novembro de 2020	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luciano 33 (1ºT)']	['German Cano 18 (1ºT)']	1	Vasco da Gama - RJ	267	Braulio da Silva Machado	FIFA
214	22	2020	Sexta 20 de Novembro de 2020	20:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	4	[' Claudinho 4 (1ºT)', ' Claudinho 10 (1ºT)', ' Ytalo 21 (1ºT)', ' Hélio Junio 6 (2ºT)']	[]	0	Bahia - BA	265	Anderson Daronco	FIFA
215	22	2020	Domingo 22 de Novembro de 2020	20:30	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	0	[]	[]	0	Grêmio - RS	284	Caio Max Augusto Vieira	AB
216	22	2020	Domingo 22 de Novembro de 2020	18:15	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	1	[' Mauricio 14 (1ºT)']	['Lucca 12 (2ºT) ', 'Caio Paulista 35 (2ºT)']	2	Fluminense - RJ	266	Luiz Flavio de Oliveira	FIFA
217	22	2020	Segunda 23 de Novembro de 2020	20:00	Ilha do Retiro - Recife - PE	292	Sport - PE	0	[]	['Janderson 15 (2ºT)']	1	Atlético - GO	373	Edina Alves Batista	FIFA
218	22	2020	Sábado 21 de Novembro de 2020	19:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	1	[' Thiago Heleno 30 (2ºT)']	[]	0	Santos - SP	277	Marcelo de Lima Henrique	MTR
219	22	2020	Domingo 22 de Novembro de 2020	16:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	2	[' Lima 2 (2ºT)', ' Felipe Vizeu 11 (2ºT)']	['Eduardo Sasha 28 (1ºT) ', 'Keno 28 (2ºT)']	2	Atlético - MG	282	Raphael Claus	FIFA
220	22	2020	Sábado 21 de Novembro de 2020	21:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Miguel Figueira 45+2 (2ºT)']	[]	0	Palmeiras - SP	275	Bruno Arleu de Araujo	FIFA
221	23	2020	Segunda 30 de Novembro de 2020	20:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	0	[]	[]	0	Red Bull Bragantino - SP	280	Dyorgines Jose Padovani de Andrade	AB
222	23	2020	Segunda 30 de Novembro de 2020	18:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Lucas Ribamar 20 (2ºT)']	['Pedrinho 3 (1ºT) ', 'CLEBER 26 (1ºT) ', 'Saulo 34 (2ºT) ', 'Vinicius 44 (2ºT)']	4	Ceará - CE	354	Luiz Flavio de Oliveira	FIFA
223	23	2020	Sábado 28 de Novembro de 2020	17:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Patrick de Paula 7 (1ºT)', ' Rony 33 (1ºT)', ' Rony 4 (2ºT)']	[]	0	Athletico Paranaense - PR	293	Anderson Daronco	FIFA
224	23	2020	Sábado 28 de Novembro de 2020	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	4	[' Marinho 6 (1ºT)', ' Lucas 12 (1ºT)', ' Bruno Henrique 25 (2ºT)', ' Yeferson Soteldo 36 (2ºT)']	['Marquinhos 27 (1ºT) ', 'Leandro Barcia 45 (1ºT)']	2	Sport - PE	292	Wilton Pereira Sampaio	FIFA
225	23	2020	Quarta 25 de Novembro de 2020	21:30	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Savarino 16 (1ºT)', ' Eduardo Sasha 4 (2ºT)']	['Marcelo 8 (2ºT)']	1	Botafogo - RJ	296	Savio Pereira Sampaio	AB
226	23	2020	Quinta 28 de Janeiro de 2021	20:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Diego Souza 40 (1ºT)', ' Diego Souza 39 (2ºT)']	['Everton Ribeiro 12 (2ºT) ', 'Gabriel Barbosa 14 (2ºT) ', 'De Arrascaeta 21 (2ºT) ', 'Isla 45+2 (2ºT)']	4	Flamengo - RJ	262	Rodolpho Toski Marques	FIFA
227	23	2020	Sábado 28 de Novembro de 2020	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Clayson 35 (2ºT)']	['Luciano 6 (2ºT) ', 'Arboleda 20 (2ºT) ', 'Luciano 28 (2ºT)']	3	São Paulo - SP	276	Leandro Pedro Vuaden	MTR
228	23	2020	Quarta 25 de Novembro de 2020	21:30	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	['Fabio Santos 20 (1ºT)']	1	Corinthians - SP	264	Leandro Pedro Vuaden	MTR
229	23	2020	Quinta 26 de Novembro de 2020	20:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	1	[' Wellington Paulista 16 (2ºT)']	['Fernandao 24 (1ºT)']	1	Goiás - GO	290	Felipe Fernandes de Lima	AB
230	23	2020	Sábado 28 de Novembro de 2020	21:00	Antônio Accioly - Goiania - GO	373	Atlético - GO	0	[]	[]	0	Internacional - RS	285	Ramon Abatti Abel	AB
231	24	2020	Sábado 05 de Dezembro de 2020	19:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	3	[' Nenê 27 (1ºT)', ' Marcos Paulo 27 (2ºT)', ' Marcos Paulo 29 (2ºT)']	['Cittadini 10 (1ºT)']	1	Athletico Paranaense - PR	293	Ramon Abatti Abel	AB
232	24	2020	Sábado 05 de Dezembro de 2020	17:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Everton Ribeiro 10 (2ºT)']	1	Flamengo - RJ	262	Anderson Daronco	FIFA
233	24	2020	Domingo 06 de Dezembro de 2020	16:00	Morumbi - Sao Paulo - SP	276	São Paulo - SP	1	[' Luciano 13 (1ºT)']	[]	0	Sport - PE	292	Felipe Fernandes de Lima	AB
234	24	2020	Sábado 05 de Dezembro de 2020	17:00	Vila Belmiro - Santos - SP	277	Santos - SP	2	[' Diego 38 (1ºT)', ' Marinho 25 (2ºT)']	['Raphael Veiga 11 (2ºT) ', 'Willian 18 (2ºT)']	2	Palmeiras - SP	275	Flavio Rodrigues de Souza	FIFA
235	24	2020	Domingo 06 de Dezembro de 2020	18:15	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' MUSTO 10 (1ºT)', ' Hyoran 15 (2ºT)']	['Yuri Alberto 8 (1ºT) ', 'João Peglow 42 (2ºT)']	2	Internacional - RS	285	Bruno Arleu de Araujo	FIFA
236	24	2020	Domingo 06 de Dezembro de 2020	16:00	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	4	[' Diego Souza 41 (1ºT)', ' Diego Souza 7 (2ºT)', ' Cesar Pinares 9 (2ºT)', ' Lucas Silva 45+2 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Raphael Claus	FIFA
237	24	2020	Sábado 05 de Dezembro de 2020	19:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	0	[]	['Vinicius 37 (2ºT) ', 'Saulo 45+4 (2ºT)']	2	Ceará - CE	354	Jean Pierre Goncalves Lima	AB
238	24	2020	Sábado 05 de Dezembro de 2020	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	0	[]	[]	0	Red Bull Bragantino - SP	280	Jefferson Ferreira de Moraes	AB
239	24	2020	Quarta 02 de Dezembro de 2020	21:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	[]	0	Corinthians - SP	264	Braulio da Silva Machado	FIFA
240	24	2020	Segunda 07 de Dezembro de 2020	20:00	Antônio Accioly - Goiania - GO	373	Atlético - GO	0	[]	['Rafael Moura 25 (1ºT)']	1	Goiás - GO	290	Marcelo de Lima Henrique	MTR
241	25	2020	Domingo 13 de Dezembro de 2020	16:00	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Gerson 42 (1ºT)', ' Gabriel Barbosa 4 (2ºT)', ' Filipe Luís 12 (2ºT)', ' Gabriel Barbosa 25 (2ºT)']	['Bruno Henrique 29 (2ºT)']	1	Santos - SP	277	Paulo Roberto Alves Junior	AB
242	25	2020	Domingo 13 de Dezembro de 2020	20:30	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' German Cano 45+2 (2ºT)']	['Wellington Silva 10 (1ºT)']	1	Fluminense - RJ	266	Rodolpho Toski Marques	FIFA
243	25	2020	Sábado 12 de Dezembro de 2020	19:00	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	3	[' Willian 6 (1ºT)', ' Raphael Veiga 35 (1ºT)', ' Rony 42 (1ºT)']	[]	0	Bahia - BA	265	Rafael Traci	FIFA
244	25	2020	Sábado 12 de Dezembro de 2020	17:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	2	[' Luan Candido 12 (1ºT)', ' Thonny Anderson 42 (2ºT)']	['Juninho 45 (1ºT)']	1	Fortaleza - CE	356	Heber Roberto Lopes	MTR
245	25	2020	Domingo 13 de Dezembro de 2020	18:15	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	1	[' Otero 25 (1ºT)']	[]	0	São Paulo - SP	276	Raphael Claus	FIFA
246	25	2020	Sábado 12 de Dezembro de 2020	19:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Patrick 36 (1ºT)', ' Yuri Alberto 24 (2ºT)']	['Pedro Raul 27 (1ºT)']	1	Botafogo - RJ	296	Caio Max Augusto Vieira	AB
247	25	2020	Domingo 13 de Dezembro de 2020	18:15	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Thiago Neves 37 (1ºT)']	[]	0	Coritiba - PR	294	Marcelo de Lima Henrique	MTR
248	25	2020	Sábado 12 de Dezembro de 2020	17:00	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	0	[]	['Vargas 43 (1ºT)']	1	Atlético - MG	282	Vinicius Gonçalves Dias Araujo	AB
249	25	2020	Sábado 12 de Dezembro de 2020	21:00	Arena Castelão - Fortaleza - CE	354	Ceará - CE	1	[' Leo Chu 15 (2ºT)']	['Jean 33 (2ºT) ', 'Roberson 44 (2ºT)']	2	Atlético - GO	373	Leandro Pedro Vuaden	MTR
250	25	2020	Sábado 12 de Dezembro de 2020	21:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	0	[]	[]	0	Grêmio - RS	284	Edina Alves Batista	FIFA
251	26	2020	Domingo 20 de Dezembro de 2020	18:15	Maracanã - Rio de Janeiro - RJ	262	Flamengo - RJ	4	[' Bruno Henrique 4 (1ºT)', ' Isla 32 (1ºT)', ' Pedro 36 (2ºT)', ' Vitinho 44 (2ºT)']	['Indio 6 (2ºT) ', 'Gilberto 10 (2ºT) ', 'Gilberto 13 (2ºT)']	3	Bahia - BA	265	Flavio Rodrigues de Souza	FIFA
252	26	2020	Domingo 20 de Dezembro de 2020	16:00	São Januário - Rio de Janeiro - RJ	267	Vasco da Gama - RJ	1	[' Carlinhos 8 (1ºT)']	[]	0	Santos - SP	277	Ricardo Marques Ribeiro	MTR
253	26	2020	Quarta 16 de Dezembro de 2020	21:30	Morumbi - Sao Paulo - SP	276	São Paulo - SP	3	[' Igor Gomes 24 (1ºT)', ' Gabriel 38 (2ºT)', ' Jonas Toró 45+1 (2ºT)']	[]	0	Atlético - MG	282	Wilton Pereira Sampaio	FIFA
254	26	2020	Domingo 20 de Dezembro de 2020	16:00	Nabi Abi Chedid - Braganca Paulista - SP	280	Red Bull Bragantino - SP	0	[]	['Renato Kayzer 26 (1ºT)']	1	Athletico Paranaense - PR	293	Braulio da Silva Machado	FIFA
255	26	2020	Segunda 21 de Dezembro de 2020	20:00	Neo Química Arena - Sao Paulo - SP	264	Corinthians - SP	2	[' Mosquito 13 (1ºT)', ' Jo 5 (2ºT)']	['Fernandao 3 (1ºT)']	1	Goiás - GO	290	Bruno Arleu de Araujo	FIFA
256	26	2020	Sábado 19 de Dezembro de 2020	21:00	Beira-Rio - Porto Alegre - RS	285	Internacional - RS	2	[' Edenilson 10 (1ºT)', ' Yuri Alberto 37 (2ºT)']	[]	0	Palmeiras - SP	275	Savio Pereira Sampaio	AB
257	26	2020	Sábado 19 de Dezembro de 2020	19:00	Ilha do Retiro - Recife - PE	292	Sport - PE	1	[' Dalberto 9 (1ºT)']	['Pepe 27 (2ºT)']	1	Grêmio - RS	284	José Mendonça da Silva Junior	AB
258	26	2020	Sábado 19 de Dezembro de 2020	21:00	Couto Pereira - Curitiba - PR	294	Coritiba - PR	1	[' Neilton 26 (1ºT)']	['Pedro Raul 30 (2ºT) ', 'Pedro Raul 36 (2ºT)']	2	Botafogo - RJ	296	Luiz Flavio de Oliveira	FIFA
259	26	2020	Domingo 20 de Dezembro de 2020	20:30	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	['Lima 1 (2ºT) ', 'CLEBER 9 (2ºT)']	2	Ceará - CE	354	Anderson Daronco	FIFA
260	26	2020	Quarta 16 de Dezembro de 2020	21:30	Antônio Accioly - Goiania - GO	373	Atlético - GO	2	[' Wellington Rato 43 (1ºT)', ' Jean 42 (2ºT)']	['Felippe Cardoso 45+2 (2ºT)']	1	Fluminense - RJ	266	Rodrigo Dalonso Ferreira	AB
261	27	2020	Sábado 26 de Dezembro de 2020	21:00	Maracanã - Rio de Janeiro - RJ	266	Fluminense - RJ	1	[' Fred 7 (2ºT)']	['Brenner 14 (1ºT) ', 'Brenner 28 (2ºT)']	2	São Paulo - SP	276	Anderson Daronco	FIFA
262	27	2020	Domingo 27 de Dezembro de 2020	16:00	Nilton Santos - Rio de Janeiro - RJ	296	Botafogo - RJ	0	[]	['Cazares 34 (1ºT) ', 'Mateus 45+4 (2ºT)']	2	Corinthians - SP	264	Heber Roberto Lopes	MTR
263	27	2020	Domingo 27 de Dezembro de 2020	18:15	Allianz Parque - Sao Paulo - SP	275	Palmeiras - SP	1	[' Luiz Adriano 27 (1ºT)']	[]	0	Red Bull Bragantino - SP	280	Raphael Claus	FIFA
264	27	2020	Domingo 27 de Dezembro de 2020	18:15	Vila Belmiro - Santos - SP	277	Santos - SP	1	[' Marinho 11 (1ºT)']	['Samuel 36 (1ºT)']	1	Ceará - CE	354	Rodolpho Toski Marques	FIFA
265	27	2020	Sábado 26 de Dezembro de 2020	17:00	Mineirão - Belo Horizonte - MG	282	Atlético - MG	2	[' Hyoran 21 (2ºT)', ' Eduardo Sasha 37 (2ºT)']	[]	0	Coritiba - PR	294	Marielson Alves Silva	AB
266	27	2020	Domingo 27 de Dezembro de 2020	20:30	Arena do Grêmio - Porto Alegre - RS	284	Grêmio - RS	2	[' Dudu 43 (1ºT)', ' Churin 19 (2ºT)']	['Gustavo Ferrareis 11 (2ºT)']	1	Atlético - GO	373	Felipe Fernandes de Lima	AB
267	27	2020	Domingo 27 de Dezembro de 2020	16:00	Arena Fonte Nova - Salvador - BA	265	Bahia - BA	1	[' Indio 23 (2ºT)']	['Rodrigo Dourado 45 (1ºT) ', 'Thiago Galhardo 3 (2ºT)']	2	Internacional - RS	285	Paulo Roberto Alves Junior	AB
268	27	2020	Domingo 27 de Dezembro de 2020	18:15	Arena da Baixada - Curitiba - PR	293	Athletico Paranaense - PR	3	[' Nikao 9 (1ºT)', ' Carlos Eduardo 37 (1ºT)', ' Carlos Eduardo 15 (2ºT)']	[]	0	Vasco da Gama - RJ	267	Jean Pierre Goncalves Lima	AB
269	27	2020	Sábado 26 de Dezembro de 2020	19:00	Arena Castelão - Fortaleza - CE	356	Fortaleza - CE	0	[]	[]	0	Flamengo - RJ	262	Rafael Traci	FIFA
270	27	2020	Sábado 26 de Dezembro de 2020	19:00	Hailé Pinheiro - Goiania - GO	290	Goiás - GO	1	[' Fernandao 4 (1ºT)']	[]	0	Sport - PE	292	Braulio da Silva Machado	FIFA
\.


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Debian 13.4-1.pgdg100+1)
-- Dumped by pg_dump version 13.4 (Debian 13.4-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

