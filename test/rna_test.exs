defmodule RosalindRnaTest do
  use ExUnit.Case

  test "Rosalind.Rna.process test" do
    IO.puts Rosalind.Rna.description
    data = "GATGGAACTTGACTACGTAAATT"
    assert Rosalind.Rna.process(data) == "GAUGGAACUUGACUACGUAAAUU"
  end
end
