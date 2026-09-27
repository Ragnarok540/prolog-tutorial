% Worksheet 23: Frequency Distribution

update(N, [], [1*N]).
update(N, [F*N|S], [F1*N|S]) :-
    !,
    F1 is F + 1.
update(N, [F*M|S], [1*N, F*M|S]) :-
    N < M,
    !.
update(N, [F*M|S], [F*M|S1]) :-
    N \== M,
    update(N, S, S1).

freq([], S, S).
freq([N|L], S1, S3) :-
    update(N, S1, S2),
    freq(L, S2, S3).
freq(L, S) :-
    freq(L, [], S).

% freq([3, 3, 2, 2, 1, 1, 2, 2, 3, 3], A).

once_a(G) :-
    call(G), !.

for(0, _) :- !.
for(N, G) :-
    N > 0,
    call(G),
    M is N - 1,
    for(M, G), !.

% for(3, write('hello ')).
