% ES 1.1
% search2 (Elem , List )
% looks for two consecutive occurrences of Elem
search2(E, [E, E|T]).
search2(E, [H|T]) :- search2(E, T).

% ES 1.2
% search2 (Elem , List )
% looks for two consecutive occurrences of Elem
search_two(E, [E, X, E|T]).
search_two(E, [H|T]) :- search_two(E, T).

