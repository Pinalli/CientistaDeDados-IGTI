select * from empregado
where superssn = (select ssn
                  from empregado
                  where pnome = 'Franklin' 
                  and unome = 'Wong');

