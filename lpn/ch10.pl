include(_Goal, [], []).
include(Goal, [Head|Tail], Included) :-
    include(Goal, Tail, IncludedSoFar),
    ( call(Goal, Head)
    -> Included = [Head|IncludedSoFar]
    ; Included = IncludedSoFar
    ).

positive(X) :-
    X >= 0.

negative(X) :-
    X < 0.

split(L, P, N) :-
    include(positive, L, P),
    include(negative, L, N).

% split([3, 4, -5, -1, 0, 4, -9], P, N).

nu1(X, Y) :-
    \+ X = Y.

nu2(X, Y) :-
    X \= Y.

neg(Goal) :-
    Goal, !, fail.
neg(_).

nu3(X, Y) :-
    neg(X = Y).
