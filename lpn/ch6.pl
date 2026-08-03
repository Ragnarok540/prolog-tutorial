doubled(List) :-
  length(List, Len),
  0 =:= Len mod 2,
  HalfLen is Len // 2,
  length(Fix, HalfLen),
  prefix(Fix, List),
  suffix(Fix, List).

% doubled([a,b,c,a,b,c]).
% doubled([foo,gubble,foo,gubble]).
% doubled([foo,gubble,foo]).
% doubled([foo,gubble,gubble,foo]).

palindrome(List) :-
  reverse(List, List).

% palindrome([r,o,t,a,t,o,r]).
% palindrome([n,u,r,s,e,s,r,u,n]).
% palindrome([n,o,t,h,i,s]).

toptail(InList, OutList) :-
  reverse(InList, RevIn),
  RevIn = [_|Tin],
  reverse(Tin, Nit),
  Nit = [_|OutList].

% toptail([a],T).
% toptail([a,b],T).
% toptail([a,b,c],T).
% toptail([a,b,c,d],T).

lastA(List, Last) :-
  reverse(List, ReverseList),
  ReverseList = [Last|_].

% lastA([],T).
% lastA([a],T).
% lastA([a,b,c],T).

lastB([Last], Last).
lastB(List, Last) :-
  List = [_|T],
  lastB(T, Last).

% lastB([],T).
% lastB([a],T).
% lastB([a,b,c],T).

swapfl(List1, List2) :-
  List1 = [H1|_],
  last(List2, H1),
  List2 = [H2|_],
  last(List1, H2),
  toptail(List1, TopTail),
  toptail(List2, TopTail), !.

% swapfl([a,b,c,d,e],T).
