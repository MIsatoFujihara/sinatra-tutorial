require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "datebase" => "./bbs.db"

)

class Comment < ActiveRecord::Base
end

get '/' do
    @comments = Comment.order("id desc").all
    erb :index
end

