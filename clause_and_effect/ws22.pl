% Worksheet 22: Ordered Search Trees

insert(I, [], n(I, [], [])) :- !.
insert(I, n(N, L, R), n(N, L1, R)) :-
    I < N, !, insert(I, L, L1).
insert(I, n(N, L, R), n(N, L, R1)) :-
    I > N, !, insert(I, R, R1).
insert(l, n(I, L, R), n(I, L, R)).

lookup(I, n(I, _, _)).
lookup(I, n(N, L, _)) :-
    I < N, lookup(I, L).
lookup(I, n(N, _, R)) :-
    I > N, lookup(I, R).

% insert(3, Tree0, Tree1), insert(1, Tree1, Tree2), insert(2, Tree2, Tree3).
% insert(3, Tree0, Tree1), insert(1, Tree1, Tree2), insert(2, Tree2, Tree3), lookup(4, Tree3).
% insert(3, Tree0, Tree1), insert(1, Tree1, Tree2), insert(2, Tree2, Tree3), lookup(1, Tree3).
