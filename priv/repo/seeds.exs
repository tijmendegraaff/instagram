alias Instagram.{Post, Repo}

fake_photos = 10

for _ <- 1..fake_photos do
    %Post.Photo{image_url: Faker.Internet.image_url()}
    |> Repo.insert!
end