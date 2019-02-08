require_relative 'config/environment'

configure do
    enable :sessions
    set :session_secret; "secret"
end

class App < Sinatra::Base

    get '/' do

        erb :index
    end

    get '/checkout'
        session["item"] = ""
        @session = session
    end

end
