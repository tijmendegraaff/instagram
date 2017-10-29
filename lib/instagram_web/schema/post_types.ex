defmodule InstagramWeb.Schema.PostTypes do
    use Absinthe.Schema.Notation
  
    alias InstagramWeb.Resolvers
  
    object :photo do
      field :id, non_null(:id)
      field :image_url, non_null(:string)
      field :inserted_at, non_null(:string)
      field :tags, non_null(list_of(:tag)) do
        resolve &Resolvers.Post.tags_for_photos/3
      end
      field :user, non_null(:user) do
          resolve &Resolvers.Post.user_for_photo/3
      end
      field :likes_user, non_null(:user) do
          resolve &Resolvers.Post.users_like_for_photo/3
      end
    end
  
    object :tag do
      field :id, non_null(:id)
      field :name, non_null(:string)
    end
  end