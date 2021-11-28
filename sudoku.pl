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

squares([], [], []).
squares([N1,N2,N3|Ns1],
        [N4,N5,N6|Ns2],
        [N7,N8,N9|Ns3]) :-
    fd_all_different([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
    squares(Ns1, Ns2, Ns3).

sudoku(Rows) :-
    length(Rows, 9),
    equal_lengths(Rows),
    flatten(Rows, Vs),
    fd_domain(Vs, 1, 9),
    maplist(fd_all_different, Rows),
    transpose(Rows, Columns),
    maplist(fd_all_different, Columns),
    Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is],
    length(As, 9),
    squares(As, Bs, Cs),
    squares(Ds, Es, Fs),
    squares(Gs, Hs, Is).

start(Rows) :-
    sudoku(Rows),
    maplist(fd_labeling, Rows),
    maplist(portray_clause, Rows).

% start([[8|_]|_]).
