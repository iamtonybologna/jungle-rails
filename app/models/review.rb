class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  has_many :reviews

  validates :product, presence: true
  validates :user, presence: true
  validates :comment, presence: true
  validates :rating, presence: true, :inclusion => 1..5

end
