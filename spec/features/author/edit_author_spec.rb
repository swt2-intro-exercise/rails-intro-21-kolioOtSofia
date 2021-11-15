require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should be able to edit an author" do
    # make an author
    @author = FactoryBot.create :author
    visit edit_author_url(@author)
    page.fill_in 'author[first_name]', with: "Edgar"
    find('input[type="submit"]').click
    @author.reload
    expect(@author.first_name).to eq("Edgar")
    end
end