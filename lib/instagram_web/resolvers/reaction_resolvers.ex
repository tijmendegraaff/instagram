defmodule InstagramWeb.Resolvers.Reaction do
    alias Instagram.{Repo, Reaction}
    alias InstagramWeb.Schema.Helpers

    use Absinthe.Schema.Notation
    use Absinthe.Ecto, repo: Repo
  
    
end