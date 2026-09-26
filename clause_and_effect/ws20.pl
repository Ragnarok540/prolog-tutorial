% Worksheet 20: Multiple Choices with Cut

squint([], []).
squint([X|T],[Y|L]) :-
    integer(X), !,
    Y is X * X,
    squint(T, L).
squint([X|T], [X|L]) :-
    squint(T, L).

% squint([1, 3, W, 5, goat], X).

evens([], []).
evens([X|T], [X|L]) :-
    0 is X mod 2, !,
    evens(T, L).
evens([X|T], L) :-
    evens(T, L).

% evens([1, 2, 3, 4, 5, 6], Q).

setify([], []).
setify([X|T], L) :-
    member(X, T), !,
    setify(T, L).
setify([X|T], [X|L]) :-
    setify(T, L).

% setify([a,a,b,c,b], X).

sd([], _, []).
sd([E|S1], S2, S3) :-
    memberchk(E, S2), !,
    sd(S1, S2, S3).
sd([E|S1], S2, [E|S3]) :-
    sd(S1, S2, S3).

% sd([a,b,c,d], [a,c], C).
