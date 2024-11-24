%seq(r) --> r.
%seq([]) --> [].
%seq(r) --> r.
%seq(l) --> l.
seq([]) --> [].
seq([E|Es]) --> [E], seq(Es).

%inv(r) --> l.
%inv(l) --> r.
%inv([]) --> [].
%inv([F|Fs]) --> inv(Fs), swap(F).

%swap(r) --> "l".
%swap(l) --> "r".

%dragon("r").
%dragon(Ds) :-
%    dragon(Ds0),
%    phrase((seq(Ds0), "r", inv(Ds0)), Ds).

%start(Gs) :-
%    dragon(Gs),
%    write(Gs).

%as --> [].
%as --> [a, as].


start(Ls, Ls0) :-
    phrase([seq(Ls0), b, c], Ls).