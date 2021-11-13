require 'rails_helper'

describe "Show author page", type: :feature do
    it "should show details for an author" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
    end
end