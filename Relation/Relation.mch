/* Relation
 * Author: 
 * Creation date: 2026-10-10
 */
MACHINE
    Relation

SETS BOYS={Alex, Bob, Charles, David, Ethan, France}; GIRLS={Andrea, Tylor, Lauren, Angelina, Janeeta}
    
VARIABLES relationship
    
INVARIANT relationship : BOYS <-> GIRLS
    
INITIALISATION relationship := {Alex |-> Lauren, Alex |-> Angelina, Bob |-> Lauren, David |-> Janeeta, Ethan |-> Janeeta}
    
END
