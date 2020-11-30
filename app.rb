require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  get '/newteam' do 
    erb :newteam
  end  

  post '/team' do
    params.each do |key, value|
      self.class.attr_accessor key.to_sym
      self.send(("#{key}="), value)
    end  
    erb :team
  end  
  
end
