defmodule Geom do
	def area(:rectangle, width, height) do
		width * height
	end

  def area(:triangle, width, height) do
    width * height / 2.0
  end

  def area(:ellipse, width, height) do
    :math.pi() * width * height
  end
end
