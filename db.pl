loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

happy(albert).
happy(alice).
happy(bob).
happy(bill).

with_albert(alice).

runs(albert) :-
  happy(alice).

dances(alice) :-
  happy(alice),
  with_albert(alice).

does_alice_dance :-
  dances(alice),
  write('When Alice is happy and with Albert she dances').

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
 
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
 
parent(bob, carl).
parent(bob, charlie).

get_grandchild :-
  parent(albert, X),
  parent(X, Y),
  write('Alberts grandchild is '),
  write(Y), nl.

get_parent :-
  parent(X, carl),
  parent(X, charlie),
  format('~w ~s grandparent ~n', [X, "is the"]).

