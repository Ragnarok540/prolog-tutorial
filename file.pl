hog :-
    open('./hogwarts.txt', write, Stream), % append
    write(Stream, 'howarts.'), nl(Stream),
    close(Stream).
