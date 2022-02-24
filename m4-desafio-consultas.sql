/*
 * 1 Qual é a média da nota em matemática de todos os alunos mineiros?
 */
select round(avg("NU_NOTA_MT")::numeric,1)
from public.enem2019mg;
/*
 * 2  Qual é a média da nota em Linguagens e Códigos de todos os alunos mineiros?
 */
select round(avg("NU_NOTA_LC")::numeric,1) from public.enem2019mg;
/* 
 * 3 Qual é a média da nota em Ciências Humanas dos alunos do sexo FEMININO
 * 	 mineiros?
 */
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "TP_SEXO"  = 'F';
/*
 * 4 Qual é a média da nota em Ciências Humanas dos alunos do sexo MASCULINO?
 */
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "TP_SEXO"  = 'M';
/*
 * 5 Qual é a média da nota em Matemática dos alunos do sexo FEMININO que moram
 *   na cidade de Montes Claros?
 */
/* select count("NO_MUNICIPIO_RESIDENCIA") 
 * from public.enem2019mg 
 * where "NO_MUNICIPIO_RESIDENCIA" 
 * like 'Montes Claros';*/
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "TP_SEXO" = 'F'
and upper("NO_MUNICIPIO_RESIDENCIA") like 'MONTES CLAROS';


/*
 * 6 Qual é a média da nota em Matemática dos alunos do município de Sabará que
 *   possuem TV por assinatura na residência?
 */
/*
select count("NO_MUNICIPIO_RESIDENCIA") 
from public.enem2019mg 
where "NO_MUNICIPIO_RESIDENCIA" 
like 'Sabará';
*/
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "NO_MUNICIPIO_RESIDENCIA" like 'Sabará'
and "Q021" = 'B';
/* 
 * 7 Qual é a média da nota em Ciências Humanas dos alunos mineiros que possuem
 *   dois fornos micro-ondas em casa?
 */
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "Q016" = 'C';

/*
 * 8 Qual é a nota média em Matemática dos alunos mineiros cuja mãe completou a pós-
 *   graduação?
 */
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "Q002" = 'G';
/*
 * 9 Qual é a nota média em Matemática dos alunos de Belo Horizonte e de Conselheiro
 *   Lafaiete?
 */
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "NO_MUNICIPIO_RESIDENCIA" = 'Belo Horizonte' 
or "NO_MUNICIPIO_RESIDENCIA" = 'Conselheiro Lafaiete';
/*
 * 10 Qual é a nota média em Ciências Humanas dos alunos mineiros que moram
 *    sozinhos?
*/
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "Q005" = '1';
/* 
 * 11 Qual é a nota média em Ciências Humanas dos alunos mineiros cujo pai completou
 *    pós-graduação e possuem renda familiar entre R$ 8.982,01 e R$ 9.980,00.
*/
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "Q001" = 'G'
and "Q006" = 'M';
/*
 * 12 Qual é a nota média em Matemática dos alunos do sexo Feminino que moram em
 *    Lavras e escolheram “Espanhol” como língua estrangeira?
*/
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "NO_MUNICIPIO_RESIDENCIA" = 'Lavras'
and "TP_SEXO" = 'F'
and "TP_LINGUA" = '1';
/*
 * 13 Qual é a nota média em Matemática dos alunos do sexo Masculino que moram em
 *    Ouro Preto?
 */
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "NO_MUNICIPIO_RESIDENCIA" = 'Ouro Preto'
and "TP_SEXO" = 'M';
/* 
 * 14 Qual é a nota média em Ciências Humanas dos alunos surdos?
 */
select round(avg("NU_NOTA_CH")::numeric,1) 
from public.enem2019mg
where "IN_SURDEZ" = '1';
/*
 * 15 Qual é a nota média em Matemática dos alunos do sexo FEMININO, que moram em
 *    Belo Horizonte, Sabará, Nova Lima e Betim e possuem dislexia?
*/ 
select round(avg("NU_NOTA_MT")::numeric,1) 
from public.enem2019mg
where "TP_SEXO" = 'F'
and "NO_MUNICIPIO_RESIDENCIA" in('Belo Horizonte',  'Sabará','Nova Lima', 'Betim')
and "IN_DISLEXIA" = '1';