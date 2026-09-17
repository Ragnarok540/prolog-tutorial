% Worksheet 10: Full Maps

sqlist([], []).
sqlist([X|T], [Y|L]) :-
    Y is X * X,
    sqlist(T, L).

% sqlist([1, 2, 3], L).

sq(X, Y) :-
    Y #= X * X.

% maplist(sq, [1, 2, 3], L).
% maplist(sq, L, [1, 4, 9]).

envelope([], []).
envelope([X|T], [container(X)|L]) :-
    envelope(T, L).

% envelope([apple, peach, cat, 37, john], X).
