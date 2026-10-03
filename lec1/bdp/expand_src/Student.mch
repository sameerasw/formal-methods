MACHINE Student

SETS NAME = { Alex , Bob , Charles } ; RESPONSE = { Yes , No } ; GRADE = { AA , BB , CC , DD , FF }

CONCRETE_CONSTANTS
passMark

PROPERTIES
passMark : NAT & passMark = 40

ABSTRACT_VARIABLES
name , mark

INVARIANT
mark : NAT & mark <= 100 & name : NAME

INITIALISATION
name := Alex || mark := 67
// name, mark := Alex, 65

OPERATIONS
response <-- isPassed =

BEGIN

IF ( mark >= passMark )

THEN
response := Yes

ELSE
response := No

END

END ;


// getGrade A mark >= 75 else if >= 65 B elseif >= 55 C elseif >=40 D

ans <-- getGrade =
BEGIN

IF mark >= 75
THEN
    ans := AA
ELSIF mark >= 65
THEN
    ans := BB
ELSIF mark >= 55
THEN
    ans := CC
ELSIF mark >= 45
THEN
    ans := DD
ELSE
    ans := FF
END

END

END
