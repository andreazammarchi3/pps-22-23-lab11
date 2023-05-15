% ES 1.1
% search2 (Elem , List )
% looks for two consecutive occurrences of Elem
search2(E, [E|T]).
search2(E, [H|T]) :- search2(E, T).

