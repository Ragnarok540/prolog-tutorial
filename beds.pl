/* File: Puzzles/beds1.pro	Author: sol MMalita
https://mirceamalitza.com/mmalita17/HOMEPAGE/logic/beds1.pro
Title: Bunk beds From:  http://eduplace.com/math/brain/65-294.html
All 6 girls in the junior cabin at camp sleep in bunk beds. 
Each girl has a different color blanket on her bed. 
The beds are lined up in a row with red, black, yellow, brown, blue and green blankets.
1. Reeva and Haley is closest to the door.
2. The color of the blankets on the bottom bunks all begin with the same letter
3. The color of Beth's blanket doesn't begin with the same letter as the beginning of her name
4. The blue blanket is under the red blanket.
5. Liza and Kayla like their lower bunks.
6. Kayla is in the middle bed.
7. Zoe doesn't share a bunk with Kayla.
8. The brown blanket is at the end of a row.
9. The yellow is above the black blanket.
Sol= [[Name,Color],[Name,Color],...]
They are in the following order bottom, up, bottom, up from left to right
*/

beds([
  bed(_, _, bottom, first),
  bed(_, _, up, first),
  bed(_, _, bottom, second),
  bed(_, _, up, second),
  bed(_, _, bottom, third),
  bed(_, _, up, third)
]).

print_result([]).
print_result([A|B]) :-
  write(A), nl,
  print_result(B).

solution(ShowResult) :-
  beds(Beds),
  member(bed(haley, _, _, first), Beds),
  member(bed(reeva, _, _, first), Beds),
  member(bed(_, black, bottom, _), Beds),
  member(bed(_, brown, bottom, _), Beds),
  member(bed(_, blue, bottom, _), Beds),
  member(bed(_, green, up, _), Beds),
  member(bed(_, red, up, _), Beds),
  member(bed(_, yellow, up, _), Beds),
  (
    member(bed(beth, green, _, _), Beds);
    member(bed(beth, red, _, _), Beds);
    member(bed(beth, yellow, _, _), Beds)
  ),
  member(bed(_, blue, bottom, Same1), Beds),
  member(bed(_, red, up, Same1), Beds),
  member(bed(liza, _, bottom, _), Beds),
  member(bed(kayla, _, bottom, _), Beds),
  member(bed(kayla, _, _, second), Beds),
  member(bed(zoe, _, _, ZoeBunk), Beds),
  member(bed(kayla, _, _, KaylaBunk), Beds),
  ZoeBunk \= KaylaBunk,
  member(bed(_, brown, _, third), Beds),
  member(bed(_, black, bottom, Same2), Beds),
  member(bed(_, yellow, up, Same2), Beds),

  (
    ShowResult = true ->
    print_result(Beds);
    true
  ).
