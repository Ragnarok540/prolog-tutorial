% Worksheet 26: Rotations of a List

rotall([], _, []).
rotall([H|T], A, [L|Z]) :-
    % write([H|T]), nl,
    % tab(1), write(A), nl,
    append([H|T], A, L),
    append(A, [H], A1),
    rotall(T, A1, Z).

% rotall([a, b, c, d], [], X).
