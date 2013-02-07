require 'sinatra/base'
require 'riemann/client'

class Eye < Sinatra::Base
  require_relative 'models/default'
  require_relative 'controllers/default'
end
