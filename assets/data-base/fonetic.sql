SELECT * FROM palavra;

DROP TABLE palavra;
DROP TABLE alternativa;
DROP SEQUENCE sqPalavra;


CREATE SEQUENCE sqPalavra  
    START WITH 32
    INCREMENT BY 32;
  

CREATE TABLE palavra (
    identificador INT,
    palavra VARCHAR2(12),
    som VARCHAR(15),
    nivel VARCHAR2(10),
    
    CONSTRAINT chave_constraint PRIMARY KEY (identificador)
);

CREATE TABLE alternativa (
    pronuncia VARCHAR2(12),
    palavra_id INT,
    
    CONSTRAINT fk_column FOREIGN KEY(palavra_id) REFERENCES palavra(identificador)
);


/*Preenchimento da tabela 'Palavra'*/
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'AGE', 'age.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'COW', 'cow.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'YES', 'yes.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'FLOWER', 'flower.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'LOOK', 'look.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'RABBIT', 'rabbit.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SPIDER', 'spider.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'TABLE', 'table.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'WATT', 'watt.mp3', 'EASY');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'WHAT', 'what.mp3', 'EASY');

INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'CHAIN', 'chain.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'FATHER', 'father.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'JAM', 'jam.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'KNIVES', 'knives.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'MOUSE', 'mouse.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'RANKER', 'ranker.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SAGE', 'sage.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SAW', 'saw.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SQUASH', 'squash.mp3', 'HARD');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'WROUGHT', 'wrought.mp3', 'HARD');

INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'ABOUT', 'about.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'ACTUAL', 'actual.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'CHOOSE', 'choose.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'CHURCH', 'church.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'JAGUAR', 'jaguar.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'PURE', 'pure.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SHEEP', 'sheep.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'SITTING', 'sitting.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'THROUGH', 'through.mp3', 'EXPERT');
INSERT INTO palavra(identificador, palavra, som, nivel) VALUES(sqpalavra.nextval, 'VISION', 'vision.mp3', 'EXPERT');

    
/*Preenchimento da tabela 'alternativa'*/                                                          
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              