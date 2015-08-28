require('spec_helper')

describe(Band) do

  it { should have_and_belong_to_many(:venues) }

  it("validates the presence of name") do
    new_band = Band.new({:name => ""})
    expect(new_band.save()).to(eq(false))
  end
end
