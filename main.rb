# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
# htmlファイルを呼び出す
get '/' do
    erb :index
end

get '/name/:name' do |n|
    @name=n
    # 遠隔的に操作
    @title="main_index"
    @content="main content"
    erb :index2
end

get '/about' do 
    # 遠隔的に操作
    @title="main_index"
    @content="this page is"
    @email = "fujiharaionn@gmail.com"
    erb :about
end