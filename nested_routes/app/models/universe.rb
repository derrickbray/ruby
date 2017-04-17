class Universe < ApplicationRecord
  has_many :heros
  has_many :demi_gods
  has_many :gods
  has_many :myths
end
