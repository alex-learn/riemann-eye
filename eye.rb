require 'sinatra/base'
require 'riemann/client'

class Eye < Sinatra::Base
  require_relative 'models/default'
  require_relative 'controllers/default'


  def self.client
    @@client ||= Riemann::Client.new(host: "localhost",
                                     port: 5555);
  end

  def query(*a)
    self.class.client.query(*a).events || []
  end

end
