defmodule InstagramWeb.Schema.PostTypes do
    use Absinthe.Schema.Notation
    use Absinthe.Ecto, repo: Instagram.Repo
  
    alias InstagramWeb.Resolvers

    object :photo do
        field :id, non_null(:id)
        field :image_url, non_null(:string)
        field :inserted_at, non_null(:string)
    end
end