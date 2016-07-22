place_queen(0).
place_queen(1).
place_queen(2).
place_queen(3).
place_queen(4).
place_queen(5).
place_queen(6).
place_queen(7).

eight_queen :-
	eight_queen_backtrack(0, []).

eight_queen_backtrack(8, SolutionSoFar) :-
	write(SolutionSoFar),
	nl,
	!.
eight_queen_backtrack(CurrentRow,SolutionSoFar) :-
	(place_queen(CurrentColumn),
		(no_clash(CurrentRow,CurrentColumn,SolutionSoFar),NextRow is CurrentRow + 1, eight_queen_backtrack(NextRow,[CurrentRow/CurrentColumn|SolutionSoFar]))
	).

no_clash(_,_,[]).
no_clash(Row, Col, [R1 / C1 | T]) :-
Col \== C1,
T1 is Row - R1,
T2 is Col - C1,
abs(T1, A1),
abs(T2, A2),
A1 \== A2,
no_clash(Row, Col, T).


