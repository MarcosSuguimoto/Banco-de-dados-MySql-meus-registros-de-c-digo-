/*comandos básicos para criação de tabelas em mysql*/

CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(20) NOT NULL,
    nascimento DATE,
)

/*comando para inserção de dados na tabela*/

INSERT INTO pessoas (nome, nascimento) VALUES ('Marcos', '1989-07-17')
INSERT INTO pessoas (nome, nascimento) VALUES ('Martin', '2018-10-31')
INSERT INTO pessoas (nome, nascimento) VALUES ('Maytê', '1994-02-07')

/*query e comandos de edição de tabela mais utilizados em mysql*/

SELECT * FROM pessoas; /*seleciona todos os dados da tabela*/

SELECT nome FROM pessoas; /*seleciona um dado especifico da tabela*/
SELECT nome, nascimento FROM pessoas;

UPDATE pessoas SET nome='Marcos Silva' WHERE id=1; /*Atualiza um dado em um campo da tabela*/

DELETE FROM pessoas WHERE id=1; /*deleta permanentemente o dado!*/

SELECT * FROM pessoas ORDER BY nome; /*orderna os dados da tabela de forma crescente (padrão)*/
SELECT * FROM pessoas ORDER BY nome DESC; /*orderna os dados da tabela de forma decrescente*/


ALTER TABLE 'pessoas' ADD 'genero' VARCHAR(1) NOT NULL AFTER 'nascimento'; /*inclui um novo campo a tabela*/

SELECT COUNT(id), genero FROM pessoas GROUP BY genero; /*agrupa e conta dados de campos iguais*/

/* operações via terminal command line*/

/opt/lampp/bin/mysql -u root -p /*acesso ao command line no linux*/

mysql -u root -p /*acesso ao command line no window*/

show databases; /*mostra todos os databases*/

use "nome do database" /*acessa o database informado*/

show tables; /*mostra as tabelas do database anterioremente informado*/

CREATE TABLE cursos(id_curso INT NOT NULL AUTOINCREMENT, nome VARCHAR(10)) /*criação de uma nova tabela no database*/

INSERT INTO cursos (nome) VALUES ('HTML'); /*Inserindo campos na tabela*/

SELECT FROM cursos; /*mostra a tabela e os dados dos campos*/

UPDATE cursos SET nome-'HTML5' WHERE id_curso-1; /*atualização de uma campo da tabela*/

ALTER TABLE cursos ADD carga_horaria INT(2); /*cria um novo campo ao fim da tabela*/

DROP TABLE "nome da tabela;" /*deleta permanentemente uma tabela*/

/* relacionamento de tabelas com JOIN*/

SELECT * FROM tabela1 JOIN tabela2 ON campo_FK = campo.id da outra tabela /*cria uma terceira tabela que junta todo os campos da tabela indicas*/

SELECT tabela1.campo, tabela2.campo2 FROM tabela1 JOIN tabela2 ON campo_FK = campo.id da outra tabela /*cria uma terceira tabela apenas com os campos indicados*/

SELECT tabela1.campo, tabela2.campo2 FROM tabela1 JOIN tabela2 ON campo_FK = campo.id da outra tabela 
JOIN tabela3 ON tabela1.campo_FK = campo.id tabela3; /*aplicando JOIN para 3 tabelas do mesmo batabase*/

SELECT * FROM tabela1 AS t1 JOIN tabela2 AS t2; /*a clásula AS é utilizada para dar nome/apelido mais curtos a tabelas*/

INNER JOIN /*O INNER JOIN  ou JOIN retornam apenas os campos com dados em uma query*/

OUTER JOIN /*retorna todos os campos em uma query estando o campo preenchido ou vazio, é necessário definir o lado da tabela onde o campo vazio será apresentado*/
SELECT * FROM tabela1 AS t1 RIGHT OUTER JOIN tabela2 AS t2; /*os campos vazios posicionados à direita*/
SELECT * FROM tabela1 AS t1 LEFT OUTER JOIN tabela2 AS t2; /*os campos vazios posicionados à esquerda*/

UNION /*a cláusa UNION faz a união de query diferentes que tenham o mesmo número de colunas*/
