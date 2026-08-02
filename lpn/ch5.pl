increment(X, Y) :-
  Y is X + 1.

% increment(4, 5).
% increment(4, 6).

sum(A, B, C) :-
  C is A + B.

% sum(4, 5, 9).
% sum(4, 6, 12).

addone([], []).
addone(Ls, X) :-
  Ls = [H|T],
  H1 is H + 1,
  X = [H1|T2],
  addone(T, T2).

% addone([1, 2, 7, 2], X).
% addone(Y, [2, 3, 8, 3]).

accMax([H|T], A, Max) :-
  H > A,
  accMax(T, H, Max).
accMax([H|T], A, Max) :-
  H =< A,
  accMax(T, A, Max).
accMax([], A, A).

max(List, Max) :-
  List = [H|_],
  accMax(List, H, Max).

% max([1,2,46,53,0],X).

accMin([H|T], A, Min) :-
  H < A,
  accMin(T, H, Min).
accMin([H|T], A, Min) :-
  H >= A,
  accMin(T, A, Min).
accMin([], A, A).

min(List, Min) :-
  List = [H|_],
  accMin(List, H, Min).

% min([1,2,46,53,0],X).

scalarMult(_, [], []).
scalarMult(Scalar, Vector, Result) :-
  Vector = [VH|VT],
  NVH is VH * Scalar,
  Result = [NVH|NVT],
  scalarMult(Scalar, VT, NVT).

% scalarMult(3,[2,7,4],Result).

vecMult([], [], []).
vecMult(A, B, C) :-
  A = [H1|T1],
  B = [H2|T2],
  H3 is H1 * H2,
  C = [H3|T3],
  vecMult(T1, T2, T3).

% vecMult([2,5,6],[3,4,1],Result).

dot(A, B, Result) :-
  vecMult(A, B, C),
  sum_list(C, Result).

% dot([2,5,6],[3,4,1],Result).
