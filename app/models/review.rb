class Review < ApplicationRecord
    belongs_to :customer
    belongs_to :sushi

    validates :rating, inclusion: 1..5 
    validates :sushi_id, uniqueness: { scope: :customer_id, message: "- You've already reviewed this sushi. Please edit your current review of this sushi to update it." }
end
