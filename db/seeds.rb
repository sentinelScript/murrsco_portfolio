# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph,
        topic_id: Topic.last.id
    )
end

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

8.times do |profolio_item|
    Portfolio.create!(
        title: "Title: House #{Faker::GameOfThrones.house}",
        subtitle: "Ruby on Rails",
        body: Faker::Lorem.paragraph,
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200", 
    )
end

1.times do |profolio_item|
    Portfolio.create!(
        title: "Title: House #{Faker::GameOfThrones.house}",
        subtitle: "Angular",
        body: Faker::Lorem.paragraph,
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200", 
    )
end

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 technologies created"