-- 1
select nome_funcionario from funcionario
where sigla_depto = (select sigla_depto from departamento
where nome_depto like "Recursos Humanos%");

-- 2
select nome_funcionario from funcionario
where sigla_depto = (select sigla_depto from departamento
where sigla_depto like "%MKT%" and "%RH%");

-- 3
select nome_depto from departamento
where (select sum(salario) from funcionario);

-- 4 
select nome_funcionario, salario from funcionario
where sigla_depto = (select sigla_depto from departamento
where sigla_depto like "%IT%");

-- 5
select nome_depto, qtdfuncionariosdepto from departamento
where (select count(*)qtdfuncionariosdepto from departamento);

-- 6

