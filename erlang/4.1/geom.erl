%%% -----------------------------------------------
%%% @author anders pearson
%%% @doc simple geometry module
%%% @end
%%% -----------------------------------------------
-module(geom).
-export([area/3]).

%% @spec area(Atom, X::integer(), Y::integer()) -> integer()
%% @doc calculates area of the given shape.
area(Type, X, Y) when X > 0, Y > 0->
		case Type of
				rectangle ->
						X * Y;
				triangle ->
						(X * Y) / 2;
				ellipse ->
						math:pi() * X * Y
				end;
area(_, _, _) -> 0.
