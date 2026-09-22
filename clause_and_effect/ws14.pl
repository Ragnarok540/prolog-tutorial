% Worksheet 14: Partial Maps with a Parameter

reduce([X|T], X, T).
reduce([H|T], X, [H|L]) :-
    reduce(T, X, L).

a(g, h).
a(d, a).
a(g, d).
a(e, d).
a(h, f).
a(e, f).
a(a, e).
a(a, b).
a(b, f).
a(b, c).
a(f, c).

path(X, X, _, end_of_path).
path(X, Y, L, Route) :-
    a(X, Z),
    reduce(L, Z, L1),
    path(Z, Y, L1, Route0),
    Route = go(X, Z, Route0).

% path(a, b, [a,b,c,d,e,f,g,h], R).
