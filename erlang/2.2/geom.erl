%%% -----------------------------------------------
%%% @author anders pearson
%%% @doc simple geometry module
%%% @end
%%% -----------------------------------------------
-module(geom).
-export([area/2]).

%% @spec area(X::integer(), Y::integer()) -> integer()
%% @doc calculates area. duh.
area(X, Y) ->
		X * Y.
