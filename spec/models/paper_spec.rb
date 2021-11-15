require 'rails_helper'

RSpec.describe Paper, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "tests validation" do
    paper = Paper.new
    expect(paper).to_not be_valid
    paper.title = "idk dude"
    expect(paper).to_not be_valid
    paper.venue = "idk dude"
    expect(paper).to_not be_valid
    paper.year = "idk dude"
    expect(paper).to_not be_valid
    paper.year = 2004
    expect(paper).to be_valid
  end

  it "creates a paper with authors" do
    paper = Paper.new
    expect(paper.authors).to be_empty
    paper.authors.append(Author.new)
    expect(paper.authors).to_not be_empty
  end

  it "can filter by year" do
    paper1950 = Paper.new(title: "a", venue: "b", year: 1950)
    paper1968 = Paper.new(title: "c", venue: "d", year: 1968)
    paper1950.save
    paper1968.save
    
    filtered = Paper.published_in(1950)

    expect(filtered.include?(paper1950)).to be true
    expect(filtered.include?(paper1968)).to be false
  end
end
