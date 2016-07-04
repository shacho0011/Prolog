list_member(Element, List):-
	
	List = [H|T],
	
	(
		   
		H == Element;
 list_member(Element, T)
	
	).


not_member(Element, List):-
	
	List = [H|T],
	
	(
		   
		H /== Element;
 not_member(Element, T)
	
	).


remove_duplicate([],[]).
remove_duplicate(L, R):-

L=[H|T],
(	
		(list_member(H,T), remove_duplicate(T,R)),!;
		(R=[H1|T1], H1 = H, remove_duplicate(T,T1))
).