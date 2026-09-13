% Worksheet 5: Member

my_member(X, [X|_]).
my_member(X, [_|T]) :-
    my_member(X, T).

% member(john, [paul, john]).
% member(X, [paul, john]).
% member(joe, [marx, darwin, freud])
% member(foo, X).

mystery(X, A, B) :-
    my_member(X, A),
    my_member(X, B).

% mystery(a, [b,c,a] , [p,a,l]).
% mystery(b, [b,l,u,e], [y,e,l,l,o,wj]).
% mystery(X, [r,a,p,i,d], [a,c,t,i,o,nj]).
% mystery(X, [w,a,l,n,u,t], [c,h,e,r,r,y]).
