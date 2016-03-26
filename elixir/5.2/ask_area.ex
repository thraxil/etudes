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

  def get_number(prompt) do
    input = IO.gets "Enter #{prompt} > "
    input = String.strip input
    cond do
      Regex.match? ~r/^[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?$/, input ->
        String.to_float input
      Regex.match? ~r/^\-?\d+$/, input ->
        String.to_integer input
      true ->
        :error
    end
  end

  defp get_dimensions(a, b) do
    n1 = get_number a
    n2 = get_number b
    {n1, n2}
  end

  defp calculate(_, :error, _) do
    IO.puts "invalid input"
  end
  defp calculate(_, _, :error) do
    IO.puts "invalid input"
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
