% Worksheet 7: Inner Product

inner_a([], [], 0).
inner_a([A|As], [B|Bs], N) :-
    inner_a(As, Bs, Ns),
    N is Ns + (A * B).

inner_b(A, B, N) :-
    dotaux(A, B, 0, N).

dotaux([], [], V, V).
dotaux([A|As], [B|Bs], N, Z) :-
    N1 is N + (A * B),
    dotaux(As, Bs, N1, Z).

% inner_a([1,2,3], [3,2,1], N).
% inner_b([1,2,3], [3,2,1], N).
