alias Instagram.{Post, Repo}

fake_photos = 10

fake_tag = [
    "Summer",
    "Winter",
    "Spring",
    "Autumn",
    "SundayNight",
    "MondayMorning",
]
# Tags
for name <- fake_tag do
    %Post.Tag{name: name}
    |> Repo.insert!
end

# Photos
for _ <- 1..fake_photos do
    %Post.Photo{
        image_url: Faker.Internet.image_url(),
        tags: Enum.take_random(Repo.all(Post.Tag), Enum.random(1..4))
    }
    |> Repo.insert!
end