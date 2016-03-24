defmodule Geom do
	def area(:rectangle, width, height) when width >= 0 and height >= 0 do
		width * height
	end

  def area(:triangle, width, height) when width >= 0 and height >= 0 do
    width * height / 2.0
  end

  def area(:ellipse, width, height) when width >= 0 and height >= 0 do
    :math.pi() * width * height
  end

  def area(_, _, _) do
    0
  end
end
