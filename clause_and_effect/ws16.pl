% Worksheet 16: Multiple Disjoint Partial Maps

firstcol([], []).
firstcol([[H|_]|R], [H|Hs]) :-
    firstcol(R, Hs).

nextcols([], []).
nextcols([[_|T]|R], [T|Ts]) :-
    nextcols(R, Ts).

transpose_a([[]|_], []).
transpose_a(R, [H|C]) :-
    firstcol(R, H),
    nextcols(R, T),
    transpose_a(T, C).

% transpose_a([[1, 2, 3], [4, 5, 6], [7, 8, 9]], T).

chop_col([], [], []).
chop_col([[H|T]|Rows], [H|Hs], [T|Ts]) :-
    chop_col(Rows, Hs, Ts).

transpose_b([[]|_], []).
transpose_b(Matrix, [Row|Rows]) :-
    chop_col(Matrix, Row, RestMatrix),
    transpose_b(RestMatrix, Rows).

% transpose_b([[1, 2, 3], [4, 5, 6], [7, 8, 9]], T).
