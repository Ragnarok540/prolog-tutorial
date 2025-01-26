/* Facts */
man(dr_black).
man(reverend_green).
man(colonel_mustard).
man(professor_plum).
woman(mrs_peacock).
woman(madame_rose).
woman(miss_scarlett).
woman(mrs_white).
victim(dr_black).
playing_cards(colonel_mustard).
playing_cards(reverend_green).
playing_cards(mrs_peacock).
gardening(mrs_white).
gardening(reverend_green).
played_golf(professor_plum).
played_golf(colonel_mustard).
smoker(miss_scarlett).
smoker(colonel_mustard).
smoker(mrs_white).
smoker(dr_black).
smoker(mrs_peacock).
room(room_21).
room(room_22).
room(room_23).
room(room_24).
room(room_25).
stay_in(dr_black, room_22).
stay_in(reverend_green, room_24).
stay_in(miss_scarlett, room_21).
stay_in(colonel_mustard, room_24).
stay_in(professor_plum, room_22).
stay_in(mrs_peacock, room_23).
stay_in(madame_rose, room_21).
stay_in(mrs_white, room_23).
owns_revolver(reverend_green).
owns_revolver(colonel_mustard).
owns_revolver(madame_rose).

% A suspect is either a man or a woman who is not the victim!
suspect(X) :-
  man(X),
  \+ victim(X).
suspect(X) :-
  woman(X),
  \+ victim(X).

% Any suspect who was seen playing cards at the time of the crime
% has a valid alibi!
has_alibi(X) :-
  suspect(X),
  playing_cards(X).

% Anyone who did some gardening, played golf or is a smoker has
% been outside at least once throughout the day.
went_outside(X) :-
  gardening(X).
went_outside(X) :-
  smoker(X).
went_outside(X) :-
  played_golf(X).

% The rooms of the hotel are twin rooms that can accomomdate two
% guests. Two guests share the same room if they both are booked
% in the same room.
share_room(X, Y) :-
  room(R),
  stay_in(X, R),
  stay_in(Y, R),
  X \= Y.

% Anyone who owns a revolver or share a room with another guest
% who owns a revolver, had access to a revolver!
revolver_access(X) :-
  owns_revolver(X).
revolver_access(X) :-
  share_room(X, Y),
  owns_revolver(Y).

% To find our culprit we need to find a suspect, who went outside
% (we found some muddy footprints on the floor next to Dr Black’s
% body), who has no alibi and who had access to a revolver!

murderer(M) :-
  went_outside(M),
  \+ has_alibi(M),
  revolver_access(M).
