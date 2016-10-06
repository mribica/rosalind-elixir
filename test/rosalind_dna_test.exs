defmodule RosalindDnaTest do
  use ExUnit.Case

  test "Rosalind.Dna.process test" do
    IO.puts Rosalind.Dna.description

    data = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    assert Rosalind.Dna.process(data) == "20 12 17 21"
  end
end
