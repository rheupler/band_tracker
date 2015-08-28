require 'spec_helper'
require 'capybara/rspec'
require './app'

describe '/', type: :feature do
  it('visits the index page') do
  visit '/'
  expect(page).to have_content ("Welcome to Band Tracker")
  end
end
