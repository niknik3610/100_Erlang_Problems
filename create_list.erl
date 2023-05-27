-module(create_list).
-export([create_list/1]).

create_list(0) ->
    [];
create_list(N) ->
    create_list([N], N-1).
create_list(L, 0) ->
    L;
create_list(L, N) ->
    create_list([N|L], N-1).
