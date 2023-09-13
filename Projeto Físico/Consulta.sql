-- PROJETO DA DISPLINA DE GDI 
-- ALUNOS: LUCAS FERROPADILHA PAIVA
--         LÍGIA FERROPADILHA PAIVA <- minha esposa
--         MARIANA MELO
--         NATHÁLIA COELHO
--         TIAGO LIMA
--         JULIA DIAS
---------------------------------------------------------------------------------------
-- SISTEMA DE EMISSÃO DE CNH - CONSULTAS
---------------------------------------------------------------------------------------

-- GROUP BY/HAVING
-- Encontrar a média salarial dos instrutores agrupados pelo CNPJ da autoescola em que trabalham, 
-- tendo em conta apenas as autoescolas onde a média salarial é maior que 5000.
SELECT TRABALHA.CNPJ, AVG(INSTRUTOR.salario) AS Média_Salarial
FROM TRABALHA INNER JOIN INSTRUTOR ON TRABALHA.CPF_instrutor = INSTRUTOR.CPF
GROUP BY TRABALHA.CNPJ
HAVING AVG(INSTRUTOR.salario) > 5000;

-- PROJETAR A MEDIA DE SALARIO DO INSTRUTOR POR AUTOESCOLA
SELECT A.nome, AVG(I.salario) AS SALARIO_MEDIO
FROM INSTRUTOR I INNER JOIN AUTOESCOLA A ON I.CPF = A.CPF_coordenador
GROUP BY A.nome;

-- JUNÇÃO INTERNA
-- Listar o nome dos alunos e os nomes dos instrutores das respectivas aulas.
SELECT ALUNO.nome AS Nome_Aluno, INSTRUTOR.nome AS Nome_Instrutor
FROM DA_AULA INNER JOIN ALUNO ON DA_AULA.CPF_aluno = ALUNO.CPF INNER JOIN INSTRUTOR ON DA_AULA.CPF_instrutor = INSTRUTOR.CPF;

-- PROJETAR OS ALUNOS E SEUS RESPECTIVOS INSTRUTORES
SELECT A.nome AS Nome_Aluno, I.nome AS Nome_Instrutor
FROM ALUNO A, INSTRUTOR I, DA_AULA DA
WHERE A.CPF = DA.CPF_aluno AND I.CPF = DA.CPF_instrutor;

-- JUNÇÃO EXTERNA
-- Listar todas as autoescolas e os instrutores coordenadores, mesmo que não tenham um coordenador atribuído.
SELECT AUTOESCOLA.nome AS Nome_Autoescola, INSTRUTOR.nome AS Nome_Coordenador
FROM AUTOESCOLA LEFT JOIN INSTRUTOR ON AUTOESCOLA.CPF_coordenador = INSTRUTOR.CPF;

-- SEMI JUNÇÃO
-- Listar os alunos que fizeram ao menos uma aula.
SELECT ALUNO.nome 
FROM ALUNO
WHERE EXISTS (SELECT 1 FROM DA_AULA WHERE DA_AULA.CPF_aluno = ALUNO.CPF);

-- ANTI-JUNÇÃO
-- Listar os alunos que não fizeram nenhuma aula.
SELECT ALUNO.nome 
FROM ALUNO
WHERE NOT EXISTS (SELECT 1 FROM DA_AULA WHERE DA_AULA.CPF_aluno = ALUNO.CPF);

-- SUBCONSULTA DO TIPO ESCALAR
-- Listar o instrutor com o maior salário.
SELECT nome, salario 
FROM INSTRUTOR
WHERE salario = (SELECT MAX(salario) FROM INSTRUTOR);

-- projetar os nomes dos instrutores com o salario maior que o salario medio geral (subconsulta ESCALAR)
SELECT I.nome
FROM INSTRUTOR I
WHERE I.salario > (
    SELECT AVG(salario)
    FROM INSTRUTOR
);


-- SUBCONSULTA DO TIPO LINHA

-- projetar os nomes dos alunos que  não fizeram o PRATICO
SELECT A.NOME
FROM ALUNO A
WHERE NOT EXISTS (SELECT 1 FROM PRATICO B WHERE B.CPF_ALUNO = A.CPF);

-- SUBCONSULTA DO TIPO TABELA
-- Listar os nomes dos alunos que passaram na prova prática.
SELECT nome 
FROM ALUNO
WHERE CPF IN (SELECT CPF_aluno 
        FROM PRATICO 
        WHERE Resultado = 1);

-- OPERAÇÃO DE CONJUNTO
-- Listar todos os CPFs únicos de instrutores e funcionários.
SELECT CPF 
FROM INSTRUTOR
UNION
SELECT CPF 
FROM FUNCIONARIO;
