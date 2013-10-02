-module(powers).
-export([raise/2]).

raise(_X, 0) ->
		1;
raise(X, 1) ->
		X;
raise(X, N) when N > 0 ->
		raise(X, N, 1);
raise(X, N) when N < 0 ->
		1.0 / (raise(X, -1 * N)).


raise(_X, 0, Acc) ->
		Acc;
raise(X, N, Acc) ->
		raise(X, N - 1, X * Acc).
