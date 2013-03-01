require 'sinatra/base'
require 'haml'
require 'sass'

class Eye < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/css' do
    sass :css
  end
  
  get '/grid/:query' do |qstr|
    haml :grid, :locals => { :qstr => qstr }, :layout => false
  end

  get '/querytrc/:query' do |qstr|
    haml "= query(qstr).inspect", :locals => { :qstr => qstr }, :layout => false
  end

  get '/problems' do
    haml :grid, :locals => { :qstr => '(state != "ok")' }
  end

  get '/host/:host' do |host|
    haml :grid, :locals => { :qstr => "(host = \"#{host}\")" } 
  end

  get '/service/:service' do |service|
    haml :grid, :locals => { :qstr => "(service = \"#{service}\")" }
  end

  get '/state/:state' do |state|
    haml :grid, :locals => { :qstr => "(state = \"#{state}\")" }
  end

  get '/notstate/:state' do |state|
    haml :grid, :locals => { :qstr => "(state != \"#{state}\")" }
  end

end
