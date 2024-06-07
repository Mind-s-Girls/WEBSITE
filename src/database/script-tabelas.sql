-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
-- CRIAÇÃO DO BANCO DE DADOS MIND'S GIRLS
CREATE DATABASE Minds_Girls;
use Minds_Girls;

-- CADASTRO DO USUÁRIO NO WEBSITE
create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
cpf char(11),
senha varchar(45)
);

-- SEGUINDO A LÓGICA QUE 1 FORMAÇÃO PODE TER MUITAS CIENTISTAS E 1 CIENTISTA PODE TER VÁRIAS FORMAÇÕES É CRIADA UMA TABELA N:N

-- FORMAÇÕES
create table Formacao(
idFormacao int primary key auto_increment,
formacao varchar(45)
);

-- CADASTRO DAS HISTÓRIAS DAS CIENTISTAS 
create table Cientista(
idCientista int primary key auto_increment,
endImg varchar(2300),
nomeCompleto varchar(45),
nacionalidade varchar(45),
nascimento date,
falecimento date,
subtitulo varchar (100),
bio varchar(7000)
);
alter table cientista modify column bio varchar(7000);

insert into Cientista (endImg, nomeCompleto,  nacionalidade, nascimento, falecimento,subtitulo,bio )
values('https://s2-techtudo.glbimg.com/7YOBBhghbMF9wsUuBP7UcUh2yXI=/0x342:2439x2307/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/n/3/FbrmyhQneVYWGUPIe8vA/adalovelace.jpg',
'Augusta Ada Byron, Condessa de Lovelace',
'Inglatera',
'1815-12-10',
'1852-11-27',
'A primeira programadora da história',
'Augusta Ada Byron King, atualmente conhecida como Ada Lovelace,
              nasceu em 10 de Dezembro de 1815, em Londres na Inglaterra. Ada
              foi uma matemática e escritora, responsável por escrever aquele
              que veio a ser conhecido como o primeiro algoritmo de computador
              da história. Filha de George Gordon Byron, 6º Barão de Byron
              (Conhecido como Lord Byron), e Annabela Byron, Lady Wentworth,
              Lovelace teve uma infância abastada e muito confortável
              financeiramente, tendo se tornado ao longo de sua vida muito
              próxima da corte da rainha Vitória.   Por mais financeiramente estável que tenha sido a infância, Ada
              foi submetida desde cedo a inúmeros dramas emocionais devido ao
              relacionamento que seus pais tiveram. Seu pai, Lord Byron, foi um
              dos poetas mais proeminentes do romantismo, tendo se destacado
              muito por ter escrito uma das versões de Dom Juan. Dom Juan é
              escrito por Byron como um homem fraco, facilmente seduzido pelas
              mulheres, sendo levado a se relacionar com elas pelas
              circunstâncias em que se encontrava. É possível que Lord Byron
              tenha colocado um pouco de sua personalidade no personagem, pois o
              mesmo teve inúmeros casos extraconjugais, tendo tido vários
              filhos, sendo Ada, sua única filha dentro do casamento com
              Annabella. Logo após o nascimento de sua filha, o lorde assinou
              uma certidão de divorcio e abandonou sua família, fugindo da
              Inglaterra. Ele foi morto alguns meses depois, durante a Guerra de
              Independência Grega. Lady Wentworth ficou profundamente irritada
              com seu ex-marido, fazendo de tudo para que sua filha se tornasse
              diferente do pai. Desde cedo Ada foi tutorada pelos melhores
              cientistas da época, como Mary Somerville e Augustus De Morgan. A
              ideia por trás desta educação era afastar Ada da poesia e das
              artes, e consequentemente, da “loucura” do pai. Annabella foi uma
              mulher muito distante emocionalmente da filha, basicamente
              deixando-a para ser criada pela avó.          Apesar de todos os traumas psicológicos e manipulações sofridas
              por parte da mãe, e o abandono do pai, Ada manteve sua natureza
              criativa, aplicando-a veementemente em seus trabalhos como
              matemática. Ela costumava dizer que a metafísica era tão
              importante quanto a matemática, sendo ambas ferramentas essenciais
              para investigar “mundos invisíveis ao nosso redor”. Já mais velha,
              Ada se tornou amiga do matemático britânico Charles Babbage,
              cooperando com ele em seu trabalho sobre uma Máquina Analítica,
              uma máquina que teria como propósito realizar cálculos utilizando
              determinadas funções. Babbage nunca conseguiu finalizar sua
              máquina devido às limitações tecnológicas da época, contudo, em
              1985, um professor da Universidade de Sidney (Allan G. Bromley) e
              o curador do The London Science Museum (Doron Swade) revisaram o
              projeto original da Máquina Analítica e, ao longo de um período de
              17 anos, construíram o dispositivo. Atualmente, a máquina está
              exposta no The London Science Museum.  
               Em 1842, um jovem matemático e engenheiro italiano, chamado Luigi
              Federico Menabrea, publicou em francês um manuscrito de uma
              palestra dada por ele na Universidade de Turim. Ada se dedicou a
              traduzir esse artigo por pelo menos um ano, tendo terminado em
              1843 e adicionado algumas anotações no final do livro. Nessas tais
              anotações, Ada discorre sobre como a Máquina Analítica poderia ser
              usada para alavancar o progresso da sociedade e não só realizar
              meros cálculos, além de em sua última nota, escrever um algoritmo
              para que a máquina pudesse computar a Sequência de Bernoulli. Esse
              feito foi posteriormente reconhecido pela academia científica como
              sendo o primeiro programa de computador da história.
               (Nota G contendo o primeiro algoritmo de computador da história.
              Fonte: Note G © Magdalen College Libraries and Archives, Daubeny
              90.A.11).
                       Ada passou a ser conhecida como Ada Lovelace quando herdou o
              título de seus antepassados, os Barões de Lovelace. A partir desse
              evento, ela e seu marido, William Lord King, passaram a ser
              conhecidos como, Conde e Lady Lovelace. Ada morreu no dia 27 de
              Novembro de 1852, aos 36 anos, vítima de uma câncer de útero,
              deixando para trás um legado que serviu não apenas para alavancar
              a ciência da computação, mas também para inspirar dezenas de
              gerações de jovens cientistas que vieram depois dela.
              [Texto de autoria de João Thomaz M. C. Souza, estagiário do Núcleo
              de Astronomia].
           ');


insert into Cientista (endImg, nomeCompleto,  nacionalidade, nascimento, falecimento,subtitulo,bio )
values('https://i.pinimg.com/736x/2e/56/09/2e560966e5492d636f9cba6202bbf070.jpg',
'>Marie Skłodowska Curie',
'Polônia',
'1867-11-07',
'1934-07-04',
'A mãe da radiação',
'Marie Curie nasceu em 7 de novembro de 1867, na cidade de
              Varsóvia, na Polônia. Seu nome de batismo era Maria Sklodovska,
              sobrenome herdado de seu pai, professor de Matemática e Física,
              que se tornou diretor de uma escola anos mais tarde. Sua mãe,
              também professora, somente teve participação em sua educação até
              os 11 anos de idade, quando então faleceu.
         scida em um lar em que a ciência era o centro da família, Marie
              Curie sempre se interessou pelo conhecimento e, com a intenção de
              produzi-lo, desejava seguir a carreira universitária.

              Vivendo em um país dominado pela Rússia czarista, que não permitia
              de forma alguma o acesso das mulheres à educação formal, Marie
              Curie, por diversas vezes, montou grupos de estudos clandestinos
              para poder estudar e promover o conhecimento para outras pessoas.
          
              Em 1891, com a ajuda financeira do pai, Marie Curie conseguiu
              mudar-se para Paris, onde ingressou no curso de licenciatura em
              Física da Faculté de Sciences, que concluiu em 1893. Em 1894, ela
              conclui também o curso de Matemática.
          =
              Durante sua busca por um tema e por um orientador para seu
              doutorado, Marie conheceu o professor de Física Pierre Curie, com
              quem acabou casando-se em 1895. Os dois tiveram duas filhas, Éve e
              Irène.
          
              Marie Curie morreu em 1934, vítima de uma leucemia, em decorrência
              de toda a exposição à radiação a que foi submetida durante sua
              carreira científica e acadêmica.

              Na sua tese de doutorado, Marie Curie escolheu o tema raios
              urânicos, radiação que havia sido descoberta pelo físico inglês
              Becquerel. Em seu trabalho, ela conseguiu provar que o óxido de
              urânio é um mineral capaz de eliminar a radiação armazenada nos
              átomos.
         
              A partir dessa pesquisa, Marie Curie descobriu a radioatividade,
              já que Becquerel não prosseguiu com seus estudos com o urânio.
              Marie e Pierre Curie continuaram a buscar outros minerais na
              natureza que pudessem também apresentar atividade radioativa.
              Nessas pesquisas, eles desenvolveram uma técnica laboratorial
              denominada cristalização fracionada, que consiste em aquecer um
              material a elevadas temperaturas e resfriar gradativamente.
		
              No ano de 1898, Marie e Pierre Curie apresentam ao mundo
              científico a descoberta de dois novos elementos químicos, o
              polônio e o rádio. Com essas pesquisas, Pierre, em particular,
              verificou que a radiação podia matar células de tecido doente, ou
              seja, iniciou o estudo da radioterapia.
           
              Após a morte de Pierre, em 1906, Marie passou a lecionar e também
              continuou a realizar diversas pesquisas. Uma delas, extremamente
              importante, foi o desenvolvimento de um radiógrafo, um equipamento
              para a realização de radiografias que foi utilizado durante a
              Primeira Guerra Mundial.
              Veja mais sobre "Marie Curie" em:
              https://brasilescola.uol.com.br/quimica/maria-curie-descoberta-radioatividade.htm
            
           ');
           
           insert into Cientista (endImg, nomeCompleto,  nacionalidade, nascimento, falecimento,subtitulo,bio )
values('https://s2-techtudo.glbimg.com/7YOBBhghbMF9wsUuBP7UcUh2yXI=/0x342:2439x2307/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/n/3/FbrmyhQneVYWGUPIe8vA/adalovelace.jpg',
'Rosalind Franklin',
'Inglatera',
'1920-07-25',
'1958-04-16',
'A Mãe do DNA',
'Rosalind nasceu em 25 de julho de 1920 em Londres. Vinda de uma
              família abastada, ela desde criança demonstrou facilidade e
              interesse por matemática.
            </p>
            <p>
              Se formou em Ciências Naturais e fez doutorado na Universidade de
              Cambridge. Na década de 40 realizou estudos sobre o carvão
              mineral, conhecimento utilizado para a produção de máscaras a gás
              na Segunda Guerra Mundial.
           nos depois, dedicou-se a pesquisas em cristalografia de raio-X,
              ou difração do raio-X.
          
              Assim, por conta de seus estudos avançados, foi convidada por JT
              Randall para trabalhar no Kings College.
          
              No Kings College, Franklin conseguiu realizar em 6 de maio de
              1952 a famosa "fotografia 51", na qual imprimiu em uma chapa a
            
              Para realizar a tarefa ela precisou fazer constantes ajustes no
              equipamento de raio-X e a exposição da foto durou 100 horas. Ela
              tinha 31 anos e contou com a assistência de Raymond Gosling.
          
              Na mesma instituição também trabalhava o cientista Maurice
              Wilkins, que inclusive também pesquisava o DNA. Os dois não se
              deram bem desde o início e há suspeitas de que ela tenha sofrido
              assédio moral por ser mulher em um ambiente predominantemente
              masculino.
           
              A importante descoberta de Rosalind foi parar nas mãos de Wilkins
              (especula-se que Gosling, seu assistente, a tenha entregado). Sem
              o consentimento dela, Wilkins mostrou a fotografia para James
              Watson, outro pesquisador que também estudava o tema com o colega
              Francis Crick na Universidade de Cambridge.
          
              Assim, os três cientistas (Wilkins, Watson e Crick) se apropriaram
              da imagem e dos estudos de Franklin para determinar a estrutura do
              DNA.
              Publicaram em 1953 um artigo sobre a descoberta do DNA na revista
              científica Nature. Franklin também publicou na mesma revista um
              artigo sobre o tema. Sem muito destaque, ficou a impressão de que
              suas pesquisas eram de menor relevância, quando, na verdade, foram
              essenciais e primordiais.
           
              A cientista não contestou a autoria dos estudos e estava
              trabalhando em outro laboratório, o Birkbeck College, onde passou
              a estudar sobre vírus.
           
              Em 1962, James Watson, Maurice Wilkins e Francis Crick receberam o
              Prêmio Nobel de Medicina pela "descoberta do DNA".
           
              Nessa época, Rosalind Franklin já havia falecido. Ela morreu em
              1958, aos 37 anos, vítima de câncer no ovário, provavelmente
           
              Os três estudiosos não citaram Rosalind em seus discursos de
              premiação.
      
              Seis anos depois, em 1968, Watson lançou o livro A dupla hélice:
              como descobri a estrutura do DNA, onde se refere à colega de
              profissão como uma "mulher bélica que escondia dados". Ele
              confessa também que pegou os estudos de Rosalind sem sua
              permissão.
         ´
              <b>Referência:</b>
              https://www.ebiografia.com/rosalind_franklin/#:~:text=Rosalind%20Franklin%20(1920%2D1958),
              <br />carv%C3%A3o%20mineral%2C%20RNA%20e%20v%C3%ADrus.'
           );


insert into formacao (formacao)
values('Matemática'),
('Química'),
('Química');


-- VARIAS FORMAÇÕES: VÁRIAS CIENTISTAS
create table Formacao_Cientista(
fkCientista int,
fkFormacao int,
primary key(fkCientista,fkFormacao),
foreign key (fkCientista) references Cientista(idCientista),
foreign key (fkFormacao) references Formacao(idFormacao)
);

-- VISUALIZAÇÃO DOS USUÁRIOS E CIENTISTAS
select*from usuario;
select*from Cientista;
select*from Formacao;
select*from Formacao_Cientista;

-- VISUALIZAÇÂO DA NACIONALIDADE E SUA QUANTIDADE
select nacionalidade, count(nacionalidade) from cientista
GROUP BY nacionalidade;




-- VISUALIZAÇÃO DA REPRESENTAÇÃO DOS GRÁFICOS
-- Gráfico de Formação
select form.Formacao Formação, count(formC.fkFormacao) 'Qtd de Cientistas' 
from Cientista cien
join Formacao_Cientista formC
on cien.idCientista= formC.fkCientista
join Formacao form
on form.idFormacao= formC.fkFormacao
group by formC.fkFormacao;

-- Gráfico de Nacionalidade
select nacionalidade, count(nacionalidade) 'Nascidas no mesmo País'
from cientista
GROUP BY nacionalidade;

/*Comando pra apagar os dados usuários*/
  -- truncate table usuario;
-- truncate table Cientista;


/*Comando pra apagar o Banco de Dados*/
-- drop DATABASE Minds_Girls;