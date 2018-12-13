class Project < ApplicationRecord
  has_many :pledges, dependent: :destroy 
  
  validates :name, :description, presence: true
  validates :description, length: { maximum: 500 }
  validates :target_pledge_amount, numericality: { greater_than: 0 }
  validates :website, format: {
    with:     /https?:\/\/[\S]+/,
    message:  "must have a valid url"
  }
  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+\.(gif|jpg|jpeg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  def pledging_expired?
    pledging_ends_on < Time.now
  end

  def self.ongoing
    where("pledging_ends_on > ?", Time.now).order("target_pledge_amount desc")
  end
end
