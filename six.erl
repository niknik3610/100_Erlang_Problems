-module(six).
-import(five, [reverse/1]).
-export([is_palindrome/1]).
is_palindrome(L) -> 
    L == five:reverse(L).

