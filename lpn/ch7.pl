s --> [].
s --> l, s, r.
l --> [a].
r --> [b].

% s([a,a,b,b], []).
% s([a,b,b,a], []).
% phrase(s, P).

s1 --> [a, b].
s1 --> l, s1, r.

% phrase(s1, P).

s2 --> [].
s2 -->l, s2, r, r.

% phrase(s2, P).

even --> [].
even --> l, even, l.

% phrase(even, P).

even2 --> [].
even2 --> b, b, even2, c, c.
b --> [b].
c --> [c].

% phrase(even2, P).

s3 --> a, even2, d.
s3 --> a, s3, d.
a --> [a].
d --> [d].

% length(P, _), phrase(s3, P).
