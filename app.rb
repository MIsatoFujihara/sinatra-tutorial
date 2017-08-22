require 'sinatra'
require 'sinatra/reloader'
get '/' do
    "hello world"
end

get '/about' do
    "about this site page"
end

get '/hello/:name' do
    "Hello, #{params[:name]}!"
end

get '/age/:num' do |n|
    "You are #{n} years old!"
end

#オプションとしてのパラメータ
get '/name/:first/?:last?' do |f,l|
    "I am #{f} #{l}"
end