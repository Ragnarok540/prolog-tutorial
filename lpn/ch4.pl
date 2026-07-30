second(X, List) :-
  List = [_, X|_].

% second(X, [1, 2, 3]).
% second(2, L).

swap12(List1, List2) :-
  List1 = [X1, X2|T],
  List2 = [X2, X1|T].

% swap12(X, [1, 2, 3, 4]).
% swap12(X, Y).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran(G, E) :-
  G = [G1|T1],
  E = [E1|T2],
  tran(G1, E1),
  listtran(T1, T2).

% listtran([eins,neun,zwei],X).
% listtran(X,[one,seven,six,two]).

twice([], []).
twice(A, B) :-
  A = [A1|T1],
  B = [A1, A1|T2],
  twice(T1, T2).

% twice([a,4,buggle],X).
% twice([1,2,1,1],X).
% twice(X, [1,1,2,2,3,3]).
