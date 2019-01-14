# Databases-CW

THESE are just notes for the cw

SELECT name, father, mother, F.dod AS fatherdod, M.dod AS motherdod
FROM person JOIN person AS M ON person.mother = M.name
            JOIN person AS F ON person.father = F.name
WHERE person.father IS NOT NULL
AND person.mother IS NOT NULL
AND fatherdod IS NOT NULL
AND motherdod IS NOT NULL
AND dod<fatherdod AND dod<motherdod
;
