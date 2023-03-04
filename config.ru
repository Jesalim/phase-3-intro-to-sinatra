require 'sinatra'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  
end

run App
require 'sinatra'

set :default_content_type, 'application/json'

class App < Sinatra::Base

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/bash' do
    '<h2>You Know How Sticky It Gets</h2>'
  end

  get '/dicegame' do
    dice_roll = rand(1..6)
    "<h2>You rolled a #{dice_roll}</h2>"
  end

  
  get '/dice' do
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  get '/add/1/2' do
    sum = 1 + 2
    { result: sum }.to_json
  end
  
end

run App