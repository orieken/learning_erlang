-module(shapes).
-author("orieken").
-export([area/1]).


area({square, Side}) ->
  Side * Side;
area({circle, Radius}) ->
  3.1416 * Radius * Radius.
