%%%-------------------------------------------------------------------
%%% @author riekeno
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. Jun 2016 12:05 AM
%%%-------------------------------------------------------------------
-module(average_tests).
-author("riekeno").

-include_lib("eunit/include/eunit.hrl").

average_of_zero_test() ->
  ?assertEqual(average:average([0]), 0.0).

average_of_two_test() ->
  Expected_Average = (1 + 2) / 2,
  ?assertEqual(average:average([1,2]), Expected_Average).

average_of_three_test() ->
  Expected_Average = (1 + 2 + 3) / 3,
  ?assertEqual(average:average([1,2,3]), Expected_Average).

average_of_lots_of_numbers_test() ->
  Expected_Average = (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10) / 10,
  ?assertEqual(average:average(lists:seq(1, 10)), Expected_Average).