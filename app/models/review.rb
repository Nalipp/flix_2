class Review < ActiveRecord::Base
  belongs_to :movie

  validates :name, presence: true

  validates :comment, length: { minimum: 4 }

  STARS = %w[1 2 3 4 5]
end
