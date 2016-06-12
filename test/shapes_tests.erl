-module(shapes_tests).
-author("orieken").
-import(erlang, [display/1]).
-include_lib("eunit/include/eunit.hrl").

area_can_calculate_a_square_test() ->
  Length = 8,
  Area = shapes:area({square, Length}),
  ?assertEqual(Area, Length * Length).

area_can_calculate_a_circle_test() ->
  Radius = 4,
  Area = shapes:area({circle, Radius}),
  ?assertEqual(Area, 3.1416 * Radius * Radius).

%% length times width
area_can_calculate_a_rectangle_test() ->
  Length = 12,
  Width = 13,
  Area = shapes:area({rectangle, Length, Width}),
  ?assertEqual(Area, Length * Width).

area_can_calculate_a_triangle_test() ->
  A = 5,
  B = 7,
  C = 6,
  Sides = (A + B + C) / 2,
  Total = math:sqrt(Sides*(Sides-A)*(Sides-B)*(Sides-C)),
  Area = shapes:area({triangle, A, B, C }),
  ?assertEqual(Area, Total).