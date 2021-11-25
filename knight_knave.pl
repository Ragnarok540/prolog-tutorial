knight_knave_1(L) :-
    L = [A, B],
    fd_domain(L, 0, 1),
    A #<=> (#\ A #\/ B), % A says: "Either I am a knave or B is a knight."
    fd_labeling(L).

knight_knave_2(L) :-
    L = [A, B],
    fd_domain(L, 0, 1),
    A #<=> (#\ A #/\ B), % A says: "I am a knave but B isn't."
    fd_labeling(L).

knight_knave_3(L) :-
    L = [A, B, C],
    fd_domain(L, 0, 1),
    A #<=> (A + B + C #= 0), % A says: "All of us are knaves."
    B #<=> (A + B + C #= 1), % B Says: "Exactly one of us is a knight."
    fd_labeling(L).

start(L) :-
    findall(L, knight_knave_1(L), Result_1),
    write(Result_1), nl,
    findall(L, knight_knave_2(L), Result_2),
    write(Result_2), nl,
    findall(L, knight_knave_3(L), Result_3),
    write(Result_3).
