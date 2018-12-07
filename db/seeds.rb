# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create!([
  {
    name: "Start-Up Project",
    description: "A description of a start-up project",
    target_pledge_amount: 100.00,
    pledging_ends_on: 1.day.from_now,
    website: "http://project-a.com"
  },
  {
    name: "Community Project",
    description: "A description of a community project",
    target_pledge_amount: 200.00,
    pledging_ends_on: 1.week.from_now,
    website: "http://project-b.com"
  },
  {
    name: "Personal Project",
    description: "A description of a person project",
    target_pledge_amount: 300.00,
    pledging_ends_on: 1.month.from_now,
    website: "http://project-c.com"
  }
])

