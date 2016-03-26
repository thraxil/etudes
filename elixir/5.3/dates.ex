defmodule Dates do
  def date_parts(s) do
    String.split(s, "-")
    |> Enum.map(fn x -> String.to_integer x end)
  end
end
