defmodule RocketPay.Repo do
  use Ecto.Repo,
    otp_app: :rocket_pay,
    adapter: Ecto.Adapters.Postgres
end
