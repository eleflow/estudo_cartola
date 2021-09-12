## CBF Web Crawler

* Para instalar as dependências utilize o comando:
```
pip install -r requirements.txt
```

* Para executar os testes unitários utilize o comando:
```
python3 -m unittest discover -s . -p '*test.py'
```

* Para executar a aplicação é necessário conexão com o banco de dados do cartola e acesso à tabela match. Apenas execute o comando:
```
python src/job.py
```