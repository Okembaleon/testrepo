defmodule LeonApi.Repo do
  use Ecto.Repo,
    otp_app: :leon_api,
    adapter: Ecto.Adapters.Postgres
end
