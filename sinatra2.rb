require 'sqlite3'
require 'sinatra'
require 'sinatra/reloader'

if File.exists?("maindata.db")
    File.delete("maindata.db")
end

db = SQLite3::Database.new("maindata.db")

db.execute <<-SQL

    create table users(
    id integer primary key,
    email varchar,
    password varchar);
SQL

db.execute("INSERT INTO users(email,password) values(?,?)",["jon@gmail.com","pass123"])

db.execute("INSERT INTO users(email,password) values(?,?)",["javie@gmail.com","hello234"])

db.execute("INSERT INTO users(email,password) values(?,?)",["rose@gmail.com","pass223"])

get '/' do
   
    @result = db.execute("select * from users;")
   
    erb :results
end
