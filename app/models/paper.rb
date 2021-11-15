class Paper < ApplicationRecord
    
    validates :title, :venue, :year, presence: true
    validates :year, numericality: true
    
    scope :published_in, ->(year_to_filter) { where("year = ?", year_to_filter) }   

    has_and_belongs_to_many :authors
end
