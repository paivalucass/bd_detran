-- PROJETO DA DISPLINA DE GDI 
-- ALUNOS: LUCAS FERROPADILHA PAIVA
--         LÍGIA FERROPADILHA PAIVA <- minha esposa
--         MARIANA MELO
--         NATHÁLIA COELHO
--         TIAGO LIMA
--         JULIA DIAS
---------------------------------------------------------------------------------------
-- SISTEMA DE EMISSÃO DE CNH - POVOAMENTO
---------------------------------------------------------------------------------------

-- POVOAMENTO INSTRUTOR
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('71657211428', 'Paiva', 60000);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('12912976421', 'Liginha', 00381);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('12345678901', 'Mariana', 75000);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('14567280091', 'Nathália', 30000);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('56700813271', 'Tiago', 40000);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('10230198816', 'Julia', 50000);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('12345670901', 'Geraldo', 8002);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('12345678881', 'Stefan Blawid', 99999);
INSERT INTO INSTRUTOR (CPF, nome, salario) VALUES ('12345678899', 'Jefferson', 99999);


-- POVOAMENTO DETRAN
INSERT INTO DETRAN (COD, endereço_logradouro, endereço_CEP) VALUES (1, 'Rua do Azul', '12345678');  
INSERT INTO DETRAN (COD, endereço_logradouro, endereço_CEP) VALUES (2, 'Rua da Pitangueira', '5736020');
INSERT INTO DETRAN (COD, endereço_logradouro, endereço_CEP) VALUES (3, 'RUInha', '22345678');
INSERT INTO DETRAN (COD, endereço_logradouro, endereço_CEP) VALUES (4, 'Rua Padre Todo Coisado', '11345678');

-- POVOAMENTO DE AUTOESCOLA
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901234', 3, '71657211428', 'Auto Escola Petrolina');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901232', 1, '14567280091', 'Auto Escola Maceió');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901554', 2, '56700813271', 'Auto Escola Me Ajuda Deus');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901222', 3, '12345678901', 'Auto Escolinha');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901211', 4, '12345678881', 'Auto Socorro');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('13345678701234', 1, '12912976421', 'Auto Escola Enrolados');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901255', 2, '10230198816', 'Auto Marola');
INSERT INTO AUTOESCOLA (CNPJ, COD_detran, CPF_coordenador, nome) VALUES ('12345678901277', 3, '12345670901', 'Auto Escola Escola');

-- POVOANDO CONTATO	
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901234', '12345678');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901232', '57326020');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901554', '22345678');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901222', '11345678');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901211', '12345678');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('13345678701234', '12912976');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901255', '10230198');
INSERT INTO CONTATO (CNPJ, contato) VALUES ('12345678901277', '71657211');

-- POVOANDO ALUNO
INSERT INTO ALUNO (nome, CPF) VALUES ('Vic Xavier', '66888961731');
INSERT INTO ALUNO (nome, CPF) VALUES ('Renata', '42180436422');
INSERT INTO ALUNO (nome, CPF) VALUES ('Maria Leticia', '22468975423');
INSERT INTO ALUNO (nome, CPF) VALUES ('Robson', '32725716001');
INSERT INTO ALUNO (nome, CPF) VALUES ('Jesus', '32665716702');
INSERT INTO ALUNO (nome, CPF) VALUES ('Maria', '32465718113');
INSERT INTO ALUNO (nome, CPF) VALUES ('José', '32665716199');
INSERT INTO ALUNO (nome, CPF) VALUES ('João', '32445716199');
INSERT INTO ALUNO (nome, CPF) VALUES ('Alexandre', '77665716199');

--  POVOANDO CARROS
INSERT INTO CARRO (Placa) VALUES ('ABC1234');
INSERT INTO CARRO (Placa) VALUES ('DEF5678');
INSERT INTO CARRO (Placa) VALUES ('GHI9012');
INSERT INTO CARRO (Placa) VALUES ('JKL3456');
INSERT INTO CARRO (Placa) VALUES ('MNO7890');
INSERT INTO CARRO (Placa) VALUES ('PQR1234');
INSERT INTO CARRO (Placa) VALUES ('STU5678');

