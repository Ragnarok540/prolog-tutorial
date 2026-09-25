% Worksheet 18: Sequential Maps with State

runcode([], C, N, [N*C]).
runcode([H|T], H, N, Z) :-
    N1 is N + 1,
    runcode(T, H, N1, Z).
runcode([H|T], C, N, [N*C|Z]) :-
    H \== C,
    runcode(T, H, 1, Z).
runcode(L, RLE) :-
    runcode(L, _, 0, RLE), !.

% runcode([12,2,2,w,3,3,s,s,s], C, 0, X).
% runcode([12,2,2,w,3,3,s,s,s], RLE).
