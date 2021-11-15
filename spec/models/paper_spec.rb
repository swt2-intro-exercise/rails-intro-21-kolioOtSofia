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
    paper.year = 2004
    expect(paper).to be_valid
  end
end
