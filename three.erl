-module(three).
-export([kth/2]).

kth([H | _], 0) ->
    H;
kth([_| T], K) ->
    kth(T, K - 1).
