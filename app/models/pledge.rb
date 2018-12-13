class Pledge < ApplicationRecord
  belongs_to :project

  AMOUNT_LEVELS = [25, 50, 100, 200, 500]

  validates :name, presence: true
  validates :email, format: { with: /(\S+)@(\S+)/ }
  validates :amount, inclusion: { in: AMOUNT_LEVELS }
end
