-module(capital_letters).
-export([get_vowels_upper_1/1, get_vowels_upper_2/1]).

% get_vowels_upper(H) -> 
%     get_vowels_upper(H, 0).
% get_vowels_upper([H | T], N) ->
%     case H of
%         $A -> get_vowels_upper(T, N+1);
%         $E -> get_vowels_upper(T, N+1);
%         $I -> get_vowels_upper(T, N+1);
%         $O -> get_vowels_upper(T, N+1);
%         $U -> get_vowels_upper(T, N+1);
%         _ -> get_vowels_upper(T, N)
%     end;
% get_vowels_upper([], N) ->
%     N.

get_vowels_upper_1(L) ->
    get_occurences(L, $A, 0) +
    get_occurences(L, $E, 0) +
    get_occurences(L, $I, 0) +
    get_occurences(L, $O, 0) +
    get_occurences(L, $U, 0).

get_vowels_upper_2(L) ->
    {
     {a, get_occurences(L, $A, 0)},
     {e, get_occurences(L, $E, 0)},
     {i, get_occurences(L, $I, 0)},
     {o, get_occurences(L, $O, 0)},
     {u, get_occurences(L, $U, 0)}
    }.

get_occurences([H | L], Vowel, Count) ->
    if
        H == Vowel -> get_occurences(L, Vowel, Count + 1);
        true -> get_occurences(L, Vowel, Count)
    end;
get_occurences([], _, Count) ->
    Count.


