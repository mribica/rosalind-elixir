defmodule RevcTest do
  use ExUnit.Case

  test "Rosalind.Revc.process test" do
    IO.puts Rosalind.Revc.description
    data = "AAAACCCGGT"
    assert Rosalind.Revc.process(data) == "ACCGGGTTTT"
  end
end
