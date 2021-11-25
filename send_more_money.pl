sendmore(Digits) :-
    Digits = [S, E, N, D, M, O, R, Y],
    fd_domain(Digits, 0, 9),
    fd_domain([S, M], 1, 9),
    fd_all_different(Digits),
                   1000 * S + 100 * E + 10 * N + D
                 + 1000 * M + 100 * O + 10 * R + E
    #= 10000 * M + 1000 * O + 100 * N + 10 * E + Y,
    fd_labeling(Digits).

start(Digits) :-
    sendmore(Digits),
    write(Digits).
