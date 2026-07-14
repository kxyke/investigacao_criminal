# Sistema Especialista para Análise de Investigação Criminal

> Projeto acadêmico desenvolvido para a disciplina de Linguagem e Paradigmas de Programação.

Sistema que sugere suspeitos ou teorias baseadas em evidências e testemunhos.

## Funcionalidades

- Análise de evidências como:
  - Impressões digitais
  - Testemunha ocular
  - Motivo financeiro
  - Arma do crime

## Tecnologias Utilizadas

- **Prolog**

## Como Executar

### Pré-requisitos

- **SWI-Prolog**

### Passos

1. Clone o repositório:
   ```bash
   git clone https://github.com/kxyke/investigacao_criminal.git
   cd investigacao_criminal
   ```

2. Inicie o SWI-Prolog carregando o arquivo do projeto:
   ```bash
   swipl investigacao_criminal.pl
   ```

3. Execute a consulta de análise:
   ```prolog
   ?- analisar.
   ```

4. Responda `sim` ou `nao` para cada evidência apresentada. Veja um exemplo completo em [`Exemplo_de_uso`](./Exemplo_de_uso).
