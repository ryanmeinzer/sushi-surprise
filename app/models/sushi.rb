class Sushi < ApplicationRecord
    has_many :orders
    has_many :reviews
    belongs_to :ocean
    has_many :customers, through: :orders 
end
