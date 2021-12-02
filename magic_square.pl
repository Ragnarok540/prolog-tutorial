magic_square_3x3(Elems) :-
    Elems = [A, B, C, 
             D, E, F,
             G, H, I],
    Total #= 15,
    A + B + C #= Total,
    D + E + F #= Total,
    G + H + I #= Total,
    A + D + G #= Total,
    B + E + H #= Total,
    C + F + I #= Total,
    A + E + I #= Total,
    C + E + G #= Total,
    fd_domain(Elems, 1, 9),
    fd_all_different(Elems).

start(Elems) :-
    magic_square_3x3(Elems),
    fd_labeling(Elems),
    write(Elems).
