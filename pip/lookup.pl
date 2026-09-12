lookup(H, w(H, G, _, _), G1) :-
    !,
    G = G1.

lookup(H, w(H1, _, Before ,_), G) :-
    H @< H1,
    lookup(H, Before, G).

lookup(H, w(H1, _, _, After), G) :-
    H @> H1,
    lookup(H, After, G).

% lookup(abaris, X, 582), lookup(maloja, X, 356).
% lookup(maloja, X, 356), lookup(abaris, X, 582).
