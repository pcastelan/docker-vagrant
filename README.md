# docker-vagrant
[Docker](https://www.docker.com/) + [Laradock](https://laradock.io/) no windows usando vagrant.

## Instruções
1. Efetuar download e instalar [Virtual Box](https://www.virtualbox.org/wiki/Downloads), [Vagrant](https://www.vagrantup.com/downloads.html) e [Git Bash](https://gitforwindows.org/). O git bash auxilia na execução de comandos linux através do terminal no windows.
2. Após instalação, clicar sobre essa pasta com o botão direito e selecionar a opção `Open git bash here` ou iniciar o git bash e navegar até a pasta `./Docker` do repositório.
3. Na pasta, executar o comando `vagrant up`, no mesmo nível do arquivo `Vagrantfile`, esse será responsável por fazer o download da imagem do Linux Alpine e instalar o docker e o docker-compose na primeira execução e/ou iniciar a VM depois que ela foi criada.


## Orientações
1. A pasta `./Docker/config` possui os arquivos que são utilizados para o provisionamento da VM. O arquivo `create.sh` contém os comandos necessários para a instalação do docker/docker-compose e também das dependências e é executado de forma automática apenas na criação da VM. o arquivo `start.sh` é executado toda vez que a VM é levantada, dando o start nos containers, neste arquivo é possível configurar quais os containers/serviços serão executados no docker.
2. O arquivo Vagrantfile possui as configurações da VM como mapeamento de pastas e portas, caso o serviço docker a ser utilizado precise ser acessado de fora do context da VM, pode ser necessário adicionar uma nova porta no mapeamento ou comentar/alterar a porta caso ela esteja sendo utilizado por algum serviço na máquina, caso exista algum conflito a VM não será iniciada.
3. A pasta `./src` é mapeada para dentro da VM e os arquivos de aplicação devem ser adicionados na pasta `./src/projects`, dentro da VM essa pasta está disponível em `/mnt/docker`.
4. É possível acessar a VM através do comando `vagrant ssh`.
5. O laradock possui um container chamado `workspace` que possui diversas ferramentas de desenvolvimeto como node, npm, gulp e git, logo é possível utilizar essas soluções à partir do container sem a necessidade de instalá-las na máquina windows, para isso basta acessar a VM via ssh e executar `cd /mnt/docker/laradock/ && sudo docker-compose exec workspace bash`.
6. O arquivo `.env` do laradock tem as configurações que permitiram o correto funcionamento dos containers `apache2`, `redis`, `redis-webui`, `elasticsearch`, e `mysql`. O arquivo `.env.example` tem as configurações padrão do laradock.
