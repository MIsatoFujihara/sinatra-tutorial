require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
  "adapter" => "sqlite3",
  "database" => "./bbs.db"
)
# エスケープのための決まり文句らしい
helpers do
  include Rack::Utils
    alias_method :h, :escape_html
end

class Comment < ActiveRecord::Base
end
get '/' do
  @comments = Comment.order("id desc").all
  erb :index_bullet
end

post '/new' do
  Comment.create(:body => params[:body],:author => params[:author])
  #Comment.create({:author => params[:author]})
  redirect '/'
end

post '/delete' do
  Comment.find(params[:id]).destroy
 end
 