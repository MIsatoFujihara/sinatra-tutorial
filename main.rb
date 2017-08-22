require 'sinatra'
require 'sinatra/reloader'
# htmlファイルを呼び出す
get '/' do
    erb :index
end

get '/:name' do |n|
    @name=n
    erb :index
end