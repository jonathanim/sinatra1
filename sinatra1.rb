require 'sinatra'  

enable :sessions

get "/set" do
  session[:message] = params[:message]
  "session saved"
end 
get "/get" do
   session[:message]
end


get '/' do
  "Hello, World!"
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
