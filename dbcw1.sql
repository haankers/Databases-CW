
-- Q1 returns (name,father,mother)
-- Write an SQL query that returns the scheme (name,father,mother)
-- ordered by name contain- ing the name of all people known to
-- have died before both their father and mother, together with the
-- name of the mother and the name of the father.
SELECT p.name, p.father, p.mother
FROM person AS p, person AS m, person AS f
WHERE f.dod IS NOT NULL
AND m.dod IS NOT NULL
AND p.dod IS NOT NULL
AND p.mother = m.name
AND p.father = f.name
AND p.dod<f.dod AND p.dod<m.dod
; 

-- Q2 returns (name)
-- Write an SQL query returning the scheme (name) ordered by name
-- that lists all people that have either been a King, Queen or
-- Prime Minister.
SELECT name
FROM prime_minister NATURAL JOIN monarch
WHERE house IS NOT NULL
;

-- Q3 returns (name)
-- A King or Queen is said to abdicate if their reign ceases before
-- their death. Write an an SQL query returning the scheme (name)
-- ordered by name that lists the name of all Kings or Queens that
-- have abdicated
SELECT monper.name
FROM (monarch NATURAL JOIN person) AS monper
WHERE MONPER.house IS NOT NULL
AND monper.dod IS NOT NULL
AND monper.dod < 
;

-- Q4 returns (house,name,accession)
-- Write a query that returns the scheme (house,name,accession)
-- ordered by accession that lists house and name of monarchs who
-- were the first of a house to accede to the throne. Maximum marks will
-- be given only to answers that use either the ALL or SOME operators.
SELECT house, name, accession
FROM monarch
WHERE name <> SOME (SELECT house
                        FROM monarch as a
                        WHERE monarch.house = a.house
                        AND monarch.house < a.house)
AND 
;

-- Q5 returns (first_name,popularity)
-- Write an SQL query that returns the scheme (first name,popularity)
-- ordered in descending order of popularity, and then alphabetical
-- order of first name. Your answer should also exclude first names
-- that only occur once in the database. A first name is taken to
-- mean the first word appearing the name column of person.
SELECT DISTINCT name as first_name, popularity
FROM person
ORDERED BY 

;

-- Q6 returns (house,seventeenth,eighteenth,nineteenth,twentieth)
-- WriteanSQLquerythatreturnsthescheme(house,seventeenth,eighteenth,
--nineteenth,twentieth) ordered by house listing the number of monarchs
-- of each royal house that acceded to the throne in the 17th, 18th,
-- 19th and 20th centuries.

; 

-- Q7 returns (father,child,born)
-- Write an SQL query returning the scheme (father,child,born) ordered
-- by father,born that lists as father the name of all men in the
-- database, together with the name of each child, with born being
-- the number of the child of the father (i.e. returning 1 for the
-- first born, 2 for the second born, etc). For men with no children,
-- the man should be listed with null for both child and born.

;

-- Q8 returns (monarch,prime_minister)
-- Write an SQL query that returns the scheme (monarch,prime minister),
-- ordered by monarch and prime minister, that lists prime ministers
-- that held office during the reign of the monarch.

;

