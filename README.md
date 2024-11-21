# e-Narrativas

## Instalação:
1. Criar o ambiente virtual para instalar as bibliotecas (se o primeiro comando a seguir não funcionar, utilizar o segundo):
- virtualenv venv
- python -m venv venv

2. Instalar as bibliotecas necessárias para a execução do projeto:
- pip install django
- pip install Pillow
- pip install pandas

3. Clonar o projeto:
- git clone https://github.com/brunogomesifrn/pp23narrativas

4. Executar comandos de criação e atualização do banco de dados:
- python manage.py makemigrations core indicadores
- python manage.py migrate

## Aplicações do Projeto:
- **core**: responsável pelas páginas públicas do projeto
- **indicador**: responsável pelo gerenciamento dos indicadores do projeto
- **narrativa**: reposnsável pelo gerenciamento das narrativas do projeto
- **dashboard**: responsável pelo gerenciamento da dashboard do projeto
