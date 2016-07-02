fibo(0,0).
fibo(1,1).
fibo(X,R):-
	X>1,
	X1 is X-1,
	X2 is X-2,
	fibo(X1,R1),
	fibo(X2,R2),
	R is R1+R2.
