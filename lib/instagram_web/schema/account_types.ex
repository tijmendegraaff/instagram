defmodule InstagramWeb.Schema.AccountTypes do
    use Absinthe.Schema.Notation
  
    alias InstagramWeb.Resolvers
  
    object :user do
      field :id, non_null(:id)
      field :inserted_at, non_null(:string)
      field :username, non_null(:string)
      field :avatar, non_null(:string)

      field :photos, non_null(list_of(:photo)) do
          resolve &Resolvers.Account.photos_for_user/3
      end
    end

  end