%parent(X,Y) means that person X is a parent (Father or mother) of person Y
parent(alex, julia).
parent(alex, rose).
parent(lina, julia).
parent(lina, rose).
parent(romeo, peter).
parent(julia, peter).
parent(rose, silvia).
parent(oscar, ida).
parent(eva, ida).
parent(eva, bruno).
parent(peter, bruno).
parent(peter, gerog).
parent(peter, irma).
parent(ruth, gerog).
parent(ruth, irma).
parent(silvia, otto).
parent(silvia, pascal).
parent(irma, olga).
parent(irma, jean).
parent(otto, olga).
parent(otto, jean).
parent(jean, tina).
parent(marie, tina).

% Male(X) Means that X is a male person
male(alex).
male(romeo).
male(oscar).
male(peter).
male(bruno).
male(georg).
male(otto).
male(pascal).
male(jean).

% husband(X,Y) means that person X is the husband of person Y
husband(alex, lina).
husband(romeo, julia).
husband(oscar, eva).
husband(peter, ruth).
husband(otto, irma).
husband(jean, marie).


female(X):- \+ male(x).
father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).
son(X,Y):- parent(Y,X), male(X).
daughter(X,Y):- parent(Y,X), female(X).
sibling(X,Y):- parent(Z,X), parent(W,X), parent(Z,Y), parent(W,Y), husband(Z,W), \+(X=Y).
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), male(Y), \+(X=Y).
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), female(Y), \+(X=Y).
wife(X,Y):- husband(Y,X).
grandchile(X,Y):- parent(Y,Z), parent(Z,X).
grandfather(X,Y):- parent(X,Z), parent(Z,Y), male(X).
grandmother(X,Y):- parent(X,Z), parent(Z,Y), female(X).
uncle(X,Y):- parent(Z,Y), brother(X,Z).
halfbrother(X,Y):- parent(Z,X), parent(Z,Y), male(X), \+(X=Y).
halfsister(X,Y):- parent(Z,X), parent(Z,Y), female(X), \+(X=Y).

married(X,Y):- husband(X,Y), wife(Y,X).

stepbrother(X,Y):- (married(P,Q); married(Q,P)), parent(P,X), parent(Q,Y)), male(X).
stepsister(X,Y):- (married(P,Q); married(Q,P)), parent(P,X),  parent(Q,Y)), female(X).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z), ancestor(Z,Y).
descendant(X, Y) :- parent(Y, X).
descendant(X, Y) :- parent(Y, Z), descendant(Z, X).




