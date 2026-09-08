:- include('grammar.pl').
:- include('pptree.pl').

test(Phrase, File) :-
    s(Tree, Phrase, []),
    open(File, write, Stream),
    pptree(Tree, Stream),
    close(Stream).

% test([the, woman, shoots, a, man], './test.txt').
