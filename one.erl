-module(one).
-export([last_element/1]).

last_element([H|[]]) -> 
    H;
last_element([_|L]) ->
    last_element(L).

