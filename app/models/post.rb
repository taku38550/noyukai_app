class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :text,  presence: true
  validates :image, presence: true

end
