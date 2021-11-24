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

get_grandparent :-
  parent(X, carl),
  parent(X, charlie),
  format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

get_uncle :-
  parent(X, carl), brother(X, Y),
  format('~w ~s uncle ~n', [Y, "is the"]).

grand_parent(X, Y) :-
  parent(Z, X),
  parent(Y, Z).

blushes(X) :- human(X).

human(derek).

stabs(tybalt, mercutio, sword).

hates(romeo, X) :-
  stabs(X, mercutio, sword).

what_grade(5) :-
  write('Go to kindergarden').

what_grade(6) :-
  write('Go to 1st Grade').

what_grade(Other) :-
  Grade is Other - 5,
  format('Go to grade ~w', [Grade]).

female_report :-
  write('report of known females'), nl, nl,
  female(X),
  write(X), nl,
  fail.
