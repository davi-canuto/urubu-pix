require 'sinatra/contrib'
require 'sinatra'
require 'dotenv'
require 'byebug'
require 'sinatra/activerecord'
Dotenv.load

require './app/adapters/controllers/users_controller'
require './app/adapters/controllers/orders_controller'

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }

post '/users' do
  { result: UsersController.create(params) }.to_json
end

post '/orders' do
  { result: OrdersController.create(params) }.to_json
end