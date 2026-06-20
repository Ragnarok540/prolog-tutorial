male(albert).
male(edward).

female(alice).
female(victoria).

child_mother(edward, victoria).
child_mother(alice, victoria).

child_father(edward, albert).
child_father(alice, albert).

diff(X, Y) :-
    X \= Y.

sister_sibling(X, Y) :-
    female(X),
    child_mother(X, M),
    child_mother(Y, M),
    child_father(X, F),
    child_father(Y, F),
    diff(X, Y).

% sister_sibling(alice, edward).

parent_child(P, C) :-
    child_mother(C, P);
    child_father(C, P).

% parent_child(victoria, albert).
% parent_child(albert, edward).
% parent_child(victoria, edward).

son_parent(S, P) :-
    male(S),
    (
        child_mother(S, P), !;
        child_father(S, P)
    ).

% son_parent(edward, victoria).
% son_parent(alice, victoria).

% gprolog
% [chapter1].
