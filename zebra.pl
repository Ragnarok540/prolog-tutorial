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

nationality(englishman).
nationality(spaniard).
nationality(ukrainian).
nationality(norwegian).
nationality(japanese).

color(red).
color(green).
color(ivory).
color(yellow).
color(blue).

pet(dog).
pet(snails).
pet(fox).
pet(horse).
pet(zebra).

drink(coffee).
drink(tea).
drink(milk).
drink(orange_juice).
drink(water).

cigarette(old_gold).
cigarette(kools).
cigarette(chesterfields).
cigarette(lucky_strike).
cigarette(parliaments).

location(first).
location(second).
location(third).
location(fourth).
location(fifth).

lives(nationality(N), color(C)).
owner(nationality(N), pet(P)).
drinks(nationality(N), drink(D)).
smokes(nationality(N), cigarette(C)).
place(nationality(N), location(C)).

% 2.
lives(englishman, red).

% 3.
owner(spaniard, dog).

% 4.

% 5.
drinks(ukrainian, tea).


