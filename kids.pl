% https://www.101computing.net/solving-a-zebra-puzzle-using-prolog/

% Three kids went to a superheroes fancy dress birthday party.
% The names of the three kids are Ethan, Ali and Anya.
% They dressed up as Spiderman, Captain America and Iron Man.
% The kids are 6, 8 and 10 years old.

% We don’t know how each kid dressed up or how old each kid is but we have the following clues:

%     Anya was dressed up as Spiderman.
%     Ethan was not dressed up as Captain America.
%     The youngest kid dressed up as Spiderman.
%     The kid who is 8 years old dressed up as Captain America.

kids([
  kid(ethan, _, _),
  kid(ali, _, _),
  kid(anya, _, _)
]).

print_kids([]).
print_kids([A|B]) :-
  write(A), nl,
  print_kids(B).

solution(ShowResult) :-
  kids(Kids),
  member(kid(anya, spider_man, _), Kids),
  (
    member(kid(ethan, iron_man, _), Kids);
    member(kid(ethan, spider_man, _), Kids)
  ),
  member(kid(_, spider_man, six), Kids),
  member(kid(_ , captain_america, eight), Kids),
  member(kid(_ , _, ten), Kids),
  member(kid(_ , iron_man, _), Kids),
  (
    ShowResult = true ->
    print_kids(Kids);
    true
  ).
