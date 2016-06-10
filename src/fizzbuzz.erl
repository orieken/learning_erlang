%%%-------------------------------------------------------------------
%%% @author associate
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Apr 2016 1:50 PM
%%%-------------------------------------------------------------------
-module(fizzbuzz).
-author("associate").

%% API
-export([fizzbuzz/1, fizz_buzz_two/2 ]).

%%fizzbuzz(number) ->
%%  number.

fizzbuzz(List) ->
  F = fun(N) when N rem 15 == 0 -> "FizzBuzz";
    (N) when N rem 3 == 0 -> "Fizz";
    (N) when N rem 5 == 0 -> "Buzz";
    (N) -> integer_to_list(N)
      end,
  [F(N) || N <- List].

fizz_buzz_two(Number, Interval) ->
  lists:foreach(
    fun(X) -> io:format("~w~",
      [case {X rem 3, X rem 5} of
         {0, 0} -> fizzbuzz;
         {0, _} -> fizz;
         {_, 0} -> buzz;
         {_, _} -> X end])
    end,
    lists:seq(Number, Interval)).
