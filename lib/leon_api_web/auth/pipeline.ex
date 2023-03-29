defmodule LeonApiWeb.Auth.Pipeline do
  use Guardian.Plug.Pipeline, otp_app: :leon_api,
  module: LeonApiWeb.Auth.Guardian,
  error_handler: LeonApiWeb.Auth.GuardianErrorHandler

  plug Guardian.Plug.VerifySession
  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
