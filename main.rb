# encoding: utf-8
require 'sinatra'
require 'sinatra/reloader'
# フィルタの使用
before do
    @author="fujihara"
end
after do
    # logに表示を加える
    logger.info"page diplayed sucessfully"
end

helpers do
    def strong(s)
        "<strong>#{s}</strong>"
    end
end

# htmlファイルを呼び出す
get '/' do
    erb :index
end

get '/name/:name' do |n|
    @name=n
    # 遠隔的に操作
    @title="main_index"
    @content="main content by"+strong(@author)
    erb :index2
end

get '/about' do 
    # 遠隔的に操作
    @title="main_index"
    @content="this page is...by"+@author
    @email = "fujiharaionn@gmail.com"
    erb :about
end