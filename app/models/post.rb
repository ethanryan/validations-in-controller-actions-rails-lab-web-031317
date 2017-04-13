class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  #validates :email, presence: true, uniqueness: true
  validates :content, length: { minimum: 250 }
  #validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  #validate :clickbait_title, on: :create
end
