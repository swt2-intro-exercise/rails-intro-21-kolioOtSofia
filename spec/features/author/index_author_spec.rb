require 'rails_helper'

describe "Show all authors page", type: :feature do
    it "should show all authors" do
        @alan = FactoryBot.create :author
        visit authors_url
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
        expect(page).to have_link 'New', href: new_author_path
        expect(page).to have_link 'Edit', href: edit_author_url(@alan)
    end
end