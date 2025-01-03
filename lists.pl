list_list_together([], Bs, Bs). % append
list_list_together([A|As], Bs, [A|Cs]) :-
        list_list_together(As, Bs, Cs).

list_length([], 0).
list_length([_|Ls], N) :-
        list_length(Ls, N0),
        N #> 0,
        N #= N0 + 1.

last_([X], X).
last_([_|T], X) :-
    last_(T, X).

succ_(X, Y) :-
    Y #= X + 1.

first([X|_], X).

tail([_|X], X).

slice(L, From, To, R):-
  length(LFrom, From),
  length([_|LTo], To),
  append(LTo, _, L),
  append(LFrom, R, LTo).

middle([], []).
middle(M, Middle) :-
    length(M, L),
    slice(M, 1, L, Middle).

first_and_last(L) :-
  first(L, X),
  last(L, X).

palindrome(L) :-
  length(L, Len),
  Len < 2.
% palindrome(L) :-
%   length(L, Len),
%   Len #= 2,
%   first_and_last(L).
palindrome(L) :-
%   length(L, Len),
%   Len > 2,
  first_and_last(L),
  middle(L, M),
  palindrome(M).

palindrome_(X) :- reverse(X, X).
