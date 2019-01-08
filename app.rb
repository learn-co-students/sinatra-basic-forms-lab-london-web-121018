require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        @puppies = Puppy.all
        erb :index
    end
    post '/' do
        
        erb :index
    end

    post '/puppy' do
        @puppy = Puppy.new(params)
        erb :display_puppy
    end

    get '/new' do

        erb :create_puppy
    end

end
