%%%-------------------------------------------------------------------
%%% @author associate
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Apr 2016 2:48 AM
%%%-------------------------------------------------------------------
-module(lists_test).
-author("associate").

-include_lib("eunit/include/eunit.hrl").

adding_list_test() ->
  ?assertEqual([1, 2, 3] ++ [4, 5], [1, 2, 3, 4, 5]).

not_adding_list_test() ->
  ?assertNotEqual([1, 2, 3] ++ [4, 5], [1, 2, 3, 4, 5, 6]).

subtracting_list_test() ->
  ?assertEqual([1, 2, 3, 4, 5] -- [1, 2, 3], [4, 5]).

head_of_list_is_one_test() ->
  ?assertEqual(hd([1, 2, 3]), 1).

tail_of_list_is_everything_else_test() ->
  ?assertEqual(tl([1, 2, 3, 4, 5]), [2, 3, 4, 5]).

add_new_head_to_list_test() ->
  List = [2, 3, 4],
  NewList = [1 | List],
  ?assertEqual(NewList, [1, 2, 3, 4]).

split_head_and_tail_from_list_test() ->
  List = [1, 2, 3, 4],
  [Head | Tail] = List,
  ?assertEqual(Head, 1),
  ?assertEqual(Tail, [2, 3, 4]).

get_even_numbers_from_list_test() ->
  Value = [X || X <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], X rem 2 =:= 0],
  ?assertEqual(Value, [2, 4, 6, 8, 10]).

get_odd_numbers_from_list_test() ->
  Value = [X || X <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], X rem 2 =:= 1],
  ?assertEqual(Value, [1, 3, 5, 7, 9]).

threes_are_returned_test() ->
  Value = [X || X <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], X rem 3 =:= 0],
  ?assertEqual(Value, [3, 6, 9, 12, 15]).
