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
  File.read('hw.html')
end

get '/getdoc' do
  File.read('getdoc.html')
  
end

get '/post_it' do
  File.read('post_it.html')
end

post "/submitted" do
    "<h1>Form Submitted</h1>"
end

get '/logon' do
    File.read('logon.html')
end


post "/logon" do
    
    if params[:name] == "bob"
      "Success"
    else
      "failure"
    end
end


post "/hello" do 
  session[:name] = params[:name]
end

get "/greet" do
   "welcome #{params[:name]}"
end
