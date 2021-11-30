equal_lengths([]).
equal_lengths([[]]).
equal_lengths([[_|_]]).
equal_lengths([X,Y|Rest]) :- 
    length(X, Len), 
    length(Y, Len), 
    equal_lengths([Y|Rest]).

transpose([[]|_], []).
transpose(Matrix, [Row|Rows]) :-
    transpose_1st_col(Matrix, Row, RestMatrix),
    transpose(RestMatrix, Rows).
transpose_1st_col([], [], []).
transpose_1st_col([[H|T]|Rows], [H|Hs], [T|Ts]) :-
    transpose_1st_col(Rows, Hs, Ts).
