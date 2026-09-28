% Worksheet 24: Negation-as-Failure

good_hotel(goedels).
good_hotel(freges).
good_hotel(schoenfinkels).
good_hotel(wittgensteins) .
expensive_hotel(goedels).
expensive_hotel(wittgensteins).

reasonable(R) :-
    \+ expensive_hotel(R).

% good_hotel(X), reasonable(X).
% reasonable(X), good_hotel(X).
