defmodule Rosalind.Rna do
  use Rosalind

  def process(data) do
    result = Enum.map data |> String.graphemes, fn (char) ->
      if char == "T", do: "U", else: char
    end

    Enum.join result
  end

  def description do
    """
    \n\n
    # The Second Nucleic Acid
    Url: http://rosalind.info/problems/rna/
    Given: A DNA string tt having length at most 1000 nt.
    Return: The transcribed RNA string of tt.
    """
  end
end
