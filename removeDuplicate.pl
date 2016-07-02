list_member(Element, List):-
	
	List = [H|T],
	
	(
		   
		H == Element;
 list_member(Element, T)
	
	).




remove_duplicate(List, Result):-
	
	List = [H1|T1],
	
	(   
		( list_member(H1,T1), remove_duplicate(T1,R ) );
	    
		( Result = [H|T],H=H1, remove_duplicate(T1,R ) )
	
	).
