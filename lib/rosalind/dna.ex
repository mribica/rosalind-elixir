defmodule Rosalind.Dna do
  use Rosalind

  def process(data) do
    state = %{"A" => 0, "C" => 0, "G" => 0, "T" => 0}
    result = Enum.reduce data |> String.graphemes, state, fn(char, acc) ->
      Map.update!(acc, char, &(&1 + 1))
    end

    Enum.join Map.values(result), " "
  end

  def description do
    """
    \n\n
    # Counting DNA Nucleotides
    Url: http://rosalind.info/problems/dna/
    Given: A DNA string ss of length at most 1000 nt.
    Return: Four integers (separated by spaces) counting the respective number of times that the symbols 'A', 'C', 'G', and 'T' occur in ss.
    """
  end
end
