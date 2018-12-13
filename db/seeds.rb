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
    website: "http://project-a.com",
    team_members: "Member 1, Member 2, Member 3",
    image_file_name: "company.jpeg"
  },
  {
    name: "Community Project",
    description: "A description of a community project",
    target_pledge_amount: 200.00,
    pledging_ends_on: 1.week.from_now,
    website: "http://project-b.com",
    team_members: "Member A, Member B, Member C",
    image_file_name: "earth.jpg"
  },
  {
    name: "Personal Project",
    description: "A description of a person project",
    target_pledge_amount: 300.00,
    pledging_ends_on: 1.month.from_now,
    website: "http://project-c.com",
    team_members: "Member 1, Member 2, Member 3",
    image_file_name: "personal.jpg"
  }
])

project = Project.find_by(name: 'Start-Up Project')
project.pledges.create!(name: "Roger Ebert", email: "r.ebert@example.com", comment: "Cool project!", amount: 25)
project.pledges.create!(name: "Gene Siskel", email: "g.siskel@example.com", comment: "Like this one.", amount: 25)
project.pledges.create!(name: "Peter Travers", email: "p.travers@example.com", comment: "Go ahead!", amount: 25)
project = Project.find_by(name: 'Community Project')
project.pledges.create!(name: "Elvis Mitchell", email: "e.mitchell@example.com", comment: "Cool one!", amount: 25)