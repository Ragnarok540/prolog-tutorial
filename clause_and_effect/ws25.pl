% Worksheet 25: Concatenating Lists

append_a([], L, L).
append_a([X|Y], T, [X|Z]) :-
    append_a(Y, T, Z).

% append_a([a, b ,c], X, [a, b, c, d, e, f]).
% append_a(X, Y, [a, b, c, d, e, f]).
% append_a([[a,b,c]], [[d,e,f]], X).
