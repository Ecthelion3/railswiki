# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.delete_all

Page.create([
  { title: "Page 1", body: "Content of page 1", old: false },
  { title: "Page 2", body: "Content of page 2", old: false },
  { title: "Page 3", body: "Content of page 3", old: false }
])
