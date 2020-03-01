require 'sinatra'
require 'sinatra/reloader'


enable :sessions

get "/set" do
  session[:message] = params[:message]
  "session saved"
end 
get "/get" do
   session[:message]
end

get '/' do
  erb :howmany 
end

post '/candles' do
  @candles = params[:n_candles].to_i
  erb :candles 
  if @candles == nil || @candles == 0
    "enter the amount of candles you want to order!"
  elsif @candles == 1
    "thank you for ordering #{@candles} candle"
  else 
    "thank you for ordering #{@candles} candles."
      
  end
 
end

get '/hw' do
   'hw.html'
  
end

get '/getdoc' do
  '<!DOCTYPE html>
  <html>
  <head>
  <style>body {background-color:red;}</style>
  </head>
  <body></body>
  </html>'
end

get '/post_it' do
  'post_it.html'
end

post "/submitted" do
    "<h1>Form Submitted</h1>"
end

get '/logon' do
    'logon.html'
end


post "/logon" do
    
    if params[:username] == "bob" && params[:password] == "pass"
      "Success"
    else
      "failure"
    end
end


post "/hello" do 
  session[:name] = params[:name]
    "Saved the Name"
end

get "/greet" do
   "welcome #{session[:name]}"
end

