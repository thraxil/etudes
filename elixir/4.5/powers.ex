defmodule Powers do
  import Kernel, except: [raise: 2]

  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end
  
  def nth_root(x, n, a) do
    IO.puts("Current: #{a}")
    f = raise(a, n) - x
    f_prime = n * raise(a, n - 1)
    next = a - (f / f_prime)
    change = abs(next - a)
    if change < 1.0e-8 do
      next
    else
      nth_root(x, n, next)
    end
  end
  
  def raise(_, 0) do
    1
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -1 * n)
  end

  defp raise(x, 0, acc) do 
    acc
  end
  
  defp raise(x, n, acc) do
    raise(x, n - 1, acc * x)
  end
end
