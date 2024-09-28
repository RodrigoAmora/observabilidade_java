# observabilidade_java
Descrição:
----------
Projeto em Java e Spring Boot usando observabilidade com Prometheus e Grafana.

Dependências:
-------------
O projeto usa as seguintes dependências:
* Spring Boot
* Spring Data JPA
* Spring Security
* Actuator
* Devtools
* Micrometer
* JsonWebToken
* Swagger
* OpenAPI
* MySql

Banco de dados:
---------------
O projeto usa o MySQL.

Docker:
-------
Para rodar o projeto em um container Docker, primeiro deve-se gerar o .jar do projeto rodando o comando dentro do diretório <b>`app/`</b>:
```shell script
mvn clean package
```

Após isso, deve-se gerar o build e subir os containers do Docker.<br><br>
<b>Fazendo o build dos containers do Docker:</b>
```shell script
docker-compose build
```

<b>Subindo os containers do Docker:</b>
```shell script
docker-compose up -d
```

##
Para automatizar esse processo, basta executar o Shellscript <b>`docker_build_and_run.sh`</b> na raiz do projeto:
```shell script
./docker_build_and_run.sh
```

Prometheus:
-----------
Acesse o Prometheus através do endereço:
```shell script
http://localhost:9090/
```

Grafana:
--------
Acesse o Grafana através do endereço:
```shell script
http://localhost:3000/
```

<b>Username:</b> admin
<b>Password:</b> admin
