sum(1,1).
sum(X,R) :-
	X > 1,
	X1 is X - 2,
	sum(X1,R1),
	R is X + R1.