-- POVOANDO DA_AULA
INSERT INTO DA_AULA (CPF_aluno, CPF_instrutor, placa, data_hora) VALUES ('32665716199', '71657211428', 'ABC1234', TO_TIMESTAMP('2020-10-10 10:10:10', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DA_AULA (CPF_aluno, CPF_instrutor, placa, data_hora) VALUES ('32725716001', '12345678881', 'DEF5678', TO_TIMESTAMP('2023-03-10 23:09:55', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DA_AULA (CPF_aluno, CPF_instrutor, placa, data_hora) VALUES ('42180436422', '14567280091', 'MNO7890', TO_TIMESTAMP('2000-01-10 13:02:12', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO DA_AULA (CPF_aluno, CPF_instrutor, placa, data_hora) VALUES ('77665716199', '71657211428', 'PQR1234', TO_TIMESTAMP('2020-10-10 10:10:10', 'YYYY-MM-DD HH24:MI:SS'));

-- POVOANDO TRABALHA
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('71657211428', '12345678901234');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('12912976421', '12345678901232');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('12345678901', '12345678901554');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('14567280091', '12345678901222');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('56700813271', '12345678901211');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('10230198816', '12345678901255');
INSERT INTO TRABALHA (CPF_instrutor, CNPJ) VALUES ('12345678881', '12345678901277');

-- POVOANDO MATRICULA
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('12345678901234', '32665716199', 3);
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('12345678901232', '32725716001', 1);
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('12345678901554', '42180436422', 2);
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('12345678901222', '77665716199', 3);
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('12345678901211', '32665716702', 4);
INSERT INTO MATRICULA (CNPJ, CPF, COD_detran) VALUES ('13345678701234', '32445716199', 1);

-- POVOAMENTO FUNCIONÁRIO
INSERT INTO FUNCIONARIO (CPF, COD_detran) VALUES ('78290193842', 1);
INSERT INTO FUNCIONARIO (CPF, COD_detran, chefe) VALUES ('11112113113', 1, '78290193842');
INSERT INTO FUNCIONARIO (CPF, COD_detran, chefe) VALUES ('31124489021', 1, '78290193842');
INSERT INTO FUNCIONARIO (CPF, COD_detran) VALUES ('99888961731', 2);
INSERT INTO FUNCIONARIO (CPF, COD_detran, chefe) VALUES ('98722313428', 2, '99888961731');
INSERT INTO FUNCIONARIO (CPF, COD_detran) VALUES ('03748572609', 3);
INSERT INTO FUNCIONARIO (CPF, COD_detran, chefe) VALUES ('10934512810', 3, '03748572609');
INSERT INTO FUNCIONARIO (CPF, COD_detran) VALUES ('00987257198', 4);

-- POVOANDO PSICOTÉCNICO
INSERT INTO PSICOTECNICO (COD, Resultado, Observacoes, CPF_aluno, CPF_funcionario) VALUES (1, 0, 'Não passou no teste', '32665716702', '78290193842');
INSERT INTO PSICOTECNICO (COD, Resultado, Observacoes, CPF_aluno, CPF_funcionario) VALUES (2, 1, 'Passou no teste', '32445716199', '78290193842');
INSERT INTO PSICOTECNICO (COD, Resultado, Observacoes, CPF_aluno, CPF_funcionario) VALUES (3, 0, 'Não passou de novo vic :(', '66888961731', '78290193842');

-- POVOANDO TEÓRICO
INSERT INTO TEORICO (COD, Resultado, Pontuacao, CPF_aluno, CPF_funcionario) VALUES (4, 1, 20, '32665716199', '99888961731');
INSERT INTO TEORICO (COD, Resultado, Pontuacao, CPF_aluno, CPF_funcionario) VALUES (5, 1, 18, '32465718113', '99888961731');
INSERT INTO TEORICO (COD, Resultado, Pontuacao, CPF_aluno, CPF_funcionario) VALUES (6, 0, 15, '22468975423', '99888961731');

-- POVOANDO PRÁTICO
INSERT INTO PRATICO (COD, Resultado, Local_prova, CPF_aluno, CPF_funcionario) VALUES (7, 1, 'Petrolina', '77665716199', '00987257198');
INSERT INTO PRATICO (COD, Resultado, Local_prova, CPF_aluno, CPF_funcionario) VALUES (8, 0, 'Mirabilandia', '32725716001', '00987257198');
INSERT INTO PRATICO (COD, Resultado, Local_prova, CPF_aluno, CPF_funcionario) VALUES (9, 1, 'COC', '42180436422', '00987257198');

-- POVOANDO QUESTÕES
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (1, 4, 'Qual a cor do cavalo branco de Napoleão?', 'Branco', 'Preto', 'Azul', 'Amarelo', 1);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (2, 4, 'O que você deve fazer ao ver um idoso atravessar a rua?', 'Acelerar', 'Desacelerar', 'Parar totalmente o carro.', 'Atropelar', 3);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (3, 4, 'O que faz o segundo pedal do carro manual?', 'Engata a embreagem', 'Freia o carro', 'Acelera', 'Tira print', 2);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (4, 4, 'Em qual cor de sinal você deve parar o carro?', 'Branco', 'Preto', 'Verde', 'Vermelho', 4);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (5, 4, 'O que fazem as listras paralelas na pista?', 'Sinalizam um local para travessia de pedrestes', 'Sinalizam que você deve acelerar o carro', 'Sinalizam que você deve desacelerar o carro', 'Sinalizam que você deve parar o carro', 1);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (6, 4, 'A placa de PARE significa:', 'Acelerar', 'Desacelerar', 'Parar totalmente o carro.', 'Atropelar', 3);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (7, 4, 'O que é um cavalo?', 'Um animal', 'Um carro', 'Um animal que anda de carro', 'Um carro que anda de animal', 1);
INSERT INTO QUESTAO (ID, COD, Enunciado, Alt1, Alt2, Alt3, Alt4, Alt_correta) VALUES (8, 4, 'O que é, o que é? Tem 4 rodas e anda?', 'Um carro', 'Um tricilo', 'Um monociclo', 'Um caminhão de 6 rodas', 1);
