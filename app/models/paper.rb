class Paper < ApplicationRecord
    
    validates :title, :venue, :year, presence: true
    validates :year, numericality: true
    has_and_belongs_to_many :authors
end
