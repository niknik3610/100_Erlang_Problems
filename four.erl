-module(four).
-export([len/1, len/2]).

len([_ | T]) ->
    len(T, 1).
len([_ | []], N) ->
    N+1;
len([_ | T], N) ->
    len(T, N+1).

