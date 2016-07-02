location(tokyo, 35, -139).
location(rome, 41, -12).
location(london, 51, 0).
location(canberra, -31, -149).
location(madrid, 48, 3).
north_east_of(X,Y):- location(X,P,Q), location(Y,R,S), P>R, Q<S.
