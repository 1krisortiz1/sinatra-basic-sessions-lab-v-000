require_relative 'config/environment'

class App < Sinatra::Base

    configure do  #this block enables sessions and sets a sessions_secret
        enable :sessions
        set :sessions_secret, "secret"
    end

    get '/' do  #controller action that responds to GET '/'.  Renders to index.erb.
        erb :index
    end

    post '/checkout' do
        session["item"] = params[:item]
        @session = session
    end
end
