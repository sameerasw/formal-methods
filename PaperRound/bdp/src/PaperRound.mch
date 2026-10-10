/* PaperRound
 * Author: sameerasw,com
 * Creation date: 2026-10-03
 */
MACHINE PaperRound

ABSTRACT_VARIABLES
houseNumbers

INVARIANT
houseNumbers <: NAT

INITIALISATION
houseNumbers := {}

OPERATIONS
addNewHouse ( newHouse ) =
PRE
newHouse : NAT1 & newHouse /: houseNumbers
THEN
houseNumbers := houseNumbers \/ { newHouse }
END ;

numbHouses <-- howManyHouses =
BEGIN
numbHouses := card ( houseNumbers )
END ;

 ans <-- getsPapers ( houseNumber ) =
PRE houseNumber : NAT1 & houseNumber : houseNumbers
THEN
    ans := 1
END ;


cancelPapers ( houseNumber ) =
PRE houseNumber : NAT1 & houseNumber : houseNumbers
THEN
houseNumbers := houseNumbers - { houseNumber }
END




END
