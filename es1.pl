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
size([_|T], S) :- size(T, R), S is R + 1.

% ES 1.4
% sum(List , Sum )
sum([], 0).
sum([H|T], S) :- sum(T, R), S is R + H.

% ES 1.5
% max(List ,Max , Min )
% Max is the biggest element in List
% Min is the smallest element in List
% Suppose the list has at least one element
max([H], H, H).
max([H|T], Max, Min) :- max(T, TMax, TMin), 
	(H > TMax -> Max = H ; Max = TMax),
	(H < TMin -> Min = H ; Min = TMin).

% ES 1.6
% sublist (List1 , List2 )
% List1 should contain elements all also in List2
% example : sublist ([1 ,2] ,[5 ,3 ,2 ,1]).
sublist([], _).
sublist([H|T], L) :- member(H, L), sublist(T, L).




