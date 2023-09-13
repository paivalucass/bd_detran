-- PROJETO DA DISPLINA DE GDI 
-- ALUNOS: LUCAS FERROPADILHA PAIVA
--         LÍGIA FERROPADILHA PAIVA <- minha esposa
--         MARIANA MELO
--         NATHÁLIA COELHO
--         TIAGO LIMA
--         JULIA DIAS
---------------------------------------------------------------------------------------
-- SISTEMA DE EMISSÃO DE CNH - PROCEDIMENTOS E FUNÇÕES
---------------------------------------------------------------------------------------

-- PROCEDIMENTO QUE PRINTA O NOME DAS AUTOESCOLAS CREDENCIADAS EM UM DETRAN
CREATE OR REPLACE PROCEDURE get_autoescolas_by_detran (CODIGO DETRAN.COD%TYPE) IS
    CURSOR cur_autoescola IS 
        SELECT nome 
        FROM AUTOESCOLA
        WHERE COD_detran = CODIGO;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nomes das autoescolas credenciadas no detran' ||CODIGO||':');
        FOR reg_cursor IN cur_autoescola LOOP
            DBMS_OUTPUT.PUT_LINE('Autoescola:' ||reg_cursor.nome);
        END LOOP;
    END;
    /

-- GATILHO
CREATE OR REPLACE TRIGGER check_funcionario_chefe
BEFORE INSERT OR UPDATE ON FUNCIONARIO
FOR EACH ROW    
BEGIN 
    IF :NEW.chefe = :NEW.CPF THEN
        RAISE_APPLICATION_ERROR(-20000, 'O chefe não pode ser ele mesmo!!');
    END IF;
END;

-- FUNÇÃO PARA CONTAR A QUANTIDADE DE EXAMES REALIZADOS POR CADA ALUNO

CREATE OR REPLACE FUNCTION qtd_tentativas (CPF ALUNO.CPF%TYPE, tipo VARCHAR) RETURN NUMBER IS
  qtd NUMBER;
BEGIN 
    IF tipo LIKE '%pratico%' THEN
        SELECT COUNT (*) INTO qtd 
        FROM PRATICO
        WHERE CPF_aluno = CPF;
    ELSIF tipo LIKE '%teorico%' THEN
        SELECT COUNT (*) INTO qtd 
        FROM TEORICO
        WHERE CPF_aluno = CPF;
    ELSIF tipo LIKE '%psicotecnico%' THEN
        SELECT COUNT (*) INTO qtd 
        FROM PSICOTECNICO
        WHERE CPF_aluno = CPF;
    END IF;

    RETURN qtd;
END;

-- GATILHO QUE IMPEDE QUE UM ALUNO COM MATRÍCULA BLOQUEADA REALIZE O EXAME PRÁTICO

CREATE OR REPLACE TRIGGER check_bloqueio_matricula
BEFORE INSERT OR UPDATE ON Pratico
FOR EACH ROW
DECLARE
    v_aluno_exists NUMBER;
BEGIN
    -- Verifique se uma matrícula com o CPF_aluno existe na tabela MATRICULA com COD não NULL
    SELECT COUNT(*)
    INTO v_aluno_exists
    FROM MATRICULA
    WHERE cpf = :NEW.CPF_aluno AND COD_detran IS NOT NULL;

    IF v_aluno_exists > 0 THEN
        RAISE_APPLICATION_ERROR(-20000, 'Um aluno com matrícula bloqueada não pode realizar o exame prático!!');
    END IF;
END;

-- FUNCAO PARA CONTAR A QUANTIDADE DE AULAS DADAS POR UM INSTRUTOR EM DETERMINADO CARRO
CREATE OR REPLACE FUNCTION qtd_aulas_dadas(CPF_instrutor_param VARCHAR, PLACA_desejada VARCHAR) RETURN NUMBER IS 
    qtd NUMBER;
BEGIN
    SELECT COUNT(*) INTO qtd
    FROM DA_AULA
    WHERE CPF_instrutor = CPF_instrutor_param AND PLACA_desejada = placa;
    
    RETURN qtd;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 50;
END;
/

-- PROCEDIMENTO QUE MOSTRA OS NOMES DO INSTRUTORES DE DETERMINADA AURTOESCOLA
CREATE OR REPLACE PROCEDURE nome_instrutores(CNPJ_autoescola TRABALHA.CNPJ%TYPE) IS
    CURSOR cur_instrutores IS
        SELECT I.nome
        FROM TRABALHA T INNER JOIN INSTRUTOR I ON T.CPF_instrutor = I.CPF
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Quantidade de instrutores da autoescola' ||CNPJ_autoescola||':');
        FOR reg_cursor IN cur_instrutores LOOP
            DBMS_OUTPUT.PUT_LINE('Instrutor:' ||reg_cursor.nome);
        END LOOP;
    END;




-- /
-- Bloco anônimo para chamar a função acima
--DECLARE
   -- O NUMBER;
--BEGIN
    --O:= qtd_tentativas('77665716199', 'pratico');
    --DBMS_OUTPUT.PUT_LINE('Quantidade de testes praticos: ' || O);
--END;

--/




























