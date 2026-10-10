/* PaperRound
 * Author: sameerasw,com
 * Creation date: 2026-10-03
 */
MACHINE PaperRound
    
SETS
Answers = {YES, NO};
Messages = {House_Removed_Succesfully, House_Not_Registered_For_Delivery, Gets_Both, Gets_Magazines, Gets_Papers, Gets_None}
    
VARIABLES
houseNumbers, magazineSet

INVARIANT
houseNumbers <: NAT1 & magazineSet <: NAT1

INITIALISATION
houseNumbers := {} || magazineSet :=  {}

OPERATIONS
addNewHouse( newHouse ) =
PRE
newHouse : NAT1 & newHouse /: houseNumbers
THEN
houseNumbers := houseNumbers \/ { newHouse }
END ;

numbHouses <-- howManyHouses =
BEGIN
numbHouses := card( houseNumbers )
END;

 ans <-- getsPapers( houseNumber )=
PRE houseNumber : NAT1 & houseNumber : houseNumbers
THEN
    ans := 1
END;
   
   
cancelPapers( houseNumber ) = 
PRE houseNumber : NAT1 & houseNumber : houseNumbers
THEN
houseNumbers := houseNumbers - { houseNumber }
END;
    

ans <-- firstHouse =
PRE houseNumbers /= {}
THEN
    ans := min(houseNumbers)
END;    
    
ans <-- lastHouse =
PRE houseNumbers /= {}
THEN
    ans := max(houseNumbers)
END;

ans <-- hasPaper(houseNo) = 
PRE houseNo: NAT1
THEN
    IF houseNo : houseNumbers
    THEN
        ans := YES
    ELSE
        ans := NO
    END
END;

ans <-- stopDelivery( houseNumber ) = 
PRE houseNumber : NAT1
THEN
    IF houseNumber : houseNumbers
    THEN
            houseNumbers := houseNumbers - { houseNumber } ||
            ans := House_Removed_Succesfully
    ELSE
            ans := House_Not_Registered_For_Delivery
    END
END;

deliverMag(newHouse) =
PRE
newHouse : NAT1 & newHouse /: magazineSet
THEN
magazineSet := magazineSet \/ { newHouse }
END;

stopMag( houseNumber ) = 
PRE houseNumber : NAT1 & houseNumber : magazineSet
THEN
magazineSet := magazineSet - { houseNumber }
END;

ans <-- deliveries( houseNumber ) =
PRE houseNumber : NAT1
THEN
    IF houseNumber : houseNumbers & houseNumber : magazineSet
    THEN
        ans := Gets_Both
    ELSIF houseNumber : magazineSet
        THEN
        ans := Gets_Magazines
    ELSIF houseNumber : houseNumbers
        THEN
        ans := Gets_Papers
    ELSE
        ans := Gets_None
    END
END

END