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
  id = params.fetch('id')
  @band = Band.find(id)
  @band.destroy()
  @bands = Band.all()
  erb(:bands)
end

patch '/bands/:id/update' do
  id = params.fetch('id')
  @band = Band.find(id)
  band_name = params.fetch('band_name')
  @band.update({name: band_name})
  @bands = Band.all()
  erb(:bands)
end
