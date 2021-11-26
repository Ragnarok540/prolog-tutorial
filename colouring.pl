colouring(Cs) :-
    Cs = [A, B, C, D, E, F],
    fd_domain(Cs, 1, 4),
    maplist(#\=(A), [B, C, D, E]),
    maplist(#\=(B), [C, D, F]),
    C #\= D,
    maplist(#\=(D), [E, F]),
    E #\= F,
    fd_labeling(Cs).

start(Cs) :-
    colouring(Cs),
    write(Cs).
