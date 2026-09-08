% https://www.youtube.com/watch?v=DMdiPC1ZckI

seq([]) --> [].
seq([E|Es]) --> [E], seq(Es).

swap(r) --> [l].
swap(l) --> [r].

inv([]) --> [].
inv([F|Fs]) --> inv(Fs), swap(F).

dragon([r]).
dragon(Ds) :-
   dragon(Ds0),
   phrase((seq(Ds0), [r], inv(Ds0)), Ds).

% dragon(Ds). 
