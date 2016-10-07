defmodule Rosalind.Revc do
  use Rosalind

  def process(data) do
    data |>
    String.graphemes |>
    Enum.reverse |>
    Enum.map(&complement(&1)) |>
    Enum.join
  end

  def complement(char) do
    case char do
      "A" -> "T"
      "C" -> "G"
      "T" -> "A"
      "G" -> "C"
      _   -> char
    end
  end

  def description do
    """
    \n\n
    # The Secondary and Tertiary Structures of DNA
    Url: http://rosalind.info/problems/revc
    Given: A DNA string ss of length at most 1000 bp.
    Return: The reverse complement scsc of ss.
    """
  end
end
