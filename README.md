# Be The Hero
Projeto realizado durante a semana OmniStack 11.

## Sobre
É um projeto multiplataformas que visa ajudar ONGs sem fins lucrativos. 
Há 3 partes do projeto:
- Backend: Responsável pelo banco de dados e toda regra de negócios da aplicação;
- Web: Onde as ONGs podem se cadastrar e publicar seus casos;
- Mobile: Onde as pessoas podem escolher casos para ajudar.
 
## Como executar?
Para ver toda a aplicação com rode com perfeição é necessário executar as 3 partes dele.
E para isso será necessário instalar o [Node](https://nodejs.org/en/) para que o backend e frontend funcionem.
terminando de instalar, vamos lá, mão na massa. Ou melhor, mão no código.

### Executar o Backend
Em seu terminal, dentro do diretório [backend](https://github.com/Mayconsgs/Be-The-Hero/tree/master/backend) do projeto, execute os seguintes comandos:

```
yarn install
```
>Para instalar todas as dependências do projeto.


```
yarn knex:migrate
```
>Para criar o banco de dados da aplicação.

```
yarn start
```
>Para executar o servidor e assim conseguir utilizar as outras aplicações.

Pronto, feito isso seu servidor estará operando. Lembre-se de **não fechar o prompt em que seu servidor estiver rodando**. Caso feche, o servidor deixara de estar online.

### Executando a aplicação Web
Novamente em seu terminal, mas agora dentro do diretório [frontend](https://github.com/Mayconsgs/Be-The-Hero/tree/master/frontend) execute os seguintes comandos:

```
yarn install
```
>Para instalar todas as dependências do projeto.

```
yarn start
```
>Para executar o site em seu navegador.

E prontinho, com o frontend e backend executando, já é possível criar novas ONGs e casos para essas ONGs. Agora vamos para execução da parte Mobile.

### Executando a aplicação Mobile
O mobile será um pouco diferente, e necessita do [Flutter](https://flutter.dev/docs/get-started/install) instalado em sua máquina.
Com o flutter instalado, vamos continuar.

Primeiro peço que abra a pasta flutter_mobile em seu terminal. Feito isso, vamos aos comandos:
```
flutter pub get
```
>Para que as dependencias sejam instaladas.

Feito isso abra o arquivo [incidents_store.dart](https://github.com/Mayconsgs/Be-The-Hero/blob/master/flutter_mobile/lib/stores/incidents_store.dart) em algum editor de código, e modifique a **linha 26** colocando o endereço IP local de sua máquina, mais **:3333** para que o app consiga fazer requisições HTTP ao servidor, ficara mais ou menos assim **192.168.0.1:3333**

Feito isso, execute o próximo comando no terminal para recriar a classe MobX:

```
flutter packages run build_runner build
```

Feito isso seu app está pronto para rodar. Basta conectar um celular via USB com o modo desenvolvedor habilitado ou rodar um emulador Android ou iOS em sua máquina, e executar o comando a seguir:
```
flutter run
```

Uffa, e é isso, se gostou do projeto ou da explicação, não se esqueça de deixar uma **STAR** no repositório, isso me motiva a continuar seguindo na programação.
