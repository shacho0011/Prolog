replace(Select, With, [], []).
replace(Select, With, List, R):-
	List = [H|T],
	(
		   (H==Select, R=[With|T1], replace(Select, With, T, T1)),!;
		   (R=[H|T1], replace(Select, With, T, T1))
	).
