class User < ActiveRecord::Base
  has_many :posts

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "invalid email"
  }

  before_validation :strip_email

  def strip_email
    self.email = email.strip unless email.nil?
  end
end