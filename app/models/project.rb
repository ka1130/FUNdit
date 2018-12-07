class Project < ApplicationRecord
  def pledging_expired?
    pledging_ends_on < Time.now
  end
end
