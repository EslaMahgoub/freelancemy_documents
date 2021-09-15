# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create_table "freelancemy_documents", force: :cascade do |t|
#   t.string "title"
#   t.string "description"
#   t.text "file_url"
#   t.text "image_url"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

10.times do
  FreelancemyDocument.create!([{
    title: Faker::JapaneseMedia::Conan.character,
    description: Faker::TvShows::GameOfThrones.quote,
    file_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUDo5SztXNhU-lS_-nynr-GRKp5E9oQpq_lQ&usqp=CAU",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUDo5SztXNhU-lS_-nynr-GRKp5E9oQpq_lQ&usqp=CAU",
  }])
end