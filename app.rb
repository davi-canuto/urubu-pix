require 'sinatra/contrib'
require 'sinatra'
require 'dotenv'
require 'sinatra/activerecord'
Dotenv.load

require './app/adapters/controllers/users_controller'

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

post '/users' do
  { result: UsersController.create(params) }.to_json
end
