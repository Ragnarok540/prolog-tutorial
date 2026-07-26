is_digesting(X, Y) :-
  just_ate(X, Y).
is_digesting(X, Y) :-
  just_ate(X, Z),
  is_digesting(Z, Y).

just_ate(mosquito, blood(john)).
just_ate(frog, mosquito).
just_ate(stork, frog).

numeral(0).
numeral(succ(X)) :-
  numeral(X).

add(0, Y, Y).
add(succ(X), Y, succ(Z)) :-
  add(X, Y, Z).

child(anne, bridget).
child(bridget, caroline).
child(caroline, donna).
child(donna, emily).
descend(X, Y) :-
  child(X, Y).
descend(X, Y) :-
  child(X, Z),
  descend(Z, Y).

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(X, Y) :-
  directTrain(X, Y).

travelFromTo(X, Y) :-
  directTrain(X, Z),
  travelFromTo(Z, Y).

connected(1,2).
connected(3,4).
connected(5,6).
connected(7,8).
connected(9,10).
connected(12,13).
connected(13,14).
connected(15,16).
connected(17,18).
connected(19,20).
connected(4,1).
connected(6,3).
connected(4,7).
connected(6,11).
connected(14,9).
connected(11,15).
connected(16,12).
connected(14,17).
connected(16,19).

path(X, Y) :-
  connected(X, Y).
path(X, Y) :-
  connected(X, Z),
  path(Z, Y).

byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).
byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).
byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

travel(X, Y) :-
  byCar(X, Y);
  byTrain(X, Y);
  byPlane(X, Y).
travel(X, Y) :-
  (
    byCar(X, Z);
    byTrain(X, Z);
    byPlane(X, Z)
  ),
  travel(Z, Y).

travel(X, Y, Route) :-
  (
    byCar(X, Y);
    byTrain(X, Y);
    byPlane(X, Y)
  ),
  Route = go(X, Y).
travel(X, Y, Route) :-
  (
    byCar(X, Z);
    byTrain(X, Z);
    byPlane(X, Z)
  ),
  travel(Z, Y, Route0),
  Route = go(X, Z, Route0).

by(car,auckland,hamilton).
by(car,hamilton,raglan).
by(car,valmont,saarbruecken).
by(car,valmont,metz).

by(train,metz,frankfurt).
by(train,saarbruecken,frankfurt).
by(train,metz,paris).
by(train,saarbruecken,paris).

by(plane,frankfurt,bangkok).
by(plane,frankfurt,singapore).
by(plane,paris,losAngeles).
by(plane,bangkok,auckland).
by(plane,singapore,auckland).
by(plane,losAngeles,auckland).

travel2(X, Y, Route) :-
  by(M, X, Y),
  Route = go(M, X, Y).
travel2(X, Y, Route) :-
  by(M, X, Z),
  travel2(Z, Y, Route0),
  Route = go(M, X, Z, Route0).
