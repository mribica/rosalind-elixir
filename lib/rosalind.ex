defmodule Rosalind do
  defmacro __using__(_) do
    quote do
      def main(args) do
        args |> process
      end
    end
  end
end
