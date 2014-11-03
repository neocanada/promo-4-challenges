class Post < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :url
  validates :url, format: {
    with: /\Ahttp:\/\/.+\z/i,
    message: "invalid url"
  }
  validates :name, length: { minimum: 5 }
  validates_uniqueness_of :name, case_sensitive: false
end