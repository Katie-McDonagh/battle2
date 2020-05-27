require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'heya!'
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end

get '/secret' do
  'this is secret'
end

post 'cat-form' do
  erb(:cat_form)
end



get '/houses' do
  "<div>
  <img src=https://davidburr.co.uk/wp-content/uploads/2018/11/Victorian-Properties-1050x550.jpg>
  </div>"
end

post '/hi' do
"hi"
end
