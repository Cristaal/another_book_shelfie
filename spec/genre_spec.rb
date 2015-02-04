require 'spec_helper'

describe Genre do
  it { should have_many :titles }

  it "validates the presence of genre" do
    genre = Genre.new(name: '')
    expect(genre.save()).to eq(false)
  end

  it "will capitalize the name of the genre" do
    genre = Genre.create(name: "political nonfiction")
    expect(genre.name()).to eq("Political Nonfiction")
  end
end
