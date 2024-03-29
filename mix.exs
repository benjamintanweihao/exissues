defmodule Exissues.Mixfile do
  use Mix.Project

  def project do
    [ app: :exissues,
      version: "0.0.1",
      elixir: "~> 0.10.3-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [ :httpotion ] ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      { :httpotion, github: "myfreeweb/httpotion" },
      {:jsonex, "2.0", github: "marcelog/jsonex", tag: "2.0" }
    ]
  end
end
