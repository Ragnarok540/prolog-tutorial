% Worksheet 17: Full Maps with State

ms([], _, []).
ms([H|T], N, [C|L]) :-
    C is H + N,
    ms(T, C, L).
mapsum(A, B) :-
    ms(A, 0, B).

% mapsum([1, 3, 2, 5, 4], MS).

enum_aux([], _, []).
enum_aux([H|T], N, [n(H, C)|L]) :-
    C is N + 1,
    enum_aux(T, C, L).
enum(A, B) :-
   enum_aux(A, 0, B).

% enum([cabbage, beet, carrot, bean, radish, beet], Enum).
