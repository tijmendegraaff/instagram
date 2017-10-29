alias Instagram.{Post, Repo, Account, Reaction}

fake_photos = 10

fake_users = 5

fake_tag = [
    "Summer",
    "Winter",
    "Spring",
    "Autumn",
    "SundayNight",
    "MondayMorning",
]

# Users
for _ <- 1..fake_users do
    %Account.User{username: Faker.Internet.user_name(), avatar: Faker.Internet.image_url()}
    |> Repo.insert!
end
# Tags
for name <- fake_tag do
    %Post.Tag{name: name}
    |> Repo.insert!
end

# Photos
for _ <- 1..fake_photos do
    %Post.Photo{
        image_url: Faker.Internet.image_url(),
        tags: Enum.take_random(Repo.all(Post.Tag), Enum.random(1..4)),
        user_id: Enum.random(1..fake_users)
    }
    |> Repo.insert!
end

# Likes 

for _ <- 1..fake_users do
    %Reaction.LikePhoto{
        user_id: Enum.random(1..fake_users),
        photo_id: Enum.random(1..fake_photos),
    }
    |> Repo.insert!
end