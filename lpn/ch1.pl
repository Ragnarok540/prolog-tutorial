woman(mia).
woman(jody).
woman(yolanda).

playsAirGuitar(jody).
playsAirGuitar(mia) :-
  listens2Music(mia).
playsAirGuitar(yolanda) :-
  listens2Music(yolanda).
playsAirGuitar(vincent) :-
  listens2Music(vincent),
  happy(vincent).
playsAirGuitar(butch) :-
  happy(butch).
playsAirGuitar(butch) :-
  listens2Music(butch).

party.

happy(yolanda).
happy(vincent).

listens2Music(mia).
listens2Music(butch).
listens2Music(yolanda) :-
  happy(yolanda).

loves(vincent, mia).
loves(marsellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

jealous(X, Y) :-
  loves(X, Z),
  loves(Y, Z).

% EX 1.4

% 1. Butch is a killer.
killer(butch).

% 2. Mia and Marsellus are married.
married(mia, marcellus).

% 3. Zed is dead.
dead(zed).

% 4. Marsellus kills everyone who gives Mia a footmassage.
kills(marcellus, X) :-
  footmassage(X, mia).

% 5. Mia loves everyone who is a good dancer.
mia_loves(X) :-
  good_dancer(X).

% 6. Jules eats anything that is nutritious or tasty.

eats(jules, X) :-
  nutritious(X);
  tasty(X).

% EX 1.5

wizard(ron).
wizard(X) :-
  hasBroom(X),
  hasWand(X).

hasWand(harry).

quidditchPlayer(harry).

hasBroom(X) :-
  quidditchPlayer(X).
