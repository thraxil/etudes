%%% -----------------------------------------------
%%% @author anders pearson
%%% @doc simple geometry module
%%% @end
%%% -----------------------------------------------
-module(geom).
-export([area/3]).

%% @spec area(Atom, X::integer(), Y::integer()) -> integer()
%% @doc calculates area of the given shape.
area(rectangle, X, Y) when X > 0, Y > 0 ->
		X * Y;
area(triangle, X, Y) when X > 0, Y > 0 ->
		(X * Y) / 2;
area(ellipse, X, Y) when X > 0, Y > 0 ->
		math:pi() * X * Y.
