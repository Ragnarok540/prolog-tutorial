% father(X) = X.
% unify_with_occurs_check(father(X), X).

unify(X, Y) :-
  X = Y.

vertical(line(point(X, _), point(X, _))).
horizontal(line(point(_, Y), point(_, Y))).

f(a).
f(b).
g(a).
g(b).
h(b).
k(X) :-
  f(X),
  g(X),
  h(X).

loves(vincent, mia).
loves(marcellus, mia).

jealous(A, B) :-
  loves(A, C),
  loves(B, C),
  A \= B.

word(determiner, a).
word(determiner, every).
word(noun, criminal).
word(noun, 'big kahuna burger').
word(verb, eats).
word(verb, likes).

sentence(Word1, Word2, Word3, Word4, Word5) :-
  word(determiner, Word1),
  word(noun, Word2),
  word(verb, Word3),
  word(determiner, Word4),
  word(noun, Word5).

word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

crossword(V1, V2, V3, H1, H2, H3) :-
  word(V1, _, A, _, D, _, G, _),
  word(V2, _, B, _, E, _, H, _),
  word(V3, _, C, _, F, _, I, _),
  word(H1, _, A, _, B, _, C, _),
  word(H2, _, D, _, E, _, F, _),
  word(H3, _, G, _, H, _, I, _),
  V1 \= H1.

