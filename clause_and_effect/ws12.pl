% Worksheet 12: Partial Maps

evens([], []).
evens([X|T], [X|L]) :-
    0 is X mod 2,
    evens(T, L).
evens([X|T], L) :-
    1 is X mod 2,
    evens(T, L).

% evens([1, 2, 3, 4, 5, 6], Q).

even(X) :-
    0 is X mod 2.

include(_Goal, [], []).
include(Goal, [X|T], [X|L]) :-
    call(Goal, X),
    include(Goal, T, L).
include(Goal, [X|T], L) :-
    \+ call(Goal, X),
    include(Goal, T, L).

% include(even, [1, 2, 3, 4, 5, 6], Q).
