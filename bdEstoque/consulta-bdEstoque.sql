USE bdEstoque

--DROP DATABASE bdEstoque

--EXERCICIOS IMPARES

--01
SELECT SUM(valorTotalVenda) AS Soma FROM tbVenda
WHERE MONTH(dataVenda) = 2 or MONTH(dataVenda) = 3 or YEAR(dataVenda) = 2014

--02
SELECT SUM(quantidadeProduto) FROM tbProduto

--03
SELECT MAX(valorProduto) AS MAIOR FROM tbProduto

