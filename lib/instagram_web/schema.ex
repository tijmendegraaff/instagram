defmodule InstagramWeb.Schema do
    use Absinthe.Schema

    alias InstagramWeb.Resolvers

    import_types __MODULE__.PostTypes

    query do
        # Photos
        field :photos, list_of(:photo) do
          resolve &Resolvers.Post.photos/3
        end
    
        field :photo, :photo do
          arg :id, non_null(:id)
    
          resolve &Resolvers.Post.photo/3
        end

    # mutation do
        
    end
end