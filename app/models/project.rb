class Project < ApplicationRecord
  def pledging_expired?
    pledging_ends_on < Time.now
  end

  def self.ongoing
    where("pledging_ends_on > ?", Time.now).order("target_pledge_amount desc")
  end
end
