require 'rails_helper'

describe "New author page", type: :feature do
  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "adds a new author in the DB when form is submitted", type: :feature do
    visit new_author_path
    initialCount = Author.count
    page.fill_in 'author[first_name]', with: 'Edgar'
    page.fill_in 'author[last_name]', with: 'Poe'
    page.fill_in 'author[homepage]', with: 'idk dude'
    find('input[type="submit"]').click
    expect(Author.count).to be(initialCount + 1)
  end
end
