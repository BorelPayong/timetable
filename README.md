# timetable

# Question 3
CREATE VIEW EmploiDeTemps AS
    SELECT DISTINCT T.jourCoursDate, C.codeCours
    FROM Cours C
        JOIN Typehoraire T
        ON C.codeCours= T.crsCodeCours
        JOIN Jourcours J
        ON J.dateJourCours=T.jourCoursDate
        JOIN Coursdeclasse cls
        ON  T.crsCodeCours=cls.crsCodeCours
        JOIN Classe Cl
        ON cl.specialiteNomSpec=cls.classSpecialiteNomspec
    ORDER BY T.jourCoursDate;


# Question 4



# Question 5

SET MARKUP HTML ON SPOOL ON PREFORMAT OFF ENTMAP ON -
HEAD "<TITLE>Department Report</TITLE> -
<STYLE type='text/css'> -
<!-- BODY {background: white} --> -
</STYLE>" –
 BODY "TEXT='black'" –
 TABLE "WIDTH='90%' BORDER='5'"
SPOOL emploidetemps.html
SELECT DISTINCT C.codeCours, T.jourCoursDate,T. TRANCHE,C.VOLUMEH FROM Cours C
JOIN Typehoraire T
ON C.codeCours= T.crsCodeCours
JOIN Jourcours J
ON J.dateJourCours=T.jourCoursDate
JOIN Coursdeclasse cls
ON T.crsCodeCours=cls.crsCodeCours
JOIN Classe Cl
ON cl.specialiteNomSpec=cls.classSpecialiteNomspec
 WHERE T.jourCoursDate
 IN ('lundi','mardi','mercredi','jeudi','vendredi','samedi') AND cls.classNiveauidNiveau=001 ;
SPOOL OFF
