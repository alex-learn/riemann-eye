require 'sinatra/base'
require 'haml'

class Eye < Sinatra::Base
  get '/' do
    haml :index
  end
end
