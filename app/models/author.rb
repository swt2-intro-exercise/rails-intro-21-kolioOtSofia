class Author < ApplicationRecord
    def name
        return self.first_name + " " + self.last_name
    end

    validates :last_name, presence: true
    has_and_belongs_to_many :papers
end
