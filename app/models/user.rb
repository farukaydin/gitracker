class User < ActiveRecord::Base
  include Clearance::User

  has_many :tracked_repos

  before_create :generate_api_key

  validates :email, :password, presence: true

  def generate_api_key
    self.api_key = SecureRandom.hex(16)
  end
end
