%  1. There are five houses.
%  2. The Englishman lives in the red house.
%  3. The Spaniard owns the dog.
%  4. Coffee is drunk in the green house.
%  5. The Ukrainian drinks tea.
%  6. The green house is immediately to the right of the ivory house.
%  7. The Old Gold smoker owns snails.
%  8. Kools are smoked in the yellow house.
%  9. Milk is drunk in the middle house.
% 10. The Norwegian lives in the first house.
% 11. The man who smokes Chesterfields lives in the house next to the man with the fox.
% 12. Kools are smoked in the house next to the house where the horse is kept.
% 13. The Lucky Strike smoker drinks orange juice.
% 14. The Japanese smokes Parliaments.
% 15. The Norwegian lives next to the blue house.

% Now, who drinks water? Who owns the zebra?

% In the interest of clarity, it must be added that each of the five houses is painted
% a different color, and their inhabitants are of different national extractions, own
% different pets, drink different beverages and smoke different brands of American
% cigarets [sic]. One other thing: in statement 6, right means your right.
% — Life International, December 17, 1962

% Where does the zebra live?
% Puzzle solution written by Claude Sammut.

zebra(ShowResult) :-
  houses(Houses),
  member(house(red, english, _, _, _), Houses),
  member(house(_, spanish, dog, _, _), Houses),
  member(house(green, _, _, coffee, _), Houses),
  member(house(_, ukrainian, _, tea, _), Houses),
  right_of(house(green,_,_,_,_), house(ivory,_,_,_,_), Houses),
  member(house(_, _, snails, _, old_gold), Houses),
  member(house(yellow, _, _, _, kools), Houses),
  Houses = [_, _, house(_, _, _, milk, _), _,_],
  Houses = [house(_, norwegian, _, _, _)|_],
  next_to(house(_,_,_,_,chesterfields), house(_,_,fox,_,_), Houses),
  next_to(house(_,_,_,_,kools), house(_,_,horse,_,_), Houses),
  member(house(_, _, _, orange_juice, lucky_strikes), Houses),
  member(house(_, japanese, _, _, parliaments), Houses),
  next_to(house(_,norwegian,_,_,_), house(blue,_,_,_,_), Houses),
  member(house(_, _, zebra, _, _), Houses),
  member(house(_, _, _, water, _), Houses),
  (   ShowResult = true ->
      print_houses(Houses)
  ;   true).

houses([
  house(_, _, _, _, _),
  house(_, _, _, _, _),
  house(_, _, _, _, _),
  house(_, _, _, _, _),
  house(_, _, _, _, _)
]).

right_of(A, B, [B, A | _]).
right_of(A, B, [_ | Y]) :- right_of(A, B, Y).

next_to(A, B, [A, B | _]).
next_to(A, B, [B, A | _]).
next_to(A, B, [_ | Y]) :- next_to(A, B, Y).

print_houses([]).
print_houses([A|B]) :-
  write(A), nl,
  print_houses(B).
