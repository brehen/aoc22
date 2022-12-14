defmodule AOC.Day1Test do
  use ExUnit.Case
  import Assertions, only: [assert_lists_equal: 2]
  alias AOC.Day1
  doctest Day1

  @simple "day1/simple_input.txt"
  @complex "day1/complex_input.txt"

  test "Sums the correct amount per elf in simple input" do
    expected_results = [6000, 4000, 11_000, 24_000, 10_000]
    actual_results = Day1.get_gnomes(@simple)
    assert_lists_equal(actual_results, expected_results)
    highest = Day1.get_highest(actual_results)
    assert highest === 24_000
  end

  test "finds largest in big text" do
    sum =
      Day1.get_gnomes(@complex)
      |> Day1.get_highest()

    # Just to make the test pass : - )
    assert sum == 69_693
  end

  test "find sum of largest three in big text" do
    sum =
      Day1.get_gnomes(@complex)
      |> Day1.get_three_highest_sum()

    assert sum == 200_945
  end
end
