require "bundler/setup"
require 'pry'
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

##### INDEX #####

get ('/') do
  erb(:index)
end

##### BANDS #####

get '/bands' do
  @bands = Band.all()
  erb(:bands)
end

post '/bands' do
  name = params.fetch('band_name')
  @band = Band.create({name: name})
  @bands = Band.all()
  erb(:bands)
end

delete '/bands/:id' do
  id = params.fetch('id').to_i
  @band = Band.find(id)
  @band.destroy()
  @bands = Band.all()
  erb(:bands)
end


patch("/bands/:id") do
  @bands = Band.all()
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  band_name = params.fetch('band_name', @band.name)
  @band.update({name: band_name})
  venue_id = params.fetch("venue_id")
  new_venue = Venue.find(venue_id)
  @band.venues().push(new_venue)
  @venues = Venue.all()
  url = "/bands/" + params.fetch("id")
  redirect(url)
end
patch("/bands/:id/update") do
  @bands = Band.all()
  band_id = params.fetch("id").to_i()
  @band = Band.find(band_id)
  band_name = params.fetch('band_name', @band.name)
  @band.update({name: band_name})
  erb(:bands)
end



##### INDIVIDUAL BAND PAGES #####

get '/bands/:id' do
  id = params.fetch('id').to_i
  @band = Band.find(id)
  @venues = Venue.all()
  erb(:band_detail)
end

##### VENUE #####

get '/venues' do
  @venues = Venue.all()
  erb(:venue)
end

post '/venues' do
  name = params.fetch('venue_name')
  @venue = Venue.create({name: name})
  @venues = Venue.all()
  erb(:venue)
end

delete '/venues/:id' do
  id = params.fetch('id').to_i
  @venue = Venue.find(id)
  @venue.destroy()
  @venues = Venue.all()
  erb(:venue)
end

patch '/venues/:id/update' do
  id = params.fetch('id').to_i
  @venue = Venue.find(id)
  venue_name = params.fetch('venue_name')
  @venue.update({name: venue_name})
  @venues = Venue.all()
  erb(:venue)
end
