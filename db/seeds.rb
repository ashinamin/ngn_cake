Admin.create!(
  email: 'dd@dd',
  password: '111111'
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |n|
  Genre.create!(
    name: 'ケーキ'
  )

  Genre.create!(
    name: 'プリン'
  )

  Genre.create!(
    name: '焼き菓子'
  )

  Genre.create!(
    name: 'キャンディ'
  )
Genre.create!(
  name: "ケーキ"
  )

item = Item.create!(
  genre_id: 1,
  name: "ケーキあ",
  price: 5000,
  introduction: "あ",
  is_active: true
  )
  item.item_image.attach(io: File.open(Rails.root.join("./app/assets/images/NO IMAGE.png")),filename: 'image')

item = Item.create!(
  genre_id: 1,
  name: "ケーキい",
  price: 5000,
  introduction: "い",
  is_active: true
  )
  item.item_image.attach(io: File.open(Rails.root.join("./app/assets/images/NO IMAGE.png")),filename: 'image')

 item = Item.create!(
  genre_id: 1,
  name: "ケーキう",
  price: 5000,
  introduction: "う",
  is_active: true
  )
  item.item_image.attach(io: File.open(Rails.root.join("./app/assets/images/NO IMAGE.png")),filename: 'image')
