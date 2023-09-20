insert into tipo_livro (id_livro,titulo,autor,id_assunto,lancamento,copiar,valor_pago,ISBN)
values("Terror"),("ação"),("suspense"),("comédia"),("romance");
insert into livro (titulo,id_assunto,ISBN)
values("Frankenstein",3,"55555");

insert into emprestimo (data_emprestimo,data_devolucao,livro_id_livro,aluno_id_aluno)
values(now(),"2023-10-01",2,1);

select * from aluno where 3;