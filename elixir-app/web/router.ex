defmodule Rocket.Router do
  use Rocket.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  # socket "/ws", Rocket, via: [Phoenix.Transports.WebSocket] do
  #   channel "test:xyz", WorldChannel
  # end


end
