%%%-------------------------------------------------------------------
%%% @author associate
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Apr 2016 1:59 PM
%%%-------------------------------------------------------------------
-module(learning_erlang_app_test).
-author("orieken").

-include_lib("eunit/include/eunit.hrl").

simple_test() ->
  ?assert(true).

application_is_defined_test() ->
  ok = application:start(learning_erlang),
  ?assertNot(undefined == whereis(learning_erlang_sup)).

