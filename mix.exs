defmodule CloudIServiceDbMysql do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_mysql,
     version: "1.5.4",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:emysql,
      [git: "https://github.com/okeuday/emysql.git",
       branch: "v0.4.2_CloudI"]},
     {:cloudi_core, "~> 1.5.4"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework MySQL Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_mysql"}]
   end
end
