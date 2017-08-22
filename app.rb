require 'sinatra'
require 'sinatra/reloader'
get '/' do
    "hello world!"
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

#パラメータにワイルドカードを使用
get '/from/*/to/*' do |f,t|
    "From #{f},to #{t}"
end
#正規表現の利用
get %r{/id/([0-9]*)} do |i|
    "Your ID is #{i}"
end