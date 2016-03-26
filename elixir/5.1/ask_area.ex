defmodule AskArea do
  def area() do
    input = IO.gets "R)ectangle, T)riangle, or E)llipse: "
    shape = char_to_shape input
    {width, height} = case shape do
                        :rectangle -> get_dimensions "width", "height"
                        :triangle -> get_dimensions "width", "height"
                        :ellipse -> get_dimensions "major radius", "minor radius"
                        :unknown -> {String.first(input), 0}
                      end
    calculate shape, width, height
  end

  defp char_to_shape(s) do
    s = s |> String.first
    |> String.downcase
    case s do
      "r" -> :rectangle
      "t" -> :triangle
      "e" -> :ellipse
      _ -> :unknown
    end
  end

  defp get_number(prompt) do
    input = IO.gets "Enter #{prompt} > "
    input |> String.strip |> String.to_integer
  end

  defp get_dimensions(a, b) do
    n1 = get_number a
    n2 = get_number b
    {n1, n2}
  end

  defp calculate(_, a, _) when not is_integer(a) do
    IO.puts "#{a} is not a number"
  end
  defp calculate(_, _, b) when not is_integer(b) do
    IO.puts "#{b} is not a number"
  end
  defp calculate(:unknown, a, _) do
    IO.puts "unknown shape #{a}"
  end
  defp calculate(_, a, b) when a <= 0 or b <= 0 do
    IO.puts "Both numbers must be greater than or equal to zero"
  end
  defp calculate(shape, a, b) do
    Geom.area(shape, a, b)
  end
end
