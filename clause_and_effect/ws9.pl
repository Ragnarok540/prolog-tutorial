% Worksheet 9: Searching a Cyclic Graph

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

path(X, X, _).
path(X, Y, T) :-
    a(X, Z),
    legal(Z, T),
    path(Z, Y, [Z|T]).

legal(_, []).
legal(Z, [H|T]) :-
    Z \= H,
    legal(Z, T).

% path(a, b, []).

route(X, Y, _, Route) :-
   a(X, Y),
   Route = go(X, Y).
route(X, Y, T, Route) :-
   a(X, Z),
   legal(Z, T),
   route(Z, Y, [Z|T], Route0),
   Route = go(X, Z, Route0).

route(X, Y, Route) :-
    route(X, Y, [], Route).

% route(a, b, R).
