:- dynamic(word/2).

update_word(Token) :-
    ( word(Token, F)
    -> retract(word(Token, F)), NF is F + 1, asserta(word(Token, NF))
    ; asserta(word(Token, 1))
    ).

read_tokens(Stream, _) :-
    at_end_of_stream(Stream), !.

read_tokens(Stream, [Token|Rest]) :-
    read_token(Stream, Token),
    update_word(Token),
    read_tokens(Stream, Rest).

main(Tokens) :-
    open('./file.txt', read, Stream),
    read_tokens(Stream, Tokens).

% main(T).
% listing.
