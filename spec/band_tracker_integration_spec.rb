require 'spec_helper'
require 'capybara/rspec'
require './app'

describe '/', type: :feature do
  it('visits the index page') do
  visit '/'
  expect(page).to have_content ("Keep up with your favorite bands")
  end


  it('visit band page and add new band') do
    visit '/bands'
    fill_in('band_name', :with => "The Unicorns")
    click_button('Add the band')
    expect(page).to have_content("The Unicorns")
  end
end
