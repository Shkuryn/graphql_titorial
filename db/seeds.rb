# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  Product.create(
    title: FFaker::Product.product_name,
    color: FFaker::Color.name,
    description: FFaker::Lorem.sentence,
    price: rand(10..100),
    vendor: FFaker::Company.name,
    vat_rate: rand(0..20)
  )
end

5.times do
  Shop.create(
    name: FFaker::Company.name
  )
end

Shop.all.each do |shop|
  Product.all.each do |product|
    ProductAvailability.create(
      shop_id: shop.id,
      product_id: product.id,
      count: rand(0..10)
    )
  end
end
