-- Apresentação: CIDADE | TIPO | MÉDIA
-- Ordem pra rodar num banco vazio:
--   1) script.sql                         (tabelas + dados do professor)
--   2) complemento_fornecedor_compra.sql  (fornecedores e compras, que o script não tem)
--   3) este arquivo
-- Explicação passo a passo: Resumo_2Bim_Explicado.txt, Parte 6.

-- Média do VALOR das vendas e das compras por cidade
SELECT CI.NOME AS CIDADE, 'VENDAS' AS TIPO, ROUND(AVG(V.VALOR_TOTAL), 2) AS MEDIA
FROM CIDADE CI
INNER JOIN CLIENTE CL ON CL.CIDADE_ID = CI.ID
INNER JOIN VENDA V    ON V.CLIENTE_ID = CL.ID
GROUP BY CI.NOME
UNION
SELECT CI.NOME, 'COMPRAS', ROUND(AVG(C.VALOR_TOTAL), 2)
FROM CIDADE CI
INNER JOIN FORNECEDOR F ON F.CIDADE_ID     = CI.ID
INNER JOIN COMPRA C     ON C.FORNECEDOR_ID = F.ID
GROUP BY CI.NOME
ORDER BY 1, 2;

-- Variação: média de QUANTIDADE de produtos (se o professor quiser essa)
SELECT CI.NOME AS CIDADE, 'VENDAS' AS TIPO, ROUND(AVG(VI.QT), 2) AS MEDIA
FROM CIDADE CI
INNER JOIN CLIENTE CL     ON CL.CIDADE_ID = CI.ID
INNER JOIN VENDA V        ON V.CLIENTE_ID  = CL.ID
INNER JOIN VENDA_ITENS VI ON VI.VENDA_ID   = V.ID
GROUP BY CI.NOME
UNION
SELECT CI.NOME, 'COMPRAS', ROUND(AVG(CO.QT), 2)
FROM CIDADE CI
INNER JOIN FORNECEDOR F    ON F.CIDADE_ID     = CI.ID
INNER JOIN COMPRA C        ON C.FORNECEDOR_ID = F.ID
INNER JOIN COMPRA_ITENS CO ON CO.COMPRA_ID    = C.ID
GROUP BY CI.NOME
ORDER BY 1, 2;
