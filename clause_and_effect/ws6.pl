% Worksheet 6: Length of a List

length_a([], 0).
length_a([_|T], N) :-
    length_a(T, Nt),
    N is Nt + 1.

length_b(L, N) :-
    accumulate(L, 0, N).

accumulate([], A, A).
accumulate([_|T], A, N) :-
    A1 is A + 1,
    accumulate(T, A1, N).

% length_b([apple,pear], N).
% length_b(L, 3).
% length_b([alpha], 2).

sum([], 0).
sum([H|T], N) :-
    sum(T, Nt),
    N is H + Nt.
    
% sum([1, 2], N).
