%%%-------------------------------------------------------------------
%%% @author Oscar Rieken
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Jun 2016 11:50 PM
%%%-------------------------------------------------------------------
-module(average).
-author("riekeno").

%% API
-export([average/1, sum/1, len/1]).

average(X) -> sum(X) / len(X).

sum([Head|Tail]) -> Head + sum(Tail);
sum([]) -> 0.

len([_|Tail]) -> 1 + len(Tail);
len([]) -> 0.
