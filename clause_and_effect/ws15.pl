% Worksheet 15: Multiple Disjoint Partial Maps

herd([], [], []).
herd([sheep|T], [sheep|S], G) :-
    herd(T, S, G).
herd([goat|T], S, [goat|G]) :-
    herd(T, S, G).
% herd([X|T], S, G) :-
%     herd(T, S, G).

% herd([sheep, goat, goat, sheep, goat], X, Y).
% herd([goat, sheep, stone, goat, tree], X, Y).
% herd(X, [sheep, sheep], [goat, goat]).

alternate([], [], []).
alternate([X, Y|T], [X|T1], [Y|T2]) :-
    alternate(T, T1, T2).

% alternate([1, 2, 3, 4, 5, 6], X, Y).
% alternate([a, b, c, d, e, f], X, Y).
