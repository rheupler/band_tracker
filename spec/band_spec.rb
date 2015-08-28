require('spec_helper')

describe(Band) do

  it("validates a new name") do
    new_band = Band.new({:name => ""})
    expect(new_band.save()).to(eq(false))
  end
end
