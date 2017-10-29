defmodule InstagramWeb.Router do
  use InstagramWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstagramWeb do
    pipe_through :api
  end

  scope "/" do

    forward "/api/graphql", Absinthe.Plug,
      schema: InstagramWeb.Schema
    
    forward "/api/graphiql", Absinthe.Plug.GraphiQL,
      schema: InstagramWeb.Schema,
      interface: :simple
  end
end
