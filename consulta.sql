CREATE VIEW PagamentosaReceber as
Select cr.id as ContasID,
c.nome as ClienteNome,
c.cpf as ClienteCPF,
cr.DataVencimento,
cr.Valor
From contasreceber cr
join
cliente c on cr.Cliente_ID = c.id
where
cr.Situacao = '1';