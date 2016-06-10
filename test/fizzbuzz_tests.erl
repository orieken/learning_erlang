%%%-------------------------------------------------------------------
%%% @author associate
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Apr 2016 1:34 PM
%%%-------------------------------------------------------------------
-module(fizzbuzz_tests).
-author("orieken").
-include_lib("eunit/include/eunit.hrl").

fizz_at_three_test() ->
  Value = fizzbuzz:fizzbuzz(lists:seq(1, 3)),
  ?assertEqual(Value, ["1", "2", "Fizz"]).

fizzbuzz_at_fifteen_test() ->
  Value = fizzbuzz:fizzbuzz(lists:seq(1, 15)),
  ?assertEqual(Value, ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]).

%fizz_buzz_two_at_three_test() ->
%  Value = fizzbuzz:fizz_buzz_two(1, 3),
%  ?assertEqual(Value, ["1", "2", "Fizz"]).