defmodule LeonApiWeb.DefaultController do
  use LeonApiWeb, :controller

  def index(conn, _params) do
    text conn, "Leon API is LIVE - #{Mix.env()}"
  end

end
