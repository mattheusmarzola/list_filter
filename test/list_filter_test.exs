defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "must return 1 when 3 is the only one odd number in the list" do
      assert ListFilter.call(["3", "4", "a"]) == {:ok, 1}
    end

    test "must return 0 when does not have odd numbers in the list" do 
      assert ListFilter.call(["2", "4", "6"]) == {:ok, 0}
    end

    test "must return 0 given a empty list"  do 
      assert ListFilter.call([]) == {:ok, 0}
    end

    test "must return error when the parameter is not a list"  do 
      assert ListFilter.call(2) == {:error, "the parameter must be a list"}
    end
    
  end
end
