/* File: Puzzles/aa6.pro Author: (sol MM)
https://mirceamalitza.com/mmalita17/HOMEPAGE/logic/aa6.pro
Title: Thursday Party From: Adrian Atanasiu http://www.be-logic.ro
Four ladies meet each week on Thursday to play bridge.
On each meeting they decide what everyone has to bring for the next meeting.
1. Mrs. Andrew will  bring chocolate cake.
2. Neither Mrs. Brown, nor Vivien, nor Ann Clark will bring cookies.
3. Rachel, which is not from Davidson's family, will bring coffee.
4. Mary will not bring the wine.
Find the whole name of each lady and what is she supposed to bring next week?
Final = [[ LastName, FirstName, Bring]...]
Solutions found with the program: ?- start(I).
I = [[clark,ann,wine],[davidson,mary,cookie],
[brown,rachel,cofee],[andrew,vivien,chocolate]] ;
****************************************************************/

ladies([
  lady(_, _, chocolate),
  lady(_, _, cookies),
  lady(_, _, coffee),
  lady(_, _, wine)
]).

print_ladies([]).
print_ladies([A|B]) :-
  write(A), nl,
  print_ladies(B).

solution(ShowResult) :-
  ladies(Ladies),
  member(lady(andrew, _, chocolate), Ladies),
  member(lady(brown, _, NotCookie1), Ladies),
  NotCookie1 \== cookie,
  member(lady(_, vivien, NotCookie2), Ladies),
  NotCookie2 \== cookie,
  member(lady(clark, ann, NotCookie3), Ladies),
  NotCookie3 \== cookie,
  member(lady(NotDavidson, rachel, coffee), Ladies),
  NotDavidson \== davidson,
  member(lady(_, mary, NotWine), Ladies),
  NotWine \== wine,
  member(lady(davidson, _, _), Ladies),
  (
    ShowResult = true ->
    print_ladies(Ladies);
    true
  ).
