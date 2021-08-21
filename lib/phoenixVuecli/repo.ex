defmodule PhoenixVuecli.Repo do
  use Ecto.Repo,
    otp_app: :phoenixVuecli,
    adapter: Ecto.Adapters.Postgres
end
