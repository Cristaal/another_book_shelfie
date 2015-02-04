require 'spec_helper'

describe Author do
  it { should have_and_belong_to_many :titles }
  it "validates the presence of name" do
    author = Author.new(name: '')
    expect(author.save()).to eq(false)
  end

  it("will capitalize the name of the author") do
    author = Author.create(name: "matt taibbi")
    expect(author.name()).to eq("Matt Taibbi")
  end
end
