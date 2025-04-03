
--**************************************************************************************************************
--* Exercices Module M4.3 : Oracle NoSql et le Mod�le Key/Document 
--* L'objectif ici est de mettre en oeuvre par la pratage le mod�le cl�/document avec les tables
--* des enregistrements, comment construire des cl�s (major et minor key) des  :
--* Exercices M4.3.1: Manipulation de tables via la Command Line Interface (CLI) 
--* Exercices M4.3.2: Manipulation de tables via la SQL Command Line Interface (SQL CLI) 
--* Exercices M4.3.3: Manipulation des tables par programmation via l'API JAVA
--**************************************************************************************************************

----------------------------------------------------------------------------------------------------------------
-- D�marrage du client ligne de commandes Oracle NOSQL
----------------------------------------------------------------------------------------------------------------


[vagrant@oracle-21c-vagrant ~]$ java -jar $KVHOME/lib/kvstore.jar runadmin -port 5000 -host localhost


----------------------------------------------------------------------------------------------------------------
-- connexion � base
----------------------------------------------------------------------------------------------------------------

kv->connect store -name kvstore


----------------------------------------------------------------------------------------------------------------
-- Exercices M4.3.1: Manipulation de tables via la Command Line Interface (CLI)
----------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------
-- Exercices M4.3.1.1 Cr�ation de tables via la CLI
----------------------------------------------------------------------------------------------------------------

-- Cr�ation de la table pilote2
kv-> execute 'drop table pilote2';

kv-> execute 'create table pilote2(
plnum  INTEGER ,  
plnom   STRING, 
dnaiss  STRING, 
adr     STRING, 
tel     STRING, 
sal     FLOAT, 
PRIMARY  KEY (shard(plnom, adr), plnum))';


-- Cr�ation de la table pilote2.checkup
-- Un pilote � 0 1 ou plusieurs checkup
-- Une fa�on d'introduire une pseudo cl� �trang�re sans contrainte
kv-> execute 'drop table pilote2.checkup';
kv-> execute  'create table pilote2.checkup(
cunum    	 INTEGER,  
cudate  	 STRING, 
curesultat	 STRING,
PRIMARY  KEY  (cunum))';


-- Cr�ation de la table pilote2.training
-- Un pilote fait 0 1 ou plusieurs training
-- Une fa�on d'introduire une pseudo cl� �trang�re sans contrainte
kv-> execute 'drop table pilote2.training';
kv-> execute  'create table pilote2.training(
trnum    	 INTEGER,  
trdate  	 STRING, 
trtypeTraining	 STRING,
trDureeEnHeure	INTEGER,
PRIMARY  KEY  (trnum))';


----------------------------------------------------------------------------------------------------------------
-- Exercices M4.3.1.2 Insertion de lignes dans les tables cr��es via la CLI
----------------------------------------------------------------------------------------------------------------


-- insertion de ligne dans table pilote2 avec l'interface ligne de commande kv->

kv-> put table -name pilote2 -json 
'{"plnum":1,"plnom":"Gagarin1","dnaiss":"09/03/1934","adr":"Klouchino1, Russie", "tel":"0071122334455", "sal":10000.75}';

kv-> put table -name pilote2 -json 
'{"plnum":2,"plnom":"Gagarin2","dnaiss":"09/03/1935","adr":"Klouchino2, Russie", "tel":"0071122334456", "sal":10050.75}';

kv-> put table -name pilote2 -json 
'{"plnum":3,"plnom":"Gagarin2","dnaiss":"09/03/1960","adr":"Moscou1, Russie", "tel":"0071122334470", "sal":20050.75}';

kv-> put table -name pilote2 -json 
'{"plnum":4,"plnom":"Gagarin3","dnaiss":"09/03/1935","adr":"Klouchino3, Russie", "tel":"00711223344606", "sal":11050.75}';


-- insertion de ligne dans table pilote2.checkup avec l'interface ligne de commande kv->
kv-> put table -name pilote2.checkup -json 
'{"plnum":2,"plnom":"Gagarin2","adr":"Klouchino2, Russie", "cunum":1, "cudate":"12-12-2015", "curesultat": "BON"}';

kv-> put table -name pilote2.checkup -json 
'{"plnum":2,"plnom":"Gagarin2","adr":"Klouchino2, Russie", "cunum":2, "cudate":"11-1-2016",  "curesultat": "BON MAIS ATTENTION AU THE"}';

kv-> put table -name pilote2.checkup -if-absent -json '{"plnum":5, "plnom":"Gagarin2", "adr":"Moscou2, Russie", "cunum":1, "cudate":"12-12-2015", "curesultat": "BON"}';

-- insertion de ligne dans table pilote2.traning avec l'interface ligne de commande kv->
-- Ins�rer 3 training deux pour Gagarin2 nr 2

kv-> put table -name pilote2.training -json 
'{"plnum":2,"plnom":"Gagarin2","adr":"Klouchino2, Russie", "trnum":1, "trdate":"12-12-2015", "trtypeTraining": "Simulateur",  "trDureeEnHeure":5}';

kv-> put table -name pilote2.training -json 
'{"plnum":2,"plnom":"Gagarin2","adr":"Klouchino2, Russie", "trnum":2, "trdate":"11-1-2016",  "trtypeTraining": "Vol r�el", "trDureeEnHeure":2}';

kv-> put table -name pilote2.training -json 
'{"plnum":5, "plnom":"Gagarin2", "adr":"Moscou2, Russie", "trnum":1, "trdate":"12-12-2015", "trtypeTraining": "Simulateur",  "trDureeEnHeure":3}';



----------------------------------------------------------------------------------------------------------------
-- Exercices M4.3.1.3 Consultation de donn�es dans les tables cr��es via la CLI
----------------------------------------------------------------------------------------------------------------


-- Afficher les informations sur les pilotes  de nom Gagarin2
kv-> get table -name pilote2

-- Afficher les informations sur les pilotes  de nom Gagarin2
kv-> get table -name pilote2 -field plnom -value "Gagarin2"

-- Afficher les informations sur les pilotes  habitant  "Moscou1, Russie"
kv-> get table -name pilote2 -field adr -value "Moscou1, Russie"

kv-> execute 'create index idx_pilote2_adr on pilote2(adr)';

-- Afficher les informations sur les pilotes  habitant  "Moscou1, Russie"
kv-> get table -name pilote2 -field adr -value "Moscou1, Russie" -index idx_pilote2_adr

-- Afficher les informations sur les checkup du pilote de nom Gagarin2
kv-> get table -name pilote2.checkup -field plnom -value "Gagarin2"

-- Que fait cette requ�te ?
-- Texte ici : ? Left outer join
-- Cette requette ramène les informations sur les pilotes de nom 'Gagarin2' qui ont des checkups ainsi que leurs checkup
-- et ramène les checkup de nm qui ne sont liés à aucun pilote
kv-> get table -name pilote2.checkup -field plnom -value "Gagarin2" -ancestor pilote2

-- Que fait cette requ�te ?
-- Texte ici : ? Full outer join
-- Cette requette ramène les informations sur les pilotes de nom 'Gagarin2' avec ou sans checkup
--  et les checkup de pilote de nom 'Gagarin2' avec ou sans pilotes
kv-> get table -name pilote2 -field plnom -value "Gagarin2" -child pilote2.checkup