require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "datebase" => "./bbs.db"

)

get '/' do
    erb :index
end

