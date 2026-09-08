constantlist(Constant, Len, List) :-
    length(List, Len),
    maplist(=(Constant), List).

new_tab(_, -1) :- !.
new_tab(_, 0) :- !.
new_tab(Stream, N) :-
    put_char(Stream, ' '),
    Next is N - 1,
    new_tab(Stream, Next).

pptree([], _, _).
pptree(Tree, Stream, Level) :-
    Tree =.. [H|T],
    new_tab(Stream, Level), write(Stream, H), nl(Stream),
    NextLevel is Level + 4,
    length(T, LenT),
    constantlist(NextLevel, LenT, NextList),
    constantlist(Stream, LenT, NextStream),
    maplist(pptree, T, NextStream, NextList).

pptree(Tree, Stream) :-
    pptree(Tree, Stream, 0).
