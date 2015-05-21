class TrackedRepo < ActiveRecord::Base
  belongs_to :user
  has_many :keywords
  has_many :events
end
