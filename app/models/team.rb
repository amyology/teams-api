class Team < ActiveRecord::Base

  validates :name, presence: true
  validates :creature, presence: true
  validates :state, presence: true
  validates :sport, presence: true

end