% Worksheet 27: Linearising

flatten_a([], []).
flatten_a([H|T], L3) :-
    flatten_a(H, L1),
    flatten_a(T, L2),
    append(L1, L2, L3), !.
flatten_a(X, [X]).

% flatten_a([a, [b,c], [d, e, [f, [g], h]]], X).
