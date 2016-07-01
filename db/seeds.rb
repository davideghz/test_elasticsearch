Product.delete_all
Tag.delete_all
ProductTag.delete_all

tags = ["pizza","pazza","puzza","pozza","zozza","zozzona","pistola","puzzona"]

tags.each do |tag|
  Tag.create!(name:tag)
end

10.times do
  name = Faker::Lorem.word.humanize
  lat = Faker::Address.latitude
  lon = Faker::Address.longitude

  Product.create!(
             name: name,
             lat: lat,
             lon: lon
  )

end

tags = Tag.all

Product.all.each do |p|
  p.tags << tags.sample(3)
end

