require 'spec_helper'

describe Title do
  it { should have_and_belong_to_many :authors }

  it "validates the presence of title" do
    title = Title.new(title: '')
    expect(title.save()).to eq(false)
  end

  it "will capitalize the name of the title" do
    title = Title.create(title: "the divide")
    expect(title.title()).to eq("The Divide")
  end
end
