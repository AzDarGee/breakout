class Topic < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true

  acts_as_likeable
end
