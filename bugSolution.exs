```elixir
list = [1, 2, 3, 4, 5]

# Using Enum.reduce for controlled iteration
result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    acc # Skip element 3
  else
    [x | acc]
  end
 end)
IO.inspect(Enum.reverse(result))

# Using try-catch to handle the exception
list = [1, 2, 3, 4, 5]
try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:error)
    else
      IO.puts(x)
    end
  end)
catch
  :error -> IO.puts("Exception caught!")
end
```