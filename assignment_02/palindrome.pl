list_append([], List2, List2).
list_append([H1 | T1], List2, [H1 | T]) :- list_append(T1, List2, T).

list_reverse([], []).
list_reverse([H | T], Result) :-
	list_reverse(T, ReversedTail),
	list_append(ReversedTail, [H], Result).

list_member([], []).
list_member(Element, List):-
	
	List = [H1|T1],
 Element = [H2|T2], H1 == H2,
 list_member(T1, T2)
,!.	

palindrome(List):-
	list_reverse(List, Result), list_member(List, Result).