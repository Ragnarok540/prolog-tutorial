collatz_next(N0, N) :-
  N0 #= 2 * N.

collatz_next(N0, N) :-
  N0 #= 2 * _ + 1,
  N #= 3 * N0 + 1.

collatz_reaches(N, N).

collatz_reaches(N0, N) :-
  collatz_next(N0, N1),
  collatz_reaches(N1, N).
