% Worksheet 4: Acyclic Directed Graph

a(g, h).
a(g, d).
a(e, d).
a(h, f).
a(e, f).
a(a, e).
a(a, b).
a(b, f).
a(b, c).
a(f, c).

path(X, X).
path(X, Y) :-
    a(X, Z),
    path(Z, Y).

% path(f, f).
% path(a, c).
% path(g, e).
% path(g, X).
% path(X, h).

route(X, Y, Route) :-
   a(X, Y),
   Route = go(X, Y).
route(X, Y, Route) :-
   a(X, Z),
   route(Z, Y, Route0),
   Route = go(X, Z, Route0).

% route(a, c, R).
