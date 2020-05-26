class Customer < ApplicationRecord
    has_many :orders
    has_many :reviews
    has_many :sushis, through: :orders

    validates :name, presence: true
end
