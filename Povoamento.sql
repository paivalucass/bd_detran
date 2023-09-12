-- PROJETO DA DISPLINA DE GDI 
-- ALUNOS: LUCAS FERROPADILHA PAIVA
--         LÍGIA FERROPADILHA PAIVA <- minha esposa
--         MARIANA MELO
--         NATHÁLIA COELHO
--         THIAGO LIMA
--         JULIA DIAS
---------------------------------------------------------------------------------------
-- SISTEMA DE EMISSÃO DE CNH - POVOAMENTO
---------------------------------------------------------------------------------------

-- POVOAMENTO INSTRUTORES
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('71657211428', 'Paiva', 60000);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('12912976421', 'Liginha', 00381);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('12345678901', 'Mariana', 75000);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('14567280091', 'Nathália', 30000);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('56700813271', 'Thiago', 40000);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('10230198816', 'Julia', 50000);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('12345670901', 'Geraldo', 8002);
INSERT INTO Instrutor (CPF, nome, salario) VALUES ('12345678881', 'Stefan Blawid', 99999);

-- POVOAMENTO DETRANS
INSERT INTO Detran (COD, endereço_logradouro, endereço_CEP) VALUES ('1111', 'Rua do Azul', '12345678');  
INSERT INTO Detran (COD, endereço_logradouro, endereço_CEP) VALUES ('2222', 'Rua da Pitangueira', '5736020');
INSERT INTO Detran (COD, endereço_logradouro, endereço_CEP) VALUES ('3333', 'RUInha', '22345678');
INSERT INTO Detran (COD, endereço_logradouro, endereço_CEP) VALUES ('4444', 'Rua Padre Todo Coisado', '11345678');

-- POVOAMENTO DE AUTOESCOLAS
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901234', '3333', '71657211428', 'Auto Escola Petrolina');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901232', '1111', '14567280091', 'Auto Escola Maceió');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901554', '2222', '56700813271', 'Auto Escola Me Ajuda Deus');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901222', '3333', '12345678901', 'Auto Escolinha');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901211', '4444', '12345678881', 'Auto Socorro');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('13345678701234', '1111', '12912976421', 'Auto Escola Enrolados');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901255', '2222', '10230198816', 'Auto Marola');
INSERT INTO AutoEscola (CNPJ, COD, CPF, nome) VALUES ('12345678901277', '3333', '71657211428', 'Auto Escola Escola');

-- POVOAMENTO FUNCIONÁRIO
INSERT INTO Funcionario (CPF) VALUES ('1111211311');
INSERT INTO Funcionario (CPF) VALUES ('3112448901');
INSERT INTO Funcionario (CPF) VALUES ('9872231342');
INSERT INTO Funcionario (CPF) VALUES ('1093451281');
INSERT INTO Funcionario (CPF) VALUES ('9827164820');
INSERT INTO Funcionario (CPF) VALUES ('7829019384');
INSERT INTO Funcionario (CPF) VALUES ('9988896173');
INSERT INTO Funcionario (CPF) VALUES ('0098725719');

-- POVOANDO ALUNO
INSERT INTO Aluno (nome, CPF) VALUES ('Vic Xavier', '6688896173');
INSERT INTO Aluno (nome, CPF) VALUES ('Renata', '42180436420');
INSERT INTO Aluno (nome, CPF) VALUES ('Maria Leticia', '22468975423');
INSERT INTO Aluno (nome, CPF) VALUES ('Robson', '32725716001');
INSERT INTO Aluno (nome, CPF) VALUES ('Jesus', '32665716702');
INSERT INTO Aluno (nome, CPF) VALUES ('Maria', '32465718113');
INSERT INTO Aluno (nome, CPF) VALUES ('José', '32665716199');
INSERT INTO Aluno (nome, CPF) VALUES ('João', '32445716199');
INSERT INTO Aluno (nome, CPF) VALUES ('Alexandre', '77665716199');

-- POVOANDO EXAME
INSERT INTO EXAME (COD, tipo) VALUES ('1111', 'Psicotécnico');
INSERT INTO EXAME (COD, tipo) VALUES ('2222', 'Prático');
INSERT INTO EXAME (COD, tipo) VALUES ('3333', 'Teórico');
INSERT INTO EXAME (COD, tipo) VALUES ('4444', 'Prático');
INSERT INTO EXAME (COD, tipo) VALUES ('5555', 'Teórico');
INSERT INTO EXAME (COD, tipo) VALUES ('6666', 'Psicotécnico');
INSERT INTO EXAME (COD, tipo) VALUES ('7777', 'Prático');
INSERT INTO EXAME (COD, tipo) VALUES ('8888', 'Prático');
INSERT INTO EXAME (COD, tipo) VALUES ('9999', 'Psicotécnico');