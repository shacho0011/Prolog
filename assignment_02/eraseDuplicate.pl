list_member(Element, List):-
	
	List = [H|T],
	
	(
		   
		H == Element;
 list_member(Element, T)
	
	).

copy(Element, [], []).
copy(Element, List, R):-
	List = [H|T],
(
	(H==Element, copy(Element, T, R));
	(R = [H|T1], copy(Element, T, T1))
).

erase([],[]).
erase(List, Res):-

List=[H|T],
(	
	(list_member(H,T), copy(H, T, R), erase(R,Res)),!;
	(Res=[H|T1], erase(T,T1))
).