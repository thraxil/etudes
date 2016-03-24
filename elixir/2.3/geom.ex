defmodule Geom do
	@moduledoc """
	simple geometry module. done as an exercise for Elixir Etudes
	"""

	@doc """
	Calculates the area of a rectangle
	"""
	def area(width \\ 1, height \\ 1) do
		width * height
	end
end
