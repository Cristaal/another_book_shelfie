require "bundler/setup"
require "pry"
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
 erb :index
end

get '/add_info' do
 erb :add_info
end

post '/add_info' do
  author = params.fetch('author')
  title = params.fetch('title')
  genre = params.fetch('genre')
  @author = Author.create({:name => author})
  @title = Title.create({:title => title})
  @genre = Genre.create({:name => genre})
  @authors = Author.all()
  @titles = Title.all()
  @genres = Genre.all()
  erb :add_info
end
