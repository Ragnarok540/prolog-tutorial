n_queens(N, Qs) :-
    length(Qs, N),
    fd_domain(Qs, 1, N),
    safe_queens(Qs).

safe_queens([]).
safe_queens([Q|Qs]) :-
    safe_queens_(Qs, Q, 1),
    safe_queens(Qs).

safe_queens_([], _, _).
safe_queens_([Q|Qs], Q0, D0) :-
    Q #\= Q0,
    Q + D0 #\= Q0,
    Q - D0 #\= Q0,
    D #= D0 + 1,
    safe_queens_(Qs, Q0, D).

start(N) :-
    n_queens(N, Qs),
    fd_labeling(Qs, [variable_method(first_fail)]),
    write(Qs).
