defmodule Shapes.MixProject do
  use Mix.Project

  def project do
    [
      app: :shapes,
      version: "1.0.0",
      elixir: "~> 1.18",
      escript: escript(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      aliases: aliases()
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.7.11", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4.5", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      run: ["run -e Shapes.App.main([])"],
      test: ["test --trace"]
    ]
  end

  defp escript do
    [
      main_module: Shapes.App,
      path: "_build/escript/shapes",
      strip_beams: true
    ]
  end

  defp elixirc_paths(:test), do: ["test/shapes/fixtures"] ++ elixirc_paths(:prod)
  defp elixirc_paths(_), do: ["lib"]
end
