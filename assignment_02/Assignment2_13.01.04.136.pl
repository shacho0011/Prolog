list_member(Element, List):-
	
	List = [H|T],
	
	(
		   
		H == Element;
 list_member(Element, T)
	
	).

remove_duplicate([],[]).
remove_duplicate(L, R):-

	L=[H|T],
	(	
		(list_member(H,T), remove_duplicate(T,R)),!;
		(R=[H1|T1], H1 = H, remove_duplicate(T,T1))
	).


copy(Element, [], []).
copy(Element, List, R):-
	List = [H|T],
	(
		(H==Element, copy(Element, T, R));
		(R = [H|T1], copy(Element, T, T1))
	).

erase_duplicate_elements([],[]).
erase_duplicate_elements(List, Res):-
	List=[H|T],
	(
		(list_member(H,T), copy(H, T, R), erase_duplicate_elements(R,Res)),!;
		(Res=[H|T1], erase_duplicate_elements(T,T1))
	).

erase_selected_duplicate_elements([],List,List).
erase_selected_duplicate_elements(Element,List, Res):-
	Element=[H|T],
	(
		    (list_member(H,List), copy(H, List, R), erase_selected_duplicate_elements(T,R,Res)),!;
		    (Res=List, erase_selected_duplicate_elements(T, List, Res))
	).

list_append([], List2, List2).
list_append([H1 | T1], List2, [H1 | T]) :- list_append(T1, List2, T).

list_reverse([], []).
list_reverse([H | T], Result) :-
	list_reverse(T, ReversedTail),
	list_append(ReversedTail, [H], Result).

list_member_palindrome([], []).
list_member_palindrome(Element, List):-
	
	List = [H1|T1],
 Element = [H2|T2], H1 == H2,
 list_member_palindrome(T1, T2)
,!.	

palindrome(List):-
	list_reverse(List, Result), list_member_palindrome(List, Result).

list_replace(Select, With, [], []).
list_replace(Select, With, List, R):-
	List = [H|T],
	(
		   (H==Select, R=[With|T1], list_replace(Select, With, T, T1)),!;
		   (R=[H|T1], list_replace(Select, With, T, T1))
	).