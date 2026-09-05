:- dynamic(sigmares/2).

sigma(N, X) :-
    sigmares(N, X), !.

sigma(N, X) :-
    X is (N * (N + 1)) // 2,
    asserta(sigmares(N, X)).

subset([], []).

subset([Head|Tail], [Head|NTail]) :-
    subset(Tail, NTail).

subset([_|Tail], NTail) :-
    subset(Tail, NTail).

% subset([a,b,c], X).

powerset(S, P) :-
    findall(SS, subset(S, SS), P).

% powerset([a,b,c], X).
