/*  File: Puzzles/buffalo.pro 
https://mirceamalitza.com/mmalita17/HOMEPAGE/logic/buffalo.pro
Title: Babysitting Author: Scott Marley	http://brownbuffalo.sourceforge.net
Publication: Dell Logic Puzzles April, 1998	Page: 7 Stars: 1
Each weekday, Bonnie takes care of five of the neighbors' children.
The children's names are Keith, Libby, Margo, Nora, and Otto;
last names are Fell, Gant, Hall, Ivey, and Jule.
Each is a different number of years old, from two to six.
Can you find each child's full name and age? 
1. One child is named Libby Jule.
2. Keith is one year older than the Ivey child, 
   who is one year older than Nora.
3. The Fell child is three years older than Margo.
4. Otto is twice as many years old as the Hall child.
*********************************************/

children([
  child(_, _, 2),
  child(_, _, 3),
  child(_, _, 4),
  child(_, _, 5),
  child(_, _, 6)
]).

print_result([]).
print_result([A|B]) :-
  write(A), nl,
  print_result(B).

solution(ShowResult) :-
  children(Children),
  member(child(libby, jule, _), Children),
  member(child(keith, _, KeithAge), Children),
  member(child(_, ivey, IveyAge), Children),
  member(child(nora, _, NoraAge), Children),
  KeithAge #= IveyAge + 1,
  IveyAge #= NoraAge + 1,
  member(child(_, fell, FellAge), Children),
  member(child(margo, _, MargoAge), Children),
  FellAge #= MargoAge + 3,
  member(child(otto, _, OttoAge), Children),
  member(child(_, hall, HallAge), Children),
  OttoAge #= HallAge * 2,
   (
    OttoAge #= 4;
    OttoAge #= 6
  ),
  member(child(_, gant, _), Children),
  (
    ShowResult = true ->
    print_result(Children);
    true
  ).
