-- select * from empregado
-- 8) Considere o banco de dados do enunciado. Crie uma consulta em SQL e responda: Qual a média salarial nessa empresa?
SELECT AVG(salario) FROM empregado;


-- 9) Quantos empregados do departamento 5 trabalham mais de 10h por semana no projeto chamado "ProductX"?
--select * from projeto;
--select * from dependente;
--select * from trabalha_em;

select count(*)
from empregado e, trabalha_em te, projeto p
WHERE 
	e.dno = 5 and p.pjnome = 'ProductX' 
    and te.horas > 10
    AND te.essn = e.ssn and te.pno = p.pnumero;


-- 10)Quantos empregados possuem um dependente com o mesmo primeiro nome que o deles?
SELECT COUNT(*) FROM empregado , dependente 
WHERE pnome = nome_dependente;

-- 11) Quais os nomes de todos os empregados que são diretamente supervisionados por Franklin Wong
SELECT e.pnome
FROM empregado e , empregado ger
WHERE
e.superssn = ger.ssn
AND ger.pnome = 'Franklin'
AND ger.unome = 'Wong';


-- 12) Quem é a pessoa que possui mais tempo de alocação no projeto 'Newbenefits'?
SELECT pnome, horas
from empregado, trabalha_em, projeto
WHERE  essn = ssn and pno = pnumero and pjnome = 'Newbenefits'
ORDER by  horas desc
LIMIT 1

--LIMIT 
--WHERE salario = (select max(salario) from empregado;
--SELECT * from empregado
--SELECT * from trabalha_em
-- SELECT * from projeto

-- 13) Qual é a soma dos salários de todos os empregados do departamento chamado 'Research'?

select sum(salario)
from empregado JOIN departamento
on dno = dnumero
where dnome = 'Research';


-- 14) Qual seria o custo do projeto com folha salarial (soma de todos os salários) 
--caso a empresa desse 10% de aumento para todos os empregados que trabalham no projeto 'ProductX'?

select sum(salario )* 1.1 
from empregado, trabalha_em, projeto
WHERE essn = ssn 
AND pno = pnumero
AND pjnome = 'ProductX';

-- 15) Qual o nome do departamento com a menor média de salário entre seus funcionários?
SELECT dnome , avg(salario)
from empregado, departamento
WHERE dno = dnumero
GROUP by dnome
ORDER by 2
limit 1;



