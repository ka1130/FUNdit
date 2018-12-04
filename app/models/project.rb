class Project < ApplicationRecord
  def expired?
    pledging_ends_on > Time.now
  end
end
