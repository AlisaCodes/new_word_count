require('sinatra')
require('sinatra/reloader')
require('./lib/word_count.rb')
also_reload('lib/**/*.rb')
require('pry')


get('/') do
  erb(:index)
end

get('/count') do
  @word = params.fetch('word')
  @result = params.fetch('sentence').word_count(params.fetch('word'))
  erb(:count)
end
