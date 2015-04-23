require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')

get ('/') do
  erb(:index)
end

get('/results') do
  @anagram = params.fetch('anagram').anagram()
  erb(:results)
end
