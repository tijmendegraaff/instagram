defmodule InstagramWeb.Resolvers.Account do
    alias Instagram.{Repo, Account}

    def users(_,_,_) do
        {:ok, Account.list_users()}
    end

    def user(_,%{id: id},_) do
        {:ok, Account.get_user!(id)}
    end

    def photos_for_user(user, _, _) do
        {:ok, Account.photos_for_user(user)}
    end
    
end