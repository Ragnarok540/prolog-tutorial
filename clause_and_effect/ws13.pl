% Worksheet 13: Removing Duplicates

seta([], []).
seta([X|T], L) :-
    member(X, T),
    seta(T, L).
seta([X|T], [X|L]) :-
    seta(T, L).

% seta([a,a,b,c,b], X).
% seta([a,a,b,c,b], [a,c,b]).
% seta([a,a,b,c,b], [a,b,c]).

setb([], _).
setb([H|T], L) :-
    memberchk(H, L),
    setb(T, L).

% setb([a,a,b,c,b], X).
