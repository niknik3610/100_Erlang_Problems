-module(two).
-export([last_element_but_one/1]).

last_element_but_one([H | [_]]) ->
    H;
last_element_but_one([_ | L]) -> 
    last_element_but_one(L).
