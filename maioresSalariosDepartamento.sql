--neste caso utilizei o left join levando em conta se alguma pessoa não possua um departamento 
--setado ele trará o departamento em branco com o maior valor

select 'Departamento' = T1.Nome 
      ,'Pessoa' = T0.Nome
      ,'Salario' = T0.Salario 
from Pessoa T0 left join Departamento T1 on T0.DeptId = T1.Id 
where T0.Salario in (select max(salario) from Pessoa group by DeptId)
order by T0.Salario desc

