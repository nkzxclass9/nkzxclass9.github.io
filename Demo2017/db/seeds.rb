Category.delete_all
10.times do
  Category.create({
                      title: Faker::GameOfThrones.character,
                      description: Faker::Lorem.sentence(3, true, 4)
                  })
end