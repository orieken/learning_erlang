-module(factorial_tests).
-author("orieken").
-include_lib("eunit/include/eunit.hrl").

factorial_of_3_is_6_test() ->
  Value = factorial:factorial(3),
  ?assertEqual(Value, 3 * 2 * 1).

factorial_of_10_is_6_test() ->
  Value = factorial:factorial(10),
  ?assertEqual(Value, 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1).