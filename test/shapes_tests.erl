-module(shapes_tests).
-author("orieken").

-include_lib("eunit/include/eunit.hrl").

area_can_calculate_a_square_test() ->
  Length = 8,
  Area = shapes:area({square, Length}),
  ?assertEqual(Area, Length * Length).

area_can_calculate_a_circle_test() ->
  Radius = 4,
  Area = shapes:area({circle, Radius}),
  ?assertEqual(Area, 3.1416 * Radius * Radius).
