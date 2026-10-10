Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(PaperRound))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(PaperRound))==(Machine(PaperRound));
  Level(Machine(PaperRound))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(PaperRound)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(PaperRound))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(PaperRound))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(PaperRound))==(?);
  List_Includes(Machine(PaperRound))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(PaperRound))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(PaperRound))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(PaperRound))==(?);
  Context_List_Variables(Machine(PaperRound))==(?);
  Abstract_List_Variables(Machine(PaperRound))==(?);
  Local_List_Variables(Machine(PaperRound))==(houseNumbers);
  List_Variables(Machine(PaperRound))==(houseNumbers);
  External_List_Variables(Machine(PaperRound))==(houseNumbers)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(PaperRound))==(?);
  Abstract_List_VisibleVariables(Machine(PaperRound))==(?);
  External_List_VisibleVariables(Machine(PaperRound))==(?);
  Expanded_List_VisibleVariables(Machine(PaperRound))==(?);
  List_VisibleVariables(Machine(PaperRound))==(?);
  Internal_List_VisibleVariables(Machine(PaperRound))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(PaperRound))==(btrue);
  Gluing_List_Invariant(Machine(PaperRound))==(btrue);
  Expanded_List_Invariant(Machine(PaperRound))==(btrue);
  Abstract_List_Invariant(Machine(PaperRound))==(btrue);
  Context_List_Invariant(Machine(PaperRound))==(btrue);
  List_Invariant(Machine(PaperRound))==(houseNumbers <: NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(PaperRound))==(btrue);
  Abstract_List_Assertions(Machine(PaperRound))==(btrue);
  Context_List_Assertions(Machine(PaperRound))==(btrue);
  List_Assertions(Machine(PaperRound))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(PaperRound))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(PaperRound))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(PaperRound))==(houseNumbers:={});
  Context_List_Initialisation(Machine(PaperRound))==(skip);
  List_Initialisation(Machine(PaperRound))==(houseNumbers:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(PaperRound))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(PaperRound))==(btrue);
  List_Constraints(Machine(PaperRound))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(PaperRound))==(addNewHouse,howManyHouses,getsPapers,cancelPapers);
  List_Operations(Machine(PaperRound))==(addNewHouse,howManyHouses,getsPapers,cancelPapers)
END
&
THEORY ListInputX IS
  List_Input(Machine(PaperRound),addNewHouse)==(newHouse);
  List_Input(Machine(PaperRound),howManyHouses)==(?);
  List_Input(Machine(PaperRound),getsPapers)==(houseNumber);
  List_Input(Machine(PaperRound),cancelPapers)==(houseNumber)
END
&
THEORY ListOutputX IS
  List_Output(Machine(PaperRound),addNewHouse)==(?);
  List_Output(Machine(PaperRound),howManyHouses)==(numbHouses);
  List_Output(Machine(PaperRound),getsPapers)==(ans);
  List_Output(Machine(PaperRound),cancelPapers)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(PaperRound),addNewHouse)==(addNewHouse(newHouse));
  List_Header(Machine(PaperRound),howManyHouses)==(numbHouses <-- howManyHouses);
  List_Header(Machine(PaperRound),getsPapers)==(ans <-- getsPapers(houseNumber));
  List_Header(Machine(PaperRound),cancelPapers)==(cancelPapers(houseNumber))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(PaperRound),addNewHouse)==(newHouse: NAT1 & newHouse/:houseNumbers);
  List_Precondition(Machine(PaperRound),howManyHouses)==(btrue);
  List_Precondition(Machine(PaperRound),getsPapers)==(houseNumber: NAT1 & houseNumber: houseNumbers);
  List_Precondition(Machine(PaperRound),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseNumbers)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(PaperRound),cancelPapers)==(houseNumber: NAT1 & houseNumber: houseNumbers | houseNumbers:=houseNumbers-{houseNumber});
  Expanded_List_Substitution(Machine(PaperRound),getsPapers)==(houseNumber: NAT1 & houseNumber: houseNumbers | ans:=1);
  Expanded_List_Substitution(Machine(PaperRound),howManyHouses)==(btrue | numbHouses:=card(houseNumbers));
  Expanded_List_Substitution(Machine(PaperRound),addNewHouse)==(newHouse: NAT1 & newHouse/:houseNumbers | houseNumbers:=houseNumbers\/{newHouse});
  List_Substitution(Machine(PaperRound),addNewHouse)==(houseNumbers:=houseNumbers\/{newHouse});
  List_Substitution(Machine(PaperRound),howManyHouses)==(numbHouses:=card(houseNumbers));
  List_Substitution(Machine(PaperRound),getsPapers)==(ans:=1);
  List_Substitution(Machine(PaperRound),cancelPapers)==(houseNumbers:=houseNumbers-{houseNumber})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(PaperRound))==(?);
  Inherited_List_Constants(Machine(PaperRound))==(?);
  List_Constants(Machine(PaperRound))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(PaperRound))==(?);
  Context_List_Defered(Machine(PaperRound))==(?);
  Context_List_Sets(Machine(PaperRound))==(?);
  List_Valuable_Sets(Machine(PaperRound))==(?);
  Inherited_List_Enumerated(Machine(PaperRound))==(?);
  Inherited_List_Defered(Machine(PaperRound))==(?);
  Inherited_List_Sets(Machine(PaperRound))==(?);
  List_Enumerated(Machine(PaperRound))==(?);
  List_Defered(Machine(PaperRound))==(?);
  List_Sets(Machine(PaperRound))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(PaperRound))==(?);
  Expanded_List_HiddenConstants(Machine(PaperRound))==(?);
  List_HiddenConstants(Machine(PaperRound))==(?);
  External_List_HiddenConstants(Machine(PaperRound))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(PaperRound))==(btrue);
  Context_List_Properties(Machine(PaperRound))==(btrue);
  Inherited_List_Properties(Machine(PaperRound))==(btrue);
  List_Properties(Machine(PaperRound))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(PaperRound),addNewHouse)==(?);
  List_ANY_Var(Machine(PaperRound),howManyHouses)==(?);
  List_ANY_Var(Machine(PaperRound),getsPapers)==(?);
  List_ANY_Var(Machine(PaperRound),cancelPapers)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(PaperRound)) == (? | ? | houseNumbers | ? | addNewHouse,howManyHouses,getsPapers,cancelPapers | ? | ? | ? | PaperRound);
  List_Of_HiddenCst_Ids(Machine(PaperRound)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(PaperRound)) == (?);
  List_Of_VisibleVar_Ids(Machine(PaperRound)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(PaperRound)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(PaperRound)) == (Type(houseNumbers) == Mvl(SetOf(btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(PaperRound)) == (Type(cancelPapers) == Cst(No_type,btype(INTEGER,?,?));Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(howManyHouses) == Cst(btype(INTEGER,?,?),No_type);Type(addNewHouse) == Cst(No_type,btype(INTEGER,?,?)));
  Observers(Machine(PaperRound)) == (Type(getsPapers) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?));Type(howManyHouses) == Cst(btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
