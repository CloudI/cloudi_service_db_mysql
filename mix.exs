#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceDbMysql do
  use Mix.Project

  def project do
    [app: :cloudi_service_db_mysql,
     version: "2.0.0",
     language: :erlang,
     erlc_options: [
       {:d, :erlang.list_to_atom('ERLANG_OTP_VERSION_' ++ :erlang.system_info(:otp_release))},
       :debug_info,
       :warnings_as_errors,
       :strict_validation,
       :warn_bif_clash,
       :warn_deprecated_function,
       :warn_export_all,
       :warn_export_vars,
       :warn_exported_vars,
       :warn_obsolete_guard,
       :warn_shadow_vars,
       :warn_unused_import,
       :warn_unused_function,
       :warn_unused_record,
       :warn_unused_vars],
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:emysql,
      [git: "https://github.com/okeuday/emysql.git",
       branch: "v0.4.2_CloudI"]},
     {:cloudi_core, "~> 2.0.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework MySQL Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_db_mysql"}]
   end
end
