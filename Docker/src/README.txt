CONFIGURAÇÃO DO DOCKER

- Efetuar download do "Docker Destop" para Mac

- Para verificar se há algum container em execução basta executar:
docker ps

- Para iniciar o ambiente de desenvolvimento basta executar:
docker-compose up -d apache2 workspace
	outras opções:
	docker-compose up -d nginx mysql phpmyadmin redis workspace
	docker-compose up -d apache2 mysql phpmyadmin redis workspace

- É possível configurar a versão do php através do arquivo .env editando a variável PHP_VERSION, já as alterações nas configurações do php devem ser feitas nos devidos arquivos .ini na pasta "laradock/php-fpm"

- pode ser necessário fazer um novo build da imagem caso o seja feita alguma alteração no .env, para isso use:
docker-compose build php-fpm

- Caso seja alterado alguma configuração do ambiente é necessário pará-lo e iniciá-lo novamente ou pode se optar pelo restart do serviço desejado
docker-compose stop
docker-compose restart apache2

- Caso seja necessário acessar algum serviço levantado pelo Docker basta acessar verificar o nome do container (coluna IMAGE) e executar o comando "docker-compose exec {container} bash", removendo o "laradock_"
docker-compose exec nginx bash


