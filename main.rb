require 'sinatra'
require 'sinatra/reloader'
# htmlファイルを呼び出す
get '/' do
    erb :index
end

get '/:name' do |n|
    @name=n
    # 遠隔的に操作
    @title="main_index"
    erb :index2
end
