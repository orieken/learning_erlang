-module(shapes).
-author("orieken").
-import(math, [sqrt/1]).
-export([area/1]).


area({square, Side}) ->
  Side * Side;
area({circle, Radius}) ->
  3.1416 * Radius * Radius;
area({rectangle, Length, Width}) ->
  Length * Width;
area({triangle, A, B, C}) ->
  Sides = (A + B + C) / 2,
  math:sqrt(Sides * (Sides - A) * (Sides - B) * (Sides - C));
area(_Other) ->
  {error, invalid_opject}.