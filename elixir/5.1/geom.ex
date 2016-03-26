defmodule Geom do
	def area(shape, width, height) when width >= 0 and height >= 0 do
    case shape do
      :rectangle -> width * height
      :triangle -> width * height / 2.0
      :ellipse -> :math.pi() * width * height
      _ -> 0
    end
	end
end
