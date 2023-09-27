# Calculadora de IMC

Este projeto consiste em uma calculadora de Índice de Massa Corporal (IMC) que visa fornecer resultados precisos e úteis aos usuários. Para atingir esse objetivo, foram adotadas várias práticas de desenvolvimento de software, incluindo o uso das classes `Pessoa` e `Validador`, bem como uma estrutura de repetição `while` para validação em tempo real.

## Classes Principais

### Classe `Pessoa`

A classe `Pessoa` é o cerne da calculadora de IMC. Ela armazena informações essenciais, como nome, peso e altura do usuário. Além disso, oferece funcionalidades para calcular o IMC e determinar a classificação com base nos limites estabelecidos em uma tabela de referência.

A função `getClassificacaoIMC` dentro da classe `Pessoa` utiliza uma abordagem elegante. Ela emprega uma lista que contém dicionários com faixas de IMC correspondentes às suas classificações. Um laço `for` percorre essas faixas e, assim que a faixa correta é encontrada, a função retorna a classificação correspondente. Isso resulta em código mais legível, fácil de entender e menos propenso a erros.

### Classe `Validador`

A classe `Validador` desempenha um papel crucial na verificação e validação dos dados inseridos pelos usuários. Ela garante que apenas informações válidas sejam processadas pela calculadora de IMC. As funções desta classe validam nome, peso e altura, verificando se não são nulos e se atendem aos critérios estabelecidos.

## Validação em Tempo Real

Uma das características distintivas deste projeto é a utilização da estrutura de repetição `while` para garantir que o usuário só possa prosseguir no aplicativo quando inserir dados válidos. Essa abordagem de validação em tempo real ajuda a manter a integridade dos dados e oferece uma experiência mais amigável ao usuário, evitando erros de cálculo.

## Testes

Os testes deste projeto concentram-se nas classes `Pessoa` e `Validador`. Isso ocorre porque o aplicativo retorna resultados customizados aos usuários, facilitando a compreensão do resultado do IMC. Os testes garantem que as funções críticas do aplicativo funcionem corretamente e produzam os resultados esperados.

## Como Rodar o Projeto

Para rodar o projeto, siga estas etapas:

1. Abra o console de comandos.

2. Certifique-se de estar na pasta raiz do projeto, chamada `calculadora_imc`.

3. Uma vez verificado, basta digitar o seguinte comando:

```shell
dart run
```

Para rodar os testes do projeto, basta digitar o seguinte comando:
```shell
dart run test
```

## Conclusão

Em resumo, a calculadora de IMC é uma demonstração de boa engenharia de software, validação robusta de dados e um design de código eficaz. Ela oferece uma experiência confiável e amigável aos usuários, fornecendo informações úteis sobre saúde e bem-estar de forma clara e acessível.

---
