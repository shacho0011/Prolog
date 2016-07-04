list_member(Element, List):-
	List = [H|T],
	(

		H == Element;list_member(Element, T)
	).

copy(Element, [], []).
copy(Element, List, R):-
	List = [H|T],
	(
		   (H==Element, copy(Element, T, R));
		   (R = [H|T1], copy(Element, T, T1))
	).

erase([],List,List).
erase(Element,List, Res):-
	Element=[H|T],
	(
		    (list_member(H,List), copy(H, List, R), erase(T,R,Res)),!;
		    (Res=List, erase(T, List, Res))
	).
