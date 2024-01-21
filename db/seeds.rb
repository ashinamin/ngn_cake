# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |n|
  Item.create!(
    item_image: File.open('./app/assets/images/NO IMAGE.png'),
    name: 'あんバターサンド',
    introduction: 'とろけるような旨さ！！！最高ですよ！！！',
    genre: 'ケーキ',
    price: '500',
    is_active: 'true'
  )
# end