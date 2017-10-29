defmodule InstagramWeb.Resolvers.Post do
    alias Instagram.{Repo, Post}
    alias InstagramWeb.Schema.Helpers

    use Absinthe.Schema.Notation
    use Absinthe.Ecto, repo: Repo
  
    def photos(_, _, _) do
      {:ok, Post.list_photos()}
    end
  
    def photo(_, %{id: id}, _) do
      {:ok, Post.get_photo!(id)}
    end
end