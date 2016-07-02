fac(0,1).
fac(X,R):-
	X>0,
	X1 is X-1,
	fac(X1,R1),
	R is R1*X.
