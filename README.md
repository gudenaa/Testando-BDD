# Testando BDD

Material de estudo de Banco de Dados (2º bimestre).

## Arquivos

| Arquivo | O que é |
|---|---|
| `Resumo_2Bim_Explicado.txt` | Resumo completo: CREATE TABLE, INSERT, SELECT, ligação no WHERE, JOINs, GROUP BY, UNION, VIEW e tutorial do DBeaver, com as listas resolvidas e comentadas. Roda inteiro num PostgreSQL vazio. |
| `script.sql` | Script original do professor ([DouglasLopesFarias/Banco-de-Dados](https://github.com/DouglasLopesFarias/Banco-de-Dados), pasta `2Bim`), sem alterações. |
| `complemento_fornecedor_compra.sql` | Inserts de FORNECEDOR, COMPRA e COMPRA_ITENS. O `script.sql` não tem esses dados, e sem eles as consultas de compras voltam vazias. |
| `apresentacao_cidade_tipo_media.sql` | Consulta da apresentação: **cidade, tipo e média** (UNION de vendas e compras com `AVG`). |

## Ordem para rodar (banco vazio)

Opção A, só os `.sql`:
1. `script.sql`
2. `complemento_fornecedor_compra.sql`
3. `apresentacao_cidade_tipo_media.sql`

Opção B: rodar só o `Resumo_2Bim_Explicado.txt`, que já tem tudo isso.

Não misture as duas opções no mesmo banco: as duas criam as mesmas tabelas.

## Destaques do resumo

- Parte 6: a consulta **cidade | tipo | média** explicada passo a passo, com o resultado esperado.
- Parte 8: tutorial do **DBeaver** (instalar, conectar no PostgreSQL, rodar o script, ver as tabelas e resolver os erros mais comuns).
