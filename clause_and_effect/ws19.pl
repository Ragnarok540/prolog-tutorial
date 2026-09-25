% Worksheet 19: Scattered Maps with State

coll([], []).
coll([q(N, X)|R], [q(T, X)|R2]) :-
    collz(X, N, R, Q, T),
    coll(Q, R2), !.
collz(_, N, [], [], N).
collz(X ,N, [q(Num,X)|R], Q, T) :-
    M is N + Num,
    collz(X, M, R, Q, T).
collz(X, N, [Q|R], [Q|Qs], T) :-
    collz(X, N, R, Qs, T).

% coll([q(17, duck), q(15, goose), q(41, quail), q(12, goose), q(37, quail)], CNF).

collect([], []).
collect([q(N, X)|R], [q(T, X)|R3]) :-
    collect(R, R2),
    extract(q(M, X), R2, R3),
    T is M + N, !.
extract(q(0, _), [], []).
extract(H, [H|T], T).
extract(X, [V|T], [V|T1]) :-
    X \== V,
    extract(X, T, T1).

% collect([q(17, duck), q(15, goose), q(41, quail), q(12, goose), q(37, quail)], CNF).
