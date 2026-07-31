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

combine1([], [], []).
combine1(Left, Right, Combined) :-
  Left = [L|T1],
  Right = [R|T2],
  Combined = [L, R|T3],
  combine1(T1, T2, T3).

% combine1([a,b,c],[1,2,3],X).
% combine1([f,b,yip,yup],[glu,gla,gli,glo],Result).
% combine1(Left,Right,[3,c,2,b,1,a]).

combine2([], [], []).
combine2(Left, Right, Combined) :-
  Left = [L|T1],
  Right = [R|T2],
  Combined = [[L, R]|T3],
  combine2(T1, T2, T3).

% combine2([a,b,c],[1,2,3],X).
% combine2([f,b,yip,yup],[glu,gla,gli,glo],Result).
% combine2(Left,Right,[[3,c],[2,b],[1,a]]).

combine3([], [], []).
combine3(Left, Right, Combined) :-
  Left = [L|T1],
  Right = [R|T2],
  Combined = [j(L, R)|T3],
  combine3(T1, T2, T3).

% combine3([a,b,c],[1,2,3],X).
% combine3([f,b,yip,yup],[glu,gla,gli,glo],Result).
% combine3(Left,Right,[j(3,c),j(2,b),j(1,a)]).
