% ES 1.1
% search2 (Elem , List )
% looks for two consecutive occurrences of Elem
search2(E, [E, E|T]).
search2(E, [_|T]) :- search2(E, T).

% ES 1.2
% search_two (Elem , List )
% looks for two occurrences of Elem with any element in between !
search_two(E, [E, X, E|T]).
search_two(E, [_|T]) :- search_two(E, T).


% ES 1.3
% size (List , Size )
% Size will contain the number of elements in List
size([], 0).
size([_, T], S) :- size(T, R), S is R + 1.
