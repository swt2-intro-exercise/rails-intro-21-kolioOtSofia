require 'rails_helper'

describe "Show all authors page", type: :feature do
    it "should show all authors" do
        @alan = FactoryBot.create :author
        visit authors_url
        expect(page).to have_text("Alan Turing")
        expect(page).to have_text("http://wikipedia.de/Alan_Turing")
        expect(page).to have_link 'New', href: new_author_path
        expect(page).to have_link 'Edit', href: edit_author_path(@alan)
        #visit edit_author_url(@alan)
        #expect(page).to have_text("")
    end

    it "should delete an entry" do
        @alan = FactoryBot.create :author
        visit authors_url
        expect(page).to have_link 'Delete'
        @alan.destroy
        expect(Author.count).to be(0)
    end
end