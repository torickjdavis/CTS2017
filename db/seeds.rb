# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title:"BlogPost #{blog}",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac euismod nibh. Nullam eu egestas neque. Praesent pulvinar maximus odio. Vivamus pulvinar ante quis augue molestie, at molestie velit vehicula. Proin porttitor euismod neque. Nulla ut venenatis metus. In mi lorem, luctus eu porta ac, scelerisque eu massa. Donec finibus libero et orci laoreet efficitur. Nullam porttitor, purus in fermentum euismod, turpis urna dignissim ligula, in lobortis elit est quis mauris. Sed ac enim euismod, mattis dolor at, pellentesque velit. In imperdiet sollicitudin elit, sed fringilla quam sollicitudin vitae. Proin varius laoreet erat ut tincidunt. Nullam bibendum mollis suscipit. Mauris malesuada condimentum semper. Donec iaculis eget lorem convallis volutpat."
    )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title:"Rails #{skill}",
    percent_utilized: 15
    )
end
puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio Item: #{portfolio_item}",
    subtitle:"My Great Service",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    main_image:"https://placehold.it/600x400",
    thumb_image:"https://placehold.it/350x200",
    )
end
puts "9 portfolio items created"