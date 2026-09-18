% Worksheet 11: Multiple Choices

squint([], []).
squint([X|T],[Y|L]) :-
    integer(X),
    Y is X * X,
    squint(T, L), !.
squint([X|T], [X|L]) :-
    squint(T, L).

% squint([1, 3, W, 5, goat], X).
