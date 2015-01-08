require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace.rb')

get('/') do
  erb(:finder)
end

get('/display') do
  @whatever = params.fetch("phrase")
  @find = params.fetch("find")
  @replace = params.fetch("replace")
  @replaced = (@whatever).find_and_replace(@find, @replace)
  erb(:display)
end
