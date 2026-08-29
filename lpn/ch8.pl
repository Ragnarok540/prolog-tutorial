s --> np(subject), vp.
s --> np(subject, plural), vp(plural).
s --> np(subject), pp.
s --> np(subject), vp, pp.

np(_) --> det, n.
np(_) --> det, adj, n.
np(X) --> pro(X).
np(subject, plural) --> det, n(plural).

vp --> v, np(object).
vp --> v.
vp(plural) --> v(plural).

det --> [Word], {lex(Word, det)}.

n --> [Word], {lex(Word, n)}.
n(plural) --> [Word], {lex(Word, n, plural)}.

v --> [Word], {lex(Word, v)}.
v(plural) --> [Word], {lex(Word, v, plural)}.

pro(subject) --> [Word], {lex(Word, ps)}.
pro(object) --> [Word], {lex(Word, po)}.

adj --> [Word], {lex(Word, adj)}.

p --> [Word], {lex(Word, p)}.

pp --> p, np(_).

lex(the, det).
lex(a, det).
lex(woman, n).
lex(man, n).
lex(apple, n).
lex(pear, n).
lex(eats, v).
lex(shoots, v).
lex(he, ps).
lex(she, ps).
lex(him, po).
lex(her, po).
lex(small, adj).
lex(big, adj).
lex(in, p).
lex(on, p).
lex(from, p).
lex(of, p).
lex(at, p).

lex(men, n, plural).
lex(eat, v, plural).
lex(know, v, plural).

% s([her,shoots,she],[]).
% s([she,shoots,him],[]).
% s([the,man,eats],[]).
% s([the,big,man,eats],[]).
% s([the,man,in,the,woman],[]). 
% s([the,man,eats,on,the,woman],[]).
