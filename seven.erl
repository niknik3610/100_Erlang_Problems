-module(seven).
-export([flatten/1]).

flatten([H | []]) ->
    flatten(H);
flatten([H | T]) ->
    flatten(H) ++ flatten(T);
flatten(L) ->
    [L].
