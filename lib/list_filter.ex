defmodule ListFilter do

  require Integer

  def call([]), do: {:ok, 0}

  def call(list) when is_list(list) do
    result =
    list
    |> Enum.filter(fn item -> Regex.match?(~r{\A\d*\z}, item) end)
    |> Enum.filter(fn item -> is_odd?(item) end)
    |> length()

    {:ok, result}
  end

  def call(_), do: {:error, "the parameter must be a list"}

  defp is_odd?(item) do 
    item 
    |> String.to_integer()
    |> Integer.is_odd()
  end
end
  
