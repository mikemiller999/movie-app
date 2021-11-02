class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  validates :title, presence: true
  validates :plot, presence: true
end
