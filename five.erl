-module(five).
-export([reverse/1]).

reverse(List) -> 
    inner_reverse(List, []).
inner_reverse([], Fin) ->
    Fin;
inner_reverse([H | T], Fin) ->
    inner_reverse(T, [H | Fin]).


