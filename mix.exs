defmodule Duplex.Mixfile do
  use Mix.Project

  def project do
    [app: :duplicate_code_finder,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     test_coverage: [tool: Coverex.Task],
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:dogma, "~> 0.1", only: :dev},
      {:dir_walker, ">= 0.0.0"},
      # {:exprof, "~> 0.2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:coverex, "~> 1.4.10", only: :test}
    ]
  end

  defp description do
    """
    Duplicate Code Finder allows you to search for similar code blocks inside your project.

    ## Usage
    ```elixir
    iex -S mix
    Duplex.show_similar(["lib", "config", "web"])
    ```
    """
  end

  defp package do
    [
     name: :duplicate_code_finder,
     # files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Cherevko Ivan", "Koryagin Andrew"],
     licenses: ["Lutrovnik"],
     links: %{},
    ]
  end

end
