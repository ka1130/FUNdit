def project_attributes(overrides = {})
  {
    name: "Save the Planet",
    description: "As a global community, we have never been as connected as we are right now.",
    target_pledge_amount: 100000,
    website: "www.savetheplanet.org",
    pledging_ends_on: "2019-02-03",
    team_members: "Team Members",
    image_file_name: "earth.jpg"
  }.merge(overrides)
end
