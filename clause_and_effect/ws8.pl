% Worksheet 8: Maximum of a List

max([], A, A).
max([H|T], A, M) :-
    H > A,
    max(T, H, M).
max([H|T], A, M) :-
    H =< A,
    max(T, A, M).

% max([3,1,4,1,5,8,2,6], 0, N).
% max([2,4,7,7,7,2,1,6], 5, N).

maximum(L, M) :-
    L = [H|_],
    max(L, H, M).

% maximum([3,1,4,1,5,8,2,6], N).
% maximum([2,4,7,7,7,2,1,6], N).

min([], A, A).
min([H|T], A, M) :-
    H < A,
    min(T, H, M).
min([H|T], A, M) :-
    H >= A,
    min(T, A, M).

minimum(L, M) :-
    L = [H|_],
    min(L, H, M).

% minimum([3,1,4,1,5,8,2,6], N).
% minimum([2,4,7,7,7,2,1,6], N).

minmax(L, MinVal, MaxVal) :-
    minimum(L, MinVal),
    maximum(L, MaxVal).

% minmax([3,1,4,1,5,8,2,6], Min, Max).
% minmax([2,4,7,7,7,2,1,6], Min, Max).
