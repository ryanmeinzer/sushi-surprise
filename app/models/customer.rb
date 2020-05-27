class Customer < ApplicationRecord
    has_many :orders
    has_many :reviews
    has_many :sushis, through: :orders

    validates :name, presence: true

    def favorites
        reviews = self.reviews.select { |review| review.rating == 5 }.map { |review| review.sushi.name }
    end

end
