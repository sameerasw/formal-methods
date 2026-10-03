Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Student))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Student))==(Machine(Student));
  Level(Machine(Student))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Student)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Student))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Student))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Student))==(?);
  List_Includes(Machine(Student))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Student))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Student))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Student))==(?);
  Context_List_Variables(Machine(Student))==(?);
  Abstract_List_Variables(Machine(Student))==(?);
  Local_List_Variables(Machine(Student))==(mark,name);
  List_Variables(Machine(Student))==(mark,name);
  External_List_Variables(Machine(Student))==(mark,name)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Student))==(?);
  Abstract_List_VisibleVariables(Machine(Student))==(?);
  External_List_VisibleVariables(Machine(Student))==(?);
  Expanded_List_VisibleVariables(Machine(Student))==(?);
  List_VisibleVariables(Machine(Student))==(?);
  Internal_List_VisibleVariables(Machine(Student))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Student))==(btrue);
  Gluing_List_Invariant(Machine(Student))==(btrue);
  Expanded_List_Invariant(Machine(Student))==(btrue);
  Abstract_List_Invariant(Machine(Student))==(btrue);
  Context_List_Invariant(Machine(Student))==(btrue);
  List_Invariant(Machine(Student))==(mark: NAT & mark<=100 & name: NAME)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Student))==(btrue);
  Abstract_List_Assertions(Machine(Student))==(btrue);
  Context_List_Assertions(Machine(Student))==(btrue);
  List_Assertions(Machine(Student))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Student))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Student))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Student))==(name,mark:=Alex,67);
  Context_List_Initialisation(Machine(Student))==(skip);
  List_Initialisation(Machine(Student))==(name:=Alex || mark:=67)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Student))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Student))==(btrue);
  List_Constraints(Machine(Student))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Student))==(isPassed,getGrade);
  List_Operations(Machine(Student))==(isPassed,getGrade)
END
&
THEORY ListInputX IS
  List_Input(Machine(Student),isPassed)==(?);
  List_Input(Machine(Student),getGrade)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Student),isPassed)==(response);
  List_Output(Machine(Student),getGrade)==(ans)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Student),isPassed)==(response <-- isPassed);
  List_Header(Machine(Student),getGrade)==(ans <-- getGrade)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Student),isPassed)==(btrue);
  List_Precondition(Machine(Student),getGrade)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Student),getGrade)==(btrue | mark>=75 ==> ans:=AA [] not(mark>=75) ==> (mark>=65 ==> ans:=BB [] not(mark>=65) ==> (mark>=55 ==> ans:=CC [] not(mark>=55) ==> (mark>=45 ==> ans:=DD [] not(mark>=45) ==> ans:=FF))));
  Expanded_List_Substitution(Machine(Student),isPassed)==(btrue | mark>=passMark ==> response:=Yes [] not(mark>=passMark) ==> response:=No);
  List_Substitution(Machine(Student),isPassed)==(IF mark>=passMark THEN response:=Yes ELSE response:=No END);
  List_Substitution(Machine(Student),getGrade)==(IF mark>=75 THEN ans:=AA ELSIF mark>=65 THEN ans:=BB ELSIF mark>=55 THEN ans:=CC ELSIF mark>=45 THEN ans:=DD ELSE ans:=FF END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Student))==(passMark);
  Inherited_List_Constants(Machine(Student))==(?);
  List_Constants(Machine(Student))==(passMark)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Student),NAME)==({Alex,Bob,Charles});
  Context_List_Enumerated(Machine(Student))==(?);
  Context_List_Defered(Machine(Student))==(?);
  Context_List_Sets(Machine(Student))==(?);
  List_Valuable_Sets(Machine(Student))==(?);
  Inherited_List_Enumerated(Machine(Student))==(?);
  Inherited_List_Defered(Machine(Student))==(?);
  Inherited_List_Sets(Machine(Student))==(?);
  List_Enumerated(Machine(Student))==(NAME,RESPONSE,GRADE);
  List_Defered(Machine(Student))==(?);
  List_Sets(Machine(Student))==(NAME,RESPONSE,GRADE);
  Set_Definition(Machine(Student),RESPONSE)==({Yes,No});
  Set_Definition(Machine(Student),GRADE)==({AA,BB,CC,DD,FF})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Student))==(?);
  Expanded_List_HiddenConstants(Machine(Student))==(?);
  List_HiddenConstants(Machine(Student))==(?);
  External_List_HiddenConstants(Machine(Student))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Student))==(btrue);
  Context_List_Properties(Machine(Student))==(btrue);
  Inherited_List_Properties(Machine(Student))==(btrue);
  List_Properties(Machine(Student))==(passMark: NAT & passMark = 40 & NAME: FIN(INTEGER) & not(NAME = {}) & RESPONSE: FIN(INTEGER) & not(RESPONSE = {}) & GRADE: FIN(INTEGER) & not(GRADE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Student),isPassed)==(?);
  List_ANY_Var(Machine(Student),getGrade)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Student)) == (passMark,NAME,RESPONSE,GRADE,Alex,Bob,Charles,Yes,No,AA,BB,CC,DD,FF | ? | mark,name | ? | isPassed,getGrade | ? | ? | ? | Student);
  List_Of_HiddenCst_Ids(Machine(Student)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Student)) == (passMark);
  List_Of_VisibleVar_Ids(Machine(Student)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Student)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Student)) == (Type(NAME) == Cst(SetOf(etype(NAME,0,2)));Type(RESPONSE) == Cst(SetOf(etype(RESPONSE,0,1)));Type(GRADE) == Cst(SetOf(etype(GRADE,0,4))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Student)) == (Type(Alex) == Cst(etype(NAME,0,2));Type(Bob) == Cst(etype(NAME,0,2));Type(Charles) == Cst(etype(NAME,0,2));Type(Yes) == Cst(etype(RESPONSE,0,1));Type(No) == Cst(etype(RESPONSE,0,1));Type(AA) == Cst(etype(GRADE,0,4));Type(BB) == Cst(etype(GRADE,0,4));Type(CC) == Cst(etype(GRADE,0,4));Type(DD) == Cst(etype(GRADE,0,4));Type(FF) == Cst(etype(GRADE,0,4));Type(passMark) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Student)) == (Type(mark) == Mvl(btype(INTEGER,?,?));Type(name) == Mvl(etype(NAME,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Student)) == (Type(getGrade) == Cst(etype(GRADE,?,?),No_type);Type(isPassed) == Cst(etype(RESPONSE,?,?),No_type));
  Observers(Machine(Student)) == (Type(getGrade) == Cst(etype(GRADE,?,?),No_type);Type(isPassed) == Cst(etype(RESPONSE,?,?),No_type))
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
