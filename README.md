# README

## Sobre o Projeto
Este projeto não requeria o uso de uma biblioteca CSS, no entanto, optei por utilizar o **Tailwind CSS** para aprimorar a interface da aplicação.

## Configuração Inicial
Após clonar o repositório, execute o seguinte comando para instalar as dependências do projeto:

```bash
bundle install
```
## Rodando as migrations
Antes de iniciar o servidor, rode as migrations com o comando:
```bash
rails db:migrate
```

## Executando o Servidor de Desenvolvimento
Para rodar o servidor de desenvolvimento, é recomendável utilizar o comando:
```bash
./bin/dev
```
Isso é preferível em vez de usar `rails server`, pois garante que as modificações no Tailwind CSS sejam aplicadas em tempo real.