class Group < ActiveRecord::Base
  validates :nom, presence: true
  has_many :people
end
