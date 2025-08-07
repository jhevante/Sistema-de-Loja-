-- Consulta com INNER JOIN e filtro
SELECT 
    cr.idConta AS 'ID da Conta',
    c.nome AS 'Nome do Cliente',
    c.cpf AS 'CPF',
    cr.dataVencimento AS 'Data de Vencimento',
    cr.valor AS 'Valor (R$)'
FROM ContraReceber cr
INNER JOIN Cliente c ON cr.idCliente = c.idCliente
WHERE c.situacao = 1;