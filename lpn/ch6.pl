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

street([
  house(_, _, _),
  house(_, _, _),
  house(_, _, _)
]).

right_of(A, B, [B, A|_]).
right_of(A, B, [_|Y]) :-
  right_of(A, B, Y).

left_of(A, B, [A, B|_]).
left_of(A, B, [_|Y]) :-
  left_of(A, B, Y).

print_street([]).
print_street([A|B]) :-
  write(A), nl,
  print_street(B).

zebra(ShowResult) :-
  street(Houses),
  member(house(red, english, _), Houses),
  member(house(_, spanish, jaguar), Houses),
  right_of(house(_, japanese, _), house(_, _, snail), Houses),
  left_of(house(_, _, snail), house(blue, _, _), Houses),
  member(house(green, _, _), Houses),
  member(house(_, _, zebra), Houses),
  (   ShowResult = true ->
      print_street(Houses)
  ;   true).

% zebra(ShowResult).

memberA(X, List) :-
   append(_, [X|_], List).

% memberA(b, [a,b,c]).
% memberA(d, [a,b,c]).

set([], _).
set(InList, OutList) :-
  InList = [H1|T1],
  memberchk(H1, OutList),
  set(T1, OutList).

% set([2, 2, foo, 1, foo, [], []], X).

flattenA([], []).
flattenA(List, Flat) :-
  List = [H|T],
  \+ is_list(H),
  flattenA(T, FT),
  append([H], FT, Flat).
flattenA(List, Flat) :-
  List = [H|T],
  is_list(H),
  flattenA(H, FH),
  flattenA(T, FT),
  append(FH, FT, Flat).

% flattenA([a,b,[c,d],[[1,2]],foo], Flat).
% flattenA([a,b,[[[[[[[c,d]]]]]]],[[1,2]],foo,[]], Flat).
