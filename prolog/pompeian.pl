% FACTS
man(marcus).
pompeian(marcus).
birth(marcus, 40).
year(2002).

% RULES
mortal(X) :- man(X).

dead(X) :- mortal(X), age(X, AGE), AGE > 150.
dead(X) :- pompeian(X), year(Y), Y > 79.

age(X, AGE) :-
    birth(X, BIRTH),
    year(Y),
    AGE is Y - BIRTH.  

    