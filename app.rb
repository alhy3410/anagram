require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get ('/') do
  erb(:index)
end

get('/results') do
  @anagram = params.fetch('originalword').anagram(params.fetch('sentence'))
  erb(:results)
end
