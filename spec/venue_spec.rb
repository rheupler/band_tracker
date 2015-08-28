require('spec_helper')

describe(Venue) do

    it { should have_and_belong_to_many(:bands) }

    it('validates new venue name') do
      new_venue = Venue.new({name: ""})
      expect(new_venue.save()). to eq(false)
    end

end
