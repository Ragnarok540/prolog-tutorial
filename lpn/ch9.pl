complexterm(X) :-
    nonvar(X),
    functor(X, _, A),
    A > 0.

termtype(Term, atom) :-
    atom(Term).
termtype(Term, integer) :-
    integer(Term).
termtype(Term, float) :-
    float(Term).
termtype(Term, number) :-
    number(Term).
termtype(Term, constant) :-
    atom(Term);
    number(Term).
termtype(Term, variable) :-
    var(Term).
termtype(Term, simple_term) :-
    termtype(Term, variable);
    termtype(Term, constant).
termtype(Term, complex_term) :-
    complexterm(Term).
termtype(Term, term) :-
    termtype(Term, simple_term);
    termtype(Term, complex_term).

groundterm(Term) :-
    term_variables(Term, List),
    length(List, 0).

constantlist(Constant, Len, List) :-
    length(List, Len),
    maplist(=(Constant), List).

pptree([], _).
pptree(Tree, Level) :-
    Tree =.. [H|T],
    tab(Level), write(H), nl,
    NextLevel is Level + 2,
    length(T, LenT),
    constantlist(NextLevel, LenT, NextList),
    maplist(pptree, T, NextList).
pptree(Tree) :-
    pptree(Tree, 0).

% pptree(s(np(det(a),n(man)),vp(v(shoots),np(det(a),n(woman))))).

:- op(500, fx, not).
:- op(600, xfx, and).
:- op(600, xfx, or).
:- op(600, xfx, implies).

not(_).
and(_, _).
or(_, _).
implies(_, _).

% display(not(p implies q)).
% display(not p implies q).
