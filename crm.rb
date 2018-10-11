require_relative 'contact'
require 'sinatra'



get ('/home') do

puts 'home'
erb :index

end
